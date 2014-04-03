package com.x.google.masf.protocol;

import com.x.google.common.io.IoUtil;
import com.x.google.common.io.SequenceInputStream;
import com.x.google.common.util.text.UriUtil;
import com.x.google.masf.ByteArrayInputStreamProvider;
import com.x.google.masf.InputStreamProvider;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import java.util.Vector;

public class HttpRequest extends SimpleRequest
{
  private byte[] bodyPartCount;
  private Vector bodyParts;
  private String contentType;
  private String method = "GET";
  private byte[] payloadHeader;
  private byte[] payloadMetaData;
  private InputStreamProvider payloadProvider;
  private Hashtable properties;

  public HttpRequest()
  {
    setBlockType(256);
  }

  public HttpRequest(String paramString)
  {
    super(paramString, 1);
    setBlockType(256);
  }

  public HttpRequest(String paramString, int paramInt)
  {
    super(paramString, paramInt);
    setBlockType(256);
  }

  public HttpRequest(String paramString, int paramInt, InputStreamProvider paramInputStreamProvider)
  {
    super(paramString, paramInt);
    setBlockType(256);
    setPayloadProvider(paramInputStreamProvider);
  }

  public HttpRequest(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    this(paramString, paramInt, new ByteArrayInputStreamProvider(paramArrayOfByte));
  }

  private void generateBlockData()
    throws IOException
  {
    if ((this.bodyParts != null) && (this.bodyPartCount == null))
      generateBodyPartCount();
    if (this.payloadMetaData == null)
      generatePayloadMetaData();
    if (this.payloadHeader == null)
      generatePayloadHeader();
  }

  private void setPayloadProvider(InputStreamProvider paramInputStreamProvider)
  {
    this.payloadProvider = paramInputStreamProvider;
  }

  public void addBodyPart(BodyPart paramBodyPart)
  {
    try
    {
      if (this.bodyParts == null)
      {
        setBlockType(257);
        this.bodyParts = new Vector();
      }
      if (!this.bodyParts.contains(paramBodyPart))
        this.bodyParts.addElement(paramBodyPart);
      return;
    }
    finally
    {
    }
  }

  public void dispose()
  {
    try
    {
      this.payloadHeader = null;
      this.payloadMetaData = null;
      this.bodyPartCount = null;
      if (this.bodyParts != null)
        for (int i = 0; i < this.bodyParts.size(); i++)
          ((BodyPart)this.bodyParts.elementAt(i)).dispose();
      return;
    }
    finally
    {
    }
  }

  public void flagSecure()
  {
    throw new RuntimeException("The secure flag is set  based on the service uri");
  }

  protected byte[] generateBodyPartCount()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(2);
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeShort(this.bodyParts.size());
    localDataOutputStream.close();
    localByteArrayOutputStream.close();
    this.bodyPartCount = localByteArrayOutputStream.toByteArray();
    return this.bodyPartCount;
  }

  protected byte[] generatePayloadHeader()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeShort(getId());
    localDataOutputStream.writeUTF(getServiceUri());
    localDataOutputStream.writeShort(getServiceVersion());
    if (this.bodyParts == null)
    {
      int i = this.payloadMetaData.length;
      if (this.payloadProvider != null)
        i += this.payloadProvider.getStreamLength();
      localDataOutputStream.writeInt(i);
    }
    localDataOutputStream.close();
    localByteArrayOutputStream.close();
    this.payloadHeader = localByteArrayOutputStream.toByteArray();
    return this.payloadHeader;
  }

  protected byte[] generatePayloadMetaData()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeUTF(this.method);
    String str2;
    String str1;
    if (this.bodyParts != null)
    {
      if (this.contentType != null)
      {
        str2 = this.contentType;
        HttpUtil.writeContentType(localDataOutputStream, str2);
        localDataOutputStream.writeUTF("");
      }
    }
    else
    {
      Hashtable localHashtable = this.properties;
      if (this.bodyParts != null)
        break label162;
      str1 = this.contentType;
      label75: HttpUtil.writeProperties(localDataOutputStream, localHashtable, str1);
      if (this.payloadProvider == null)
        break label168;
      localDataOutputStream.writeInt(this.payloadProvider.getStreamLength());
    }
    while (true)
    {
      if ((this.bodyParts != null) && (this.payloadProvider != null) && (this.payloadProvider.getStreamLength() > 0))
        localDataOutputStream.writeUTF("");
      localDataOutputStream.close();
      localByteArrayOutputStream.close();
      this.payloadMetaData = localByteArrayOutputStream.toByteArray();
      return this.payloadMetaData;
      str2 = "multipart/related";
      break;
      label162: str1 = null;
      break label75;
      label168: localDataOutputStream.writeInt(0);
    }
  }

  public InputStream getBodyInputStream()
    throws IOException
  {
    try
    {
      generateBlockData();
      Vector localVector = new Vector();
      localVector.addElement(new ByteArrayInputStream(this.payloadHeader));
      localVector.addElement(new ByteArrayInputStream(this.payloadMetaData));
      if (this.payloadProvider != null)
        localVector.addElement(this.payloadProvider.getInputStream());
      if (this.bodyParts != null)
      {
        localVector.addElement(new ByteArrayInputStream(this.bodyPartCount));
        for (int i = 0; i < this.bodyParts.size(); i++)
          localVector.addElement(((BodyPart)this.bodyParts.elementAt(i)).getInputStream());
      }
      InputStream[] arrayOfInputStream = new InputStream[localVector.size()];
      localVector.copyInto(arrayOfInputStream);
      SequenceInputStream localSequenceInputStream = new SequenceInputStream(arrayOfInputStream);
      return localSequenceInputStream;
    }
    finally
    {
    }
  }

  protected Vector getBodyParts()
  {
    return this.bodyParts;
  }

  public int getBodyStreamLength()
    throws IOException
  {
    try
    {
      generateBlockData();
      int i = 0 + this.payloadHeader.length + this.payloadMetaData.length;
      if (this.payloadProvider != null)
        i += this.payloadProvider.getStreamLength();
      if (this.bodyParts != null)
      {
        int j = i + this.bodyPartCount.length;
        int k = 0;
        int m = j;
        while (k < this.bodyParts.size())
        {
          int n = ((BodyPart)this.bodyParts.elementAt(k)).getStreamLength();
          m += n;
          k++;
        }
        i = m;
      }
      return i;
    }
    finally
    {
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

  public Hashtable getProperties()
  {
    try
    {
      if (this.properties == null)
        this.properties = new Hashtable();
      Hashtable localHashtable = this.properties;
      return localHashtable;
    }
    finally
    {
    }
  }

  protected void setBodyParts(Vector paramVector)
  {
    this.bodyParts = paramVector;
  }

  public void setConnectionProperty(String paramString1, String paramString2)
  {
    try
    {
      if ("Content-Type".toLowerCase().equals(paramString1.toLowerCase()))
        this.contentType = paramString2;
      while (true)
      {
        return;
        if (this.properties == null)
          this.properties = new Hashtable();
        this.properties.put(paramString1, paramString2);
      }
    }
    finally
    {
    }
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

  public void setMethod(String paramString)
  {
    try
    {
      this.method = paramString;
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

  protected void setServiceUri(String paramString)
  {
    try
    {
      if (UriUtil.isHttps(paramString))
        super.flagSecure();
      super.setServiceUri(paramString);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.HttpRequest
 * JD-Core Version:    0.6.2
 */