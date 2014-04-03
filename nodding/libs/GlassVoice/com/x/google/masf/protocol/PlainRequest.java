package com.x.google.masf.protocol;

import com.x.google.common.io.IoUtil;
import com.x.google.common.io.SequenceInputStream;
import com.x.google.masf.ByteArrayInputStreamProvider;
import com.x.google.masf.InputStreamProvider;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class PlainRequest extends SimpleRequest
{
  byte[] payloadHeader;
  InputStreamProvider payloadProvider;

  public PlainRequest(String paramString)
  {
    super(paramString, 1);
    setBlockType(256);
  }

  public PlainRequest(String paramString, int paramInt)
  {
    super(paramString, paramInt);
    setBlockType(256);
  }

  public PlainRequest(String paramString, int paramInt, InputStreamProvider paramInputStreamProvider)
  {
    super(paramString, paramInt);
    setBlockType(256);
    setPayloadProvider(paramInputStreamProvider);
  }

  public PlainRequest(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    this(paramString, paramInt, new ByteArrayInputStreamProvider(paramArrayOfByte));
  }

  private void generateBlockData()
    throws IOException
  {
    if (this.payloadHeader == null)
      generatePayloadHeader();
  }

  private void generatePayloadHeader()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeShort(getId());
    localDataOutputStream.writeUTF(getServiceUri());
    localDataOutputStream.writeShort(getServiceVersion());
    if (this.payloadProvider != null)
      localDataOutputStream.writeInt(this.payloadProvider.getStreamLength());
    while (true)
    {
      localDataOutputStream.close();
      localByteArrayOutputStream.close();
      this.payloadHeader = localByteArrayOutputStream.toByteArray();
      return;
      localDataOutputStream.writeInt(0);
    }
  }

  private void setPayloadProvider(InputStreamProvider paramInputStreamProvider)
  {
    this.payloadProvider = paramInputStreamProvider;
  }

  public void dispose()
  {
    try
    {
      super.dispose();
      this.payloadHeader = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected InputStream getBodyInputStream()
    throws IOException
  {
    try
    {
      generateBlockData();
      if (this.payloadProvider == null);
      for (Object localObject2 = new ByteArrayInputStream(this.payloadHeader); ; localObject2 = new SequenceInputStream(new ByteArrayInputStream(this.payloadHeader), this.payloadProvider.getInputStream()))
        return localObject2;
    }
    finally
    {
    }
  }

  protected int getBodyStreamLength()
    throws IOException
  {
    try
    {
      generateBlockData();
      int i = this.payloadHeader.length;
      if (this.payloadProvider != null)
      {
        int j = this.payloadProvider.getStreamLength();
        i += j;
      }
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public byte[] getPayload()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = IoUtil.readAllBytes(this.payloadProvider.getInputStream(), this.payloadProvider.getStreamLength());
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getSendCount()
  {
    return this.sentCount;
  }

  public void setId(int paramInt)
  {
    try
    {
      super.setId(paramInt);
      this.payloadHeader = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setPayload(InputStreamProvider paramInputStreamProvider)
  {
    try
    {
      this.payloadProvider = paramInputStreamProvider;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setPayload(byte[] paramArrayOfByte)
  {
    try
    {
      this.payloadProvider = new ByteArrayInputStreamProvider(paramArrayOfByte);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.PlainRequest
 * JD-Core Version:    0.6.2
 */