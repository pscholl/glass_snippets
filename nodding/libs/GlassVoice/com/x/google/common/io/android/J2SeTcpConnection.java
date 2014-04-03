package com.x.google.common.io.android;

import com.x.google.common.io.GoogleTcpConnection;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.ByteChannel;
import java.nio.channels.Channels;
import java.nio.channels.SocketChannel;

class J2SeTcpConnection
  implements GoogleTcpConnection
{
  private final ByteChannel channel;
  private DataInputStream dis;
  private DataOutputStream dos;

  J2SeTcpConnection(J2SeTcpConnectionFactory paramJ2SeTcpConnectionFactory, String paramString, int paramInt)
    throws IOException
  {
    this.channel = new CountingByteChannel(SocketChannel.open(new InetSocketAddress(paramString, paramInt)), paramJ2SeTcpConnectionFactory);
  }

  public void close()
    throws IOException
  {
    this.channel.close();
  }

  public void notifyTimeout()
  {
  }

  public DataInputStream openDataInputStream()
    throws IOException
  {
    if (this.dis == null)
      this.dis = new DataInputStream(Channels.newInputStream(this.channel));
    return this.dis;
  }

  public DataOutputStream openDataOutputStream()
    throws IOException
  {
    if (this.dos == null)
      this.dos = new DataOutputStream(Channels.newOutputStream(this.channel));
    return this.dos;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.J2SeTcpConnection
 * JD-Core Version:    0.6.2
 */