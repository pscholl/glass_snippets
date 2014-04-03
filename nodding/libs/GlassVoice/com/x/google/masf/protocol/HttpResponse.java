package com.x.google.masf.protocol;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

public class HttpResponse
{
  private Response response;
  private int responseCode;
  private int responseHeaderCount;
  private String[] responseHeaderKeys;
  private String[] responseHeaderValues;
  private DataInputStream responseInputStream;
  private int responseLength;

  public HttpResponse(Response paramResponse)
    throws IOException
  {
    this.response = paramResponse;
    this.responseCode = paramResponse.getStatusCode();
    this.responseLength = paramResponse.getStreamLength();
    this.responseInputStream = new DataInputStream(paramResponse.getInputStream());
    if ((paramResponse instanceof MultipartResponse))
    {
      Hashtable localHashtable = ((MultipartResponse)paramResponse).getRoot().getProperties();
      this.responseHeaderCount = localHashtable.size();
      this.responseHeaderKeys = new String[this.responseHeaderCount];
      this.responseHeaderValues = new String[this.responseHeaderCount];
      Enumeration localEnumeration = localHashtable.keys();
      for (int j = 0; localEnumeration.hasMoreElements(); j++)
      {
        String str3 = (String)localEnumeration.nextElement();
        this.responseHeaderKeys[j] = str3;
        this.responseHeaderValues[j] = ((String)localHashtable.get(str3));
      }
    }
    if (this.responseLength > 0)
    {
      this.responseHeaderCount = (0xFF & this.responseInputStream.readByte());
      this.responseLength = (-1 + this.responseLength);
      if (this.responseHeaderCount > 0)
      {
        this.responseHeaderKeys = new String[this.responseHeaderCount];
        this.responseHeaderValues = new String[this.responseHeaderCount];
        while (i < this.responseHeaderCount)
        {
          String str1 = this.responseInputStream.readUTF();
          this.responseHeaderKeys[i] = str1;
          this.responseLength -= 2 + str1.length();
          String str2 = this.responseInputStream.readUTF();
          this.responseHeaderValues[i] = str2;
          this.responseLength -= 2 + str2.length();
          i++;
        }
      }
    }
  }

  public void dispose()
  {
    this.response.dispose();
  }

  public DataInputStream getDataInputStream()
  {
    return this.responseInputStream;
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

  public int getResponseCode()
  {
    return this.responseCode;
  }

  public int getStreamLength()
  {
    return this.responseLength;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.HttpResponse
 * JD-Core Version:    0.6.2
 */