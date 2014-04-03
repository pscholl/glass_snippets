package com.x.google.common.io;

import java.io.IOException;
import java.io.Reader;

public class LineReader
{
  private static final int EOF = -1;
  private static final int SOF = -2;
  private int c = -2;
  private Reader reader;

  public LineReader(Reader paramReader)
  {
    this.reader = paramReader;
  }

  private static boolean isLineTerminator(int paramInt)
  {
    return (paramInt == 10) || (paramInt == 13);
  }

  public String readLine()
    throws IOException
  {
    if (this.c == -2);
    for (this.c = this.reader.read(); isLineTerminator(this.c); this.c = this.reader.read());
    if (this.c == -1)
      return null;
    StringBuffer localStringBuffer = new StringBuffer();
    while ((!isLineTerminator(this.c)) && (this.c != -1))
    {
      localStringBuffer.append((char)this.c);
      this.c = this.reader.read();
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.LineReader
 * JD-Core Version:    0.6.2
 */