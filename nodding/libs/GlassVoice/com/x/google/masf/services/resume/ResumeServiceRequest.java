package com.x.google.masf.services.resume;

import com.x.google.common.io.SequenceInputStream;
import com.x.google.masf.protocol.SimpleRequest;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Hashtable;

public class ResumeServiceRequest extends SimpleRequest
{
  private static final String RESUME_SERVICE_URI = "g:rsm";
  private byte[] payload;
  private byte[] payloadHeader;
  private byte[] payloadMetaData;
  private int payloadOffset;
  private Hashtable properties;
  private int requestType = 0;
  private ResumeServiceResponse response;
  private String serverTicket;
  private short version = 0;

  public ResumeServiceRequest()
  {
    setBlockType(256);
    debug("ResumeServiceRequest()");
  }

  private static void debug(String paramString)
  {
  }

  private void generatePayloadHeader()
    throws IOException
  {
    debug("ResumeServiceRequest.generatePayloadHeader()");
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeShort(getId());
    localDataOutputStream.writeUTF("g:rsm");
    localDataOutputStream.writeShort(this.version);
    if (this.payload == null)
      localDataOutputStream.writeInt(this.payloadMetaData.length);
    while (true)
    {
      localDataOutputStream.close();
      localByteArrayOutputStream.close();
      this.payloadHeader = localByteArrayOutputStream.toByteArray();
      return;
      localDataOutputStream.writeInt(this.payloadMetaData.length + this.payload.length);
    }
  }

  private void generatePayloadMetaData()
    throws IOException
  {
    debug("ResumeServiceRequest.generatePayloadMetaData()");
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    if (this.serverTicket != null)
    {
      localDataOutputStream.writeUTF(this.serverTicket);
      if (this.properties != null)
        break label110;
      localDataOutputStream.writeByte(0);
      label49: localDataOutputStream.writeInt(this.payloadOffset);
      if (this.version > 0)
        localDataOutputStream.writeByte(this.requestType);
      if (this.payload != null)
        break label178;
      localDataOutputStream.writeInt(0);
    }
    while (true)
    {
      localDataOutputStream.close();
      localByteArrayOutputStream.close();
      this.payloadMetaData = localByteArrayOutputStream.toByteArray();
      return;
      localDataOutputStream.writeUTF("");
      break;
      label110: localDataOutputStream.writeByte(this.properties.size());
      Enumeration localEnumeration = this.properties.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str1 = (String)localEnumeration.nextElement();
        String str2 = (String)this.properties.get(str1);
        localDataOutputStream.writeUTF(str1);
        localDataOutputStream.writeUTF(str2);
      }
      break label49;
      label178: localDataOutputStream.writeInt(this.payload.length);
    }
  }

  public void dispose()
  {
    try
    {
      debug("ResumeServiceRequest.dispose()");
      super.dispose();
      this.payloadHeader = null;
      this.payloadMetaData = null;
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
      debug("ResumeServiceRequest.getBodyInputStream()");
      if (this.payloadMetaData == null)
        generatePayloadMetaData();
      if (this.payloadHeader == null)
        generatePayloadHeader();
      if (this.payload == null);
      for (SequenceInputStream localSequenceInputStream = new SequenceInputStream(new ByteArrayInputStream(this.payloadHeader), new ByteArrayInputStream(this.payloadMetaData)); ; localSequenceInputStream = new SequenceInputStream(new ByteArrayInputStream(this.payloadHeader), new ByteArrayInputStream(this.payloadMetaData), new ByteArrayInputStream(this.payload)))
        return localSequenceInputStream;
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
      debug("ResumeServiceRequest.getBodyStreamLength()");
      if (this.payloadMetaData == null)
        generatePayloadMetaData();
      if (this.payloadHeader == null)
        generatePayloadHeader();
      int i = 0 + this.payloadHeader.length + this.payloadMetaData.length;
      if (this.payload != null)
      {
        int j = this.payload.length;
        i += j;
      }
      return i;
    }
    finally
    {
    }
  }

  public ResumeServiceResponse getResponse()
  {
    try
    {
      ResumeServiceResponse localResumeServiceResponse = this.response;
      return localResumeServiceResponse;
    }
    finally
    {
      localObject = finally;
      throw localObject;
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

  public void setPayload(int paramInt, byte[] paramArrayOfByte)
  {
    try
    {
      debug("ResumeServiceRequest.setPayload(" + paramInt + ", " + paramArrayOfByte + ")");
      this.payloadOffset = paramInt;
      this.payload = paramArrayOfByte;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setProperty(String paramString1, String paramString2)
  {
    try
    {
      debug("ResumeServiceRequest.setProperty(\"" + paramString1 + "\", " + paramString2 + ")");
      if (this.properties == null)
        this.properties = new Hashtable();
      this.properties.put(paramString1, paramString2);
      return;
    }
    finally
    {
    }
  }

  public void setRequestType(int paramInt)
  {
    try
    {
      debug("ResumeServiceRequest.setRequestType(" + paramInt + ")");
      if (paramInt == 0);
      for (this.version = 0; ; this.version = 1)
      {
        this.requestType = paramInt;
        return;
      }
    }
    finally
    {
    }
  }

  public void setResponse(ResumeServiceResponse paramResumeServiceResponse)
  {
    try
    {
      debug("ResumeServiceRequest.setResponse(" + paramResumeServiceResponse + ")");
      this.response = paramResumeServiceResponse;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setServerTicket(String paramString)
  {
    try
    {
      debug("ResumeServiceRequest.setServerTicket(" + paramString + ")");
      this.serverTicket = paramString;
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
 * Qualified Name:     com.x.google.masf.services.resume.ResumeServiceRequest
 * JD-Core Version:    0.6.2
 */