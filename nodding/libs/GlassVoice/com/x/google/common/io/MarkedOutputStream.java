package com.x.google.common.io;

import java.io.IOException;
import java.io.OutputStream;

public class MarkedOutputStream extends OutputStream
{
  private static final int MINIMUM_SIZE = 16;
  private byte[] contents;
  private int[] markers;
  private int nextContent = 0;
  private int nextMarker = 0;

  public MarkedOutputStream()
  {
    clear();
  }

  private static int calculateSize(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2 - paramInt3;
    while (i < paramInt1)
    {
      i += paramInt2;
      paramInt2 <<= 1;
    }
    return paramInt2;
  }

  private void expandContentsIfNecessary(int paramInt)
  {
    int i = calculateSize(paramInt, this.contents.length, this.nextContent);
    if (i > this.contents.length)
    {
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(this.contents, 0, arrayOfByte, 0, this.nextContent);
      this.contents = arrayOfByte;
    }
  }

  private void expandMarkersIfNecessary(int paramInt)
  {
    int i = calculateSize(paramInt, this.markers.length, this.nextMarker);
    if (i > this.markers.length)
    {
      int[] arrayOfInt = new int[i];
      System.arraycopy(this.markers, 0, arrayOfInt, 0, this.nextMarker);
      this.markers = arrayOfInt;
    }
  }

  public void addMarker(int paramInt)
  {
    expandMarkersIfNecessary(1);
    int[] arrayOfInt = this.markers;
    int i = this.nextMarker;
    this.nextMarker = (i + 1);
    arrayOfInt[i] = paramInt;
  }

  public int availableContent()
  {
    return this.nextContent;
  }

  public void clear()
  {
    reset();
    this.contents = new byte[16];
    this.markers = new int[1];
  }

  public int getMarker(int paramInt)
  {
    return this.markers[paramInt];
  }

  public int numMarkers()
  {
    return this.nextMarker;
  }

  public void reset()
  {
    this.nextContent = 0;
    this.nextMarker = 0;
  }

  public void setMarker(int paramInt1, int paramInt2)
  {
    this.markers[paramInt1] = paramInt2;
  }

  public void write(int paramInt)
    throws IOException
  {
    expandContentsIfNecessary(1);
    byte[] arrayOfByte = this.contents;
    int i = this.nextContent;
    this.nextContent = (i + 1);
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
  }

  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    expandContentsIfNecessary(paramArrayOfByte.length);
    System.arraycopy(paramArrayOfByte, 0, this.contents, this.nextContent, paramArrayOfByte.length);
    this.nextContent += paramArrayOfByte.length;
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    expandContentsIfNecessary(paramInt2);
    System.arraycopy(paramArrayOfByte, paramInt1, this.contents, this.nextContent, paramInt2);
    this.nextContent = (paramInt2 + this.nextContent);
  }

  public void writeContentsTo(OutputStream paramOutputStream, int paramInt1, int paramInt2)
    throws IOException
  {
    paramOutputStream.write(this.contents, paramInt1, paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.MarkedOutputStream
 * JD-Core Version:    0.6.2
 */