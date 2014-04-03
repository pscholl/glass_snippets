package com.x.google.masf.protocol;

import com.x.google.common.io.SequenceInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class SimpleRequest extends Request
{
  private byte[] blockHeader;
  private int blockType;
  private String serviceUri;
  private int serviceVersion;

  protected SimpleRequest()
  {
  }

  protected SimpleRequest(String paramString, int paramInt)
  {
    setServiceUri(paramString);
    setServiceVersion(paramInt);
  }

  public void dispose()
  {
    try
    {
      this.blockHeader = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected byte[] generateBlockHeader()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(7);
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeInt(getBodyStreamLength());
    localDataOutputStream.writeByte(0);
    localDataOutputStream.writeShort(this.blockType);
    localDataOutputStream.close();
    localByteArrayOutputStream.close();
    this.blockHeader = localByteArrayOutputStream.toByteArray();
    return this.blockHeader;
  }

  protected abstract InputStream getBodyInputStream()
    throws IOException;

  protected abstract int getBodyStreamLength()
    throws IOException;

  public InputStream getInputStream()
    throws IOException
  {
    try
    {
      generateBlockHeader();
      SequenceInputStream localSequenceInputStream = new SequenceInputStream(new ByteArrayInputStream(this.blockHeader), getBodyInputStream());
      return localSequenceInputStream;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String getServiceUri()
  {
    try
    {
      String str = this.serviceUri;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getServiceVersion()
  {
    try
    {
      int i = this.serviceVersion;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getStreamLength()
    throws IOException
  {
    try
    {
      generateBlockHeader();
      int i = this.blockHeader.length;
      int j = getBodyStreamLength();
      int k = i + j;
      return k;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void setBlockType(int paramInt)
  {
    try
    {
      this.blockType = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void setServiceUri(String paramString)
  {
    try
    {
      this.serviceUri = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void setServiceVersion(int paramInt)
  {
    try
    {
      this.serviceVersion = paramInt;
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
 * Qualified Name:     com.x.google.masf.protocol.SimpleRequest
 * JD-Core Version:    0.6.2
 */