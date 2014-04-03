package com.google.glass.voice.network;

import com.google.glass.voice.ResampleInputStream.ResampleInputStreamListener;
import java.io.IOException;
import java.io.InputStream;

public final class ListenerStreamWrapper extends InputStream
{
  private final InputStream delegate;
  private final ResampleInputStream.ResampleInputStreamListener listener;

  ListenerStreamWrapper(InputStream paramInputStream, ResampleInputStream.ResampleInputStreamListener paramResampleInputStreamListener)
  {
    this.delegate = paramInputStream;
    this.listener = paramResampleInputStreamListener;
  }

  private int dispatchingRead(ResampleInputStream.ResampleInputStreamListener paramResampleInputStreamListener, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.delegate == null)
      throw new IllegalStateException("not open");
    int i = this.delegate.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramResampleInputStreamListener != null)
      paramResampleInputStreamListener.onResampledAudioData(paramArrayOfByte, paramInt1, i);
    return i;
  }

  public int read()
    throws IOException
  {
    throw new UnsupportedOperationException("Single-byte read not supported");
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    return dispatchingRead(this.listener, paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.ListenerStreamWrapper
 * JD-Core Version:    0.6.2
 */