package com.x.google.common.io;

import java.io.IOException;
import java.io.InputStream;

public class Gunzipper
{
  private static final Gunzipper instance = new Gunzipper();
  private GunzipInterface implementation;

  public static InputStream gunzip(InputStream paramInputStream)
    throws IOException
  {
    return instance.implementation.gunzip(paramInputStream);
  }

  public static void setImplementation(GunzipInterface paramGunzipInterface)
  {
    instance.implementation = paramGunzipInterface;
  }

  public static abstract interface GunzipInterface
  {
    public abstract InputStream gunzip(InputStream paramInputStream)
      throws IOException;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.Gunzipper
 * JD-Core Version:    0.6.2
 */