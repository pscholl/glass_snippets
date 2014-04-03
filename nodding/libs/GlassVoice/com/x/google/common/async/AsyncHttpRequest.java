package com.x.google.common.async;

import com.x.google.masf.InputStreamProvider;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract interface AsyncHttpRequest extends AsyncRequest
{
  public abstract void close();

  public abstract String getHttpHeaderField(String paramString)
    throws IOException;

  public abstract String getHttpHeaderKey(int paramInt)
    throws IOException;

  public abstract String getHttpHeaderValue(int paramInt)
    throws IOException;

  public abstract long getLastProgressTimestamp();

  public abstract int getResponseCode();

  public abstract long getResponseLength();

  public abstract DataInputStream getResponseStream();

  public abstract String getResponseType();

  public abstract long getWatchdogDelay();

  public abstract void setContentType(String paramString);

  public abstract void setHttpHeader(String paramString1, String paramString2);

  public abstract void setMethod(String paramString);

  public abstract void setPayload(InputStreamProvider paramInputStreamProvider);

  public abstract void setPayload(InputStream paramInputStream);

  public abstract void setPayload(byte[] paramArrayOfByte);

  public abstract void setWatchdogDelay(long paramLong);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.async.AsyncHttpRequest
 * JD-Core Version:    0.6.2
 */