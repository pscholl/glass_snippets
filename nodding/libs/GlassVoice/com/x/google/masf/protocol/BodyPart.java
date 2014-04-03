package com.x.google.masf.protocol;

import com.x.google.common.io.SequenceInputStream;
import com.x.google.masf.ByteArrayInputStreamProvider;
import com.x.google.masf.DelimitedInputStream;
import com.x.google.masf.InputStreamProvider;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Hashtable;

public class BodyPart
  implements InputStreamProvider
{
  private String contentId;
  private byte[] header;
  private String mimeType;
  private final InputStreamProvider payloadStreamProvider;
  private Hashtable properties;

  public BodyPart(String paramString, InputStreamProvider paramInputStreamProvider)
  {
    this.mimeType = paramString;
    this.payloadStreamProvider = paramInputStreamProvider;
  }

  public BodyPart(String paramString1, String paramString2)
  {
    try
    {
      this.mimeType = paramString1;
      localByteArrayInputStreamProvider = new ByteArrayInputStreamProvider(paramString2.getBytes("UTF-8"));
      this.payloadStreamProvider = localByteArrayInputStreamProvider;
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        ByteArrayInputStreamProvider localByteArrayInputStreamProvider = null;
    }
  }

  public BodyPart(String paramString, byte[] paramArrayOfByte)
  {
    this.mimeType = paramString;
    this.payloadStreamProvider = new ByteArrayInputStreamProvider(paramArrayOfByte);
  }

  public static BodyPart fromInputStream(InputStream paramInputStream)
    throws IOException
  {
    DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
    int i = localDataInputStream.readShort();
    String str1 = localDataInputStream.readUTF();
    if (str1.length() == 0);
    for (String str2 = HttpUtil.getLongMimeType(i); ; str2 = str1)
    {
      String str3 = localDataInputStream.readUTF();
      Hashtable localHashtable = HttpUtil.readProperties(localDataInputStream);
      Enumeration localEnumeration = localHashtable.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str5 = (String)localEnumeration.nextElement();
        String str6 = (String)localHashtable.get(str5);
        System.out.println(str5 + " => " + str6);
      }
      int j = localDataInputStream.readInt();
      String str4 = localDataInputStream.readUTF();
      DelimitedInputStream localDelimitedInputStream = new DelimitedInputStream(localDataInputStream, j);
      EncodedPayload localEncodedPayload = new EncodedPayload(str4, -1, localDelimitedInputStream);
      localDelimitedInputStream.bufferAndDetach();
      BodyPart localBodyPart = new BodyPart(str2, localEncodedPayload);
      localBodyPart.properties = localHashtable;
      localBodyPart.contentId = str3;
      return localBodyPart;
    }
  }

  private void generateHeader()
    throws IOException
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      HttpUtil.writeContentType(localDataOutputStream, getMimeType());
      localDataOutputStream.writeUTF(getContentId());
      HttpUtil.writeProperties(localDataOutputStream, getProperties(), null);
      localDataOutputStream.writeInt(this.payloadStreamProvider.getStreamLength());
      if (this.payloadStreamProvider.getStreamLength() > 0)
        localDataOutputStream.writeUTF("");
      localDataOutputStream.close();
      localByteArrayOutputStream.close();
      this.header = localByteArrayOutputStream.toByteArray();
      return;
    }
    finally
    {
    }
  }

  public void dispose()
  {
    this.payloadStreamProvider.dispose();
  }

  public String getContentId()
  {
    try
    {
      if (this.contentId != null)
      {
        str = this.contentId;
        return str;
      }
      String str = "";
    }
    finally
    {
    }
  }

  public InputStream getInputStream()
    throws IOException
  {
    generateHeader();
    return new SequenceInputStream(new ByteArrayInputStream(this.header), this.payloadStreamProvider.getInputStream());
  }

  public String getMimeType()
  {
    return this.mimeType;
  }

  public InputStreamProvider getPayloadProvider()
  {
    return this.payloadStreamProvider;
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

  public int getStreamLength()
    throws IOException
  {
    generateHeader();
    return this.header.length + this.payloadStreamProvider.getStreamLength();
  }

  public void setConnectionProperty(String paramString1, String paramString2)
  {
    try
    {
      if (this.properties == null)
        this.properties = new Hashtable();
      this.properties.put(paramString1, paramString2);
      return;
    }
    finally
    {
    }
  }

  public void setContentId(String paramString)
  {
    try
    {
      this.contentId = paramString;
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
 * Qualified Name:     com.x.google.masf.protocol.BodyPart
 * JD-Core Version:    0.6.2
 */