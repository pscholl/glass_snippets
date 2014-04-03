package com.google.glass.bluetooth;

import android.bluetooth.BluetoothServerSocket;
import android.os.Handler;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Util;
import java.io.Closeable;
import java.io.IOException;

public class AsyncBluetoothServerSocket
  implements Closeable
{
  private static final String TAG = AsyncBluetoothServerSocket.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private Thread acceptThread;
  private final Handler handler = new Handler();
  private boolean isCleanShutdown;
  private final Listener listener;
  private final BluetoothServerSocket socket;

  public AsyncBluetoothServerSocket(BluetoothServerSocket paramBluetoothServerSocket, Listener paramListener)
  {
    this.socket = paramBluetoothServerSocket;
    this.listener = paramListener;
    this.acceptThread = new AcceptThread();
    this.acceptThread.start();
  }

  public void close()
  {
    if (this.acceptThread == null)
      return;
    this.isCleanShutdown = true;
    Util.close(this.socket, TAG, "socket");
    Util.join(this.acceptThread, TAG, "acceptThread");
    this.acceptThread = null;
  }

  private class AcceptThread extends Thread
  {
    public AcceptThread()
    {
      super();
    }

    public void run()
    {
      try
      {
        while (true)
        {
          final BluetoothSocket localBluetoothSocket = new BluetoothSocket(AsyncBluetoothServerSocket.this.socket.accept());
          AsyncBluetoothServerSocket.this.handler.post(new Runnable()
          {
            public void run()
            {
              AsyncBluetoothServerSocket.this.listener.onSocketAccepted(localBluetoothSocket);
            }
          });
        }
      }
      catch (IOException localIOException)
      {
        if (!AsyncBluetoothServerSocket.this.isCleanShutdown)
          AsyncBluetoothServerSocket.logger.d(localIOException, "Unexpected shutdown of async server socket", new Object[0]);
      }
    }
  }

  public static abstract interface Listener
  {
    public abstract void onSocketAccepted(BluetoothSocket paramBluetoothSocket);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.AsyncBluetoothServerSocket
 * JD-Core Version:    0.6.2
 */