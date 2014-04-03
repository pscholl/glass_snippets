package com.x.google.masf.services.resume;

import com.x.google.masf.protocol.Response;
import java.io.DataInputStream;
import java.io.IOException;

public class ResumeServiceResponse
{
  private Exception exception;
  private Response response;
  private int responseHeaderCount;
  private String[] responseHeaderKeys;
  private String[] responseHeaderValues;
  private DataInputStream responseInputStream;
  private int responseMissingChunkCount;
  private int[] responseMissingChunkLengths;
  private int[] responseMissingChunkOffsets;
  private String responseServerTicket;
  private int responseStatusCode;
  private int responseStreamLength;

  public ResumeServiceResponse(Response paramResponse)
    throws IOException
  {
    this.response = paramResponse;
    this.responseStatusCode = paramResponse.getStatusCode();
    if (this.responseStatusCode == 200)
    {
      this.responseInputStream = new DataInputStream(paramResponse.getInputStream());
      this.responseServerTicket = this.responseInputStream.readUTF();
      this.responseStatusCode = this.responseInputStream.readByte();
      this.responseHeaderCount = this.responseInputStream.readByte();
      if (this.responseHeaderCount > 0)
      {
        this.responseHeaderKeys = new String[this.responseHeaderCount];
        this.responseHeaderValues = new String[this.responseHeaderCount];
        for (int m = 0; m < this.responseHeaderCount; m++)
        {
          this.responseHeaderKeys[m] = this.responseInputStream.readUTF();
          this.responseHeaderValues[m] = this.responseInputStream.readUTF();
        }
      }
      this.responseMissingChunkCount = this.responseInputStream.readByte();
      if (this.responseMissingChunkCount > 0)
      {
        this.responseMissingChunkOffsets = new int[this.responseMissingChunkCount];
        this.responseMissingChunkLengths = new int[this.responseMissingChunkCount];
        while (i < this.responseMissingChunkCount)
        {
          int j = this.responseInputStream.readInt();
          int k = this.responseInputStream.readInt();
          this.responseMissingChunkOffsets[i] = j;
          this.responseMissingChunkLengths[i] = (1 + (k - j));
          i++;
        }
      }
      this.responseStreamLength = this.responseInputStream.readInt();
    }
    paramResponse.dispose();
  }

  public ResumeServiceResponse(Exception paramException)
  {
    this.exception = paramException;
  }

  public void dispose()
  {
    if (this.response != null)
      this.response.dispose();
  }

  public DataInputStream getDataInputStream()
  {
    return this.responseInputStream;
  }

  public Exception getException()
  {
    return this.exception;
  }

  public int getHeaderCount()
  {
    return this.responseHeaderCount;
  }

  public String[] getHeaderKeys()
  {
    return this.responseHeaderKeys;
  }

  public String[] getHeaderValues()
  {
    return this.responseHeaderValues;
  }

  public int getMissingChunkCount()
  {
    return this.responseMissingChunkCount;
  }

  public int[] getMissingChunkLengths()
  {
    return this.responseMissingChunkLengths;
  }

  public int[] getMissingChunkOffsets()
  {
    return this.responseMissingChunkOffsets;
  }

  public String getServerTicket()
  {
    return this.responseServerTicket;
  }

  public int getStatusCode()
  {
    return this.responseStatusCode;
  }

  public int getStreamLength()
  {
    return this.responseStreamLength;
  }

  public boolean hasException()
  {
    return this.exception != null;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.ResumeServiceResponse
 * JD-Core Version:    0.6.2
 */