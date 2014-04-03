package com.x.google.masf.protocol;

import java.util.Vector;

public class MultipartResponseBuilder
{
  private Vector bodyParts;
  private int id;
  private BodyPart root;
  private int status;

  public MultipartResponseBuilder(int paramInt1, int paramInt2, BodyPart paramBodyPart)
  {
    this.id = paramInt1;
    this.status = paramInt2;
    this.root = paramBodyPart;
    this.bodyParts = new Vector();
  }

  public void addBodyPart(BodyPart paramBodyPart)
  {
    this.bodyParts.addElement(paramBodyPart);
  }

  public MultipartResponse toMultipartResponse()
  {
    BodyPart[] arrayOfBodyPart = new BodyPart[this.bodyParts.size()];
    this.bodyParts.copyInto(arrayOfBodyPart);
    return new MultipartResponse(this.id, this.status, this.root, arrayOfBodyPart);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.MultipartResponseBuilder
 * JD-Core Version:    0.6.2
 */