package com.x.google.masf.protocol;

import com.x.google.masf.DelimitedInputStream;
import com.x.google.masf.InputStreamProvider;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class MultipartResponse extends Response
{
  private final BodyPart[] bodyParts;
  private final int numBodyParts;
  private final BodyPart root;

  public MultipartResponse(int paramInt1, int paramInt2, BodyPart paramBodyPart, BodyPart[] paramArrayOfBodyPart)
  {
    super(paramInt1, paramInt2);
    this.root = paramBodyPart;
    this.bodyParts = paramArrayOfBodyPart;
    this.numBodyParts = paramArrayOfBodyPart.length;
  }

  public MultipartResponse(DelimitedInputStream paramDelimitedInputStream)
    throws IOException
  {
    super(paramDelimitedInputStream);
    DataInputStream localDataInputStream = new DataInputStream(paramDelimitedInputStream);
    try
    {
      this.root = BodyPart.fromInputStream(localDataInputStream);
      this.numBodyParts = localDataInputStream.readShort();
      this.bodyParts = new BodyPart[this.numBodyParts];
      for (int i = 0; i < this.numBodyParts; i++)
        this.bodyParts[i] = BodyPart.fromInputStream(localDataInputStream);
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
  }

  public BodyPart[] getBodyParts()
  {
    return this.bodyParts;
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.root.getPayloadProvider().getInputStream();
  }

  public BodyPart getRoot()
  {
    return this.root;
  }

  public int getStreamLength()
    throws IOException
  {
    return this.root.getPayloadProvider().getStreamLength();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.MultipartResponse
 * JD-Core Version:    0.6.2
 */