package com.google.glass.bluetooth;

import android.bluetooth.BluetoothSocket;
import android.os.Handler;
import android.os.Looper;
import com.google.glass.util.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class AsyncBluetoothSocket
  implements Closeable
{
  private static final int BUFFER_SIZE = 4096;
  private static final String TAG;
  private final Handler handler = new Handler();
  private boolean isClosed;
  private final Set<Listener> listeners = new HashSet();
  private final Thread readerThread = new ReaderThread();
  private BluetoothSocket socket;
  private final BlockingQueue<byte[]> writeQueue = new LinkedBlockingQueue();
  private final Thread writerThread = new WriterThread();

  static
  {
    if (!AsyncBluetoothSocket.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      TAG = AsyncBluetoothSocket.class.getSimpleName();
      return;
    }
  }

  public AsyncBluetoothSocket(BluetoothSocket paramBluetoothSocket)
  {
    this.socket = paramBluetoothSocket;
    this.readerThread.start();
    this.writerThread.start();
  }

  public void addListener(Listener paramListener)
  {
    assert (!this.isClosed);
    assert (Thread.currentThread() == this.handler.getLooper().getThread());
    this.listeners.add(paramListener);
  }

  public void close()
  {
    if (this.isClosed)
      return;
    this.isClosed = true;
    this.writerThread.interrupt();
    Util.close(this.socket, TAG, "socket");
    Util.join(this.readerThread, TAG, "readerThread");
    Util.join(this.writerThread, TAG, "writerThread");
  }

  public void removeListener(Listener paramListener)
  {
    assert (!this.isClosed);
    assert (Thread.currentThread() == this.handler.getLooper().getThread());
    this.listeners.remove(paramListener);
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    assert (!this.isClosed);
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    this.writeQueue.add(arrayOfByte);
  }

  public static abstract interface Listener
  {
    public abstract void onData(AsyncBluetoothSocket paramAsyncBluetoothSocket, byte[] paramArrayOfByte, int paramInt);

    public abstract void onDisconnect(AsyncBluetoothSocket paramAsyncBluetoothSocket);
  }

  private class ReaderThread extends Thread
  {
    public ReaderThread()
    {
      super();
    }

    public void run()
    {
      byte[] arrayOfByte1 = new byte[4096];
      InputStream localInputStream = null;
      try
      {
        localInputStream = AsyncBluetoothSocket.this.socket.getInputStream();
        while (true)
        {
          final int i = localInputStream.read(arrayOfByte1);
          final byte[] arrayOfByte2 = new byte[i];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
          AsyncBluetoothSocket.this.handler.post(new Runnable()
          {
            public void run()
            {
              Iterator localIterator = AsyncBluetoothSocket.this.listeners.iterator();
              while (localIterator.hasNext())
                ((AsyncBluetoothSocket.Listener)localIterator.next()).onData(AsyncBluetoothSocket.this, arrayOfByte2, i);
            }
          });
        }
      }
      catch (IOException localIOException)
      {
        if (!AsyncBluetoothSocket.this.isClosed)
          AsyncBluetoothSocket.this.handler.post(new Runnable()
          {
            public void run()
            {
              Iterator localIterator = AsyncBluetoothSocket.this.listeners.iterator();
              while (localIterator.hasNext())
                ((AsyncBluetoothSocket.Listener)localIterator.next()).onDisconnect(AsyncBluetoothSocket.this);
            }
          });
        return;
      }
      finally
      {
        Util.close(localInputStream, AsyncBluetoothSocket.TAG, "stream");
      }
    }
  }

  private class WriterThread extends Thread
  {
    public WriterThread()
    {
      super();
    }

    public void run()
    {
      OutputStream localOutputStream = null;
      try
      {
        localOutputStream = AsyncBluetoothSocket.this.socket.getOutputStream();
        while (true)
        {
          byte[] arrayOfByte = (byte[])AsyncBluetoothSocket.this.writeQueue.take();
          localOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
      }
      catch (IOException localIOException)
      {
      }
      finally
      {
        Util.close(localOutputStream, AsyncBluetoothSocket.TAG, "stream");
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.AsyncBluetoothSocket
 * JD-Core Version:    0.6.2
 */