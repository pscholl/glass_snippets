package com.x.google.masf.protocol;

import com.x.google.common.io.Gunzipper;
import com.x.google.masf.DelimitedInputStream;
import com.x.google.masf.InputStreamProvider;
import java.io.IOException;
import java.io.InputStream;

public class EncodedPayload
  implements InputStreamProvider
{
  private int payloadLength;
  private DelimitedInputStream theInputStream;

  public EncodedPayload(String paramString, int paramInt, DelimitedInputStream paramDelimitedInputStream)
    throws IOException
  {
    int i;
    if (paramInt > 0)
    {
      this.payloadLength = paramInt;
      if (paramString != null)
        i = paramString.length();
    }
    else
    {
      while (true)
        if (i > 0)
        {
          int j = i - 1;
          i = paramString.lastIndexOf(',', j);
          String str = paramString.substring(i + 1, j + 1);
          if (str.equals("g"))
          {
            paramDelimitedInputStream = Gunzipper.gunzip(paramDelimitedInputStream);
            continue;
            this.payloadLength = 0;
            break;
          }
          if (!str.equals("n"))
            throw new IllegalArgumentException("unrecognised encoding: " + str);
        }
      if (paramInt <= 0)
        break label143;
      this.theInputStream = new DelimitedInputStream(paramDelimitedInputStream, this.payloadLength);
    }
    return;
    label143: this.theInputStream = new DelimitedInputStream(paramDelimitedInputStream, 2147483647);
  }

  public void bufferAndDetach()
  {
    this.theInputStream.bufferAndDetach();
  }

  public void dispose()
  {
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.theInputStream;
  }

  public int getStreamLength()
  {
    return this.payloadLength;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.EncodedPayload
 * JD-Core Version:    0.6.2
 */