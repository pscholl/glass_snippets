package com.google.glass.bluetooth;

import java.io.Closeable;
import java.io.IOException;

public class BluetoothServerSocket
  implements Closeable
{
  private final android.bluetooth.BluetoothServerSocket serverSocket;

  public BluetoothServerSocket(android.bluetooth.BluetoothServerSocket paramBluetoothServerSocket)
  {
    this.serverSocket = paramBluetoothServerSocket;
  }

  public android.bluetooth.BluetoothSocket accept(int paramInt)
    throws IOException
  {
    return this.serverSocket.accept(paramInt);
  }

  public BluetoothSocket accept()
    throws IOException
  {
    return new BluetoothSocket(this.serverSocket.accept());
  }

  public void close()
    throws IOException
  {
    this.serverSocket.close();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothServerSocket
 * JD-Core Version:    0.6.2
 */