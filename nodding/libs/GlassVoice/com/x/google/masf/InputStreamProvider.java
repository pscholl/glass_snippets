package com.x.google.masf;

import java.io.IOException;
import java.io.InputStream;

public abstract interface InputStreamProvider
{
  public abstract void dispose();

  public abstract InputStream getInputStream()
    throws IOException;

  public abstract int getStreamLength()
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.InputStreamProvider
 * JD-Core Version:    0.6.2
 */