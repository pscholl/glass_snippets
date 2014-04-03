package com.google.glass.net;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public final class SimplifiedHttpResponse
{
  private static final int HTTP_RESPONSE_READ_CHUNK_SIZE_BYTES = 1024;
  public final byte[] body;
  public final ImmutableMap<String, String> headers;
  public final int statusCode;

  public SimplifiedHttpResponse()
  {
    this.headers = ImmutableMap.of();
    this.statusCode = 0;
    this.body = null;
  }

  public SimplifiedHttpResponse(int paramInt, Map<String, String> paramMap, byte[] paramArrayOfByte)
  {
    if (paramMap == null);
    for (this.headers = ImmutableMap.of(); ; this.headers = ImmutableMap.copyOf(paramMap))
    {
      this.statusCode = paramInt;
      this.body = paramArrayOfByte;
      return;
    }
  }

  public SimplifiedHttpResponse(HttpResponse paramHttpResponse)
    throws IOException
  {
    if (paramHttpResponse == null)
    {
      this.headers = ImmutableMap.of();
      this.statusCode = 0;
      this.body = null;
      return;
    }
    this.statusCode = paramHttpResponse.getStatusLine().getStatusCode();
    ByteArrayOutputStream localByteArrayOutputStream;
    if (paramHttpResponse.getEntity() != null)
    {
      InputStream localInputStream = getResponseInputStream(paramHttpResponse);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int k = localInputStream.read(arrayOfByte);
        if (k < 0)
          break;
        localByteArrayOutputStream.write(arrayOfByte, 0, k);
      }
    }
    ImmutableMap.Builder localBuilder;
    for (this.body = localByteArrayOutputStream.toByteArray(); ; this.body = null)
    {
      localBuilder = ImmutableMap.builder();
      for (Header localHeader : paramHttpResponse.getAllHeaders())
        localBuilder.put(localHeader.getName(), localHeader.getValue());
    }
    this.headers = localBuilder.build();
  }

  private static InputStream getResponseInputStream(HttpResponse paramHttpResponse)
    throws IOException
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if (localHttpEntity != null)
    {
      Object localObject = localHttpEntity.getContent();
      Header localHeader = localHttpEntity.getContentEncoding();
      if ((localHeader != null) && ("gzip".equals(localHeader.getValue())))
        localObject = new GZIPInputStream((InputStream)localObject);
      return localObject;
    }
    return null;
  }

  public static Builder newBuilder()
  {
    return new Builder(null);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Status: " + String.valueOf(this.statusCode) + "\n");
    localStringBuilder.append("Headers:\n");
    Iterator localIterator = this.headers.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localStringBuilder.append("\t" + str + ": " + (String)this.headers.get(str) + "\n");
    }
    localStringBuilder.append("Body: " + String.valueOf(this.body));
    return localStringBuilder.toString();
  }

  public static class Builder
  {
    private byte[] body = null;
    private Map<String, String> headers = Maps.newHashMap();
    private int statusCode = 0;

    public SimplifiedHttpResponse build()
    {
      return new SimplifiedHttpResponse(this.statusCode, this.headers, this.body);
    }

    public Builder setBody(byte[] paramArrayOfByte)
    {
      this.body = paramArrayOfByte;
      return this;
    }

    public Builder setHeader(String paramString1, String paramString2)
    {
      this.headers.put(paramString1, paramString2);
      return this;
    }

    public Builder setHeaders(Map<String, String> paramMap)
    {
      this.headers.putAll(paramMap);
      return this;
    }

    public Builder setStatusCode(int paramInt)
    {
      this.statusCode = paramInt;
      return this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.SimplifiedHttpResponse
 * JD-Core Version:    0.6.2
 */