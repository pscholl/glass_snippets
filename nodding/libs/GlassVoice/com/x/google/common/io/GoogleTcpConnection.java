package com.x.google.common.io;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public abstract interface GoogleTcpConnection
{
  public abstract void close()
    throws IOException;

  public abstract void notifyTimeout();

  public abstract DataInputStream openDataInputStream()
    throws IOException;

  public abstract DataOutputStream openDataOutputStream()
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.GoogleTcpConnection
 * JD-Core Version:    0.6.2
 */