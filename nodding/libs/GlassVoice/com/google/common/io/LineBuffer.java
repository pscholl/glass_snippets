package com.google.common.io;

import java.io.IOException;

abstract class LineBuffer
{
  private StringBuilder line = new StringBuilder();
  private boolean sawReturn;

  private boolean finishLine(boolean paramBoolean)
    throws IOException
  {
    String str1 = this.line.toString();
    String str2;
    if (this.sawReturn)
      if (paramBoolean)
        str2 = "\r\n";
    while (true)
    {
      handleLine(str1, str2);
      this.line = new StringBuilder();
      this.sawReturn = false;
      return paramBoolean;
      str2 = "\r";
      continue;
      if (paramBoolean)
        str2 = "\n";
      else
        str2 = "";
    }
  }

  protected void add(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = paramInt1;
    boolean bool2;
    if ((this.sawReturn) && (paramInt2 > 0))
    {
      if (paramArrayOfChar[i] != '\n')
        break label94;
      bool2 = true;
      if (finishLine(bool2))
        i++;
    }
    int j = i;
    int k = paramInt1 + paramInt2;
    label47: if (i < k)
    {
      switch (paramArrayOfChar[i])
      {
      case '\013':
      case '\f':
      default:
      case '\r':
      case '\n':
      }
      while (true)
      {
        i++;
        break label47;
        label94: bool2 = false;
        break;
        this.line.append(paramArrayOfChar, j, i - j);
        this.sawReturn = true;
        if (i + 1 < k)
          if (paramArrayOfChar[(i + 1)] != '\n')
            break label165;
        for (boolean bool1 = true; ; bool1 = false)
        {
          if (finishLine(bool1))
            i++;
          j = i + 1;
          break;
        }
        this.line.append(paramArrayOfChar, j, i - j);
        finishLine(true);
        j = i + 1;
      }
    }
    label165: this.line.append(paramArrayOfChar, j, paramInt1 + paramInt2 - j);
  }

  protected void finish()
    throws IOException
  {
    if ((this.sawReturn) || (this.line.length() > 0))
      finishLine(false);
  }

  protected abstract void handleLine(String paramString1, String paramString2)
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.LineBuffer
 * JD-Core Version:    0.6.2
 */