package com.google.glass.bluetooth;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class BluetoothSocket
  implements Closeable
{
  public static final long DEFAULT_TIMEOUT_MS = 20000L;
  private final android.bluetooth.BluetoothSocket socket;

  public BluetoothSocket(android.bluetooth.BluetoothSocket paramBluetoothSocket)
  {
    this.socket = paramBluetoothSocket;
  }

  public void close()
    throws IOException
  {
    this.socket.close();
  }

  public void connect()
    throws IOException
  {
    this.socket.connect();
  }

  public void connect(long paramLong)
    throws IOException
  {
    AsyncConnectingThread localAsyncConnectingThread = new AsyncConnectingThread(null);
    localAsyncConnectingThread.start();
    try
    {
      if (!localAsyncConnectingThread.countDownLatch.await(paramLong, TimeUnit.MILLISECONDS))
      {
        localAsyncConnectingThread.interrupt();
        throw new IOException("BluetoothSocket.connect timeout in " + paramLong + "ms.");
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new IOException("Failed in BluetoothSocket.connect", localInterruptedException);
    }
    if (localAsyncConnectingThread.ioException != null)
      throw localAsyncConnectingThread.ioException;
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.socket.getInputStream();
  }

  public OutputStream getOutputStream()
    throws IOException
  {
    return this.socket.getOutputStream();
  }

  public BluetoothDeviceWrapper getRemoteDevice()
  {
    return new BluetoothDeviceWrapper(this.socket.getRemoteDevice());
  }

  private class AsyncConnectingThread extends Thread
  {
    private CountDownLatch countDownLatch = new CountDownLatch(1);
    private IOException ioException;

    private AsyncConnectingThread()
    {
    }

    public void run()
    {
      try
      {
        BluetoothSocket.this.socket.connect();
        this.countDownLatch.countDown();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          this.ioException = localIOException;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothSocket
 * JD-Core Version:    0.6.2
 */