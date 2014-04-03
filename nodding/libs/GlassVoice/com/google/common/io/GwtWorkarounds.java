package com.google.common.io;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

@GwtCompatible(emulated=true)
final class GwtWorkarounds
{
  @GwtIncompatible("Reader")
  static CharInput asCharInput(Reader paramReader)
  {
    Preconditions.checkNotNull(paramReader);
    return new CharInput()
    {
      public void close()
        throws IOException
      {
        this.val$reader.close();
      }

      public int read()
        throws IOException
      {
        return this.val$reader.read();
      }
    };
  }

  static CharInput asCharInput(CharSequence paramCharSequence)
  {
    Preconditions.checkNotNull(paramCharSequence);
    return new CharInput()
    {
      int index = 0;

      public void close()
      {
        this.index = this.val$chars.length();
      }

      public int read()
      {
        if (this.index < this.val$chars.length())
        {
          CharSequence localCharSequence = this.val$chars;
          int i = this.index;
          this.index = (i + 1);
          return localCharSequence.charAt(i);
        }
        return -1;
      }
    };
  }

  @GwtIncompatible("Writer")
  static CharOutput asCharOutput(Writer paramWriter)
  {
    Preconditions.checkNotNull(paramWriter);
    return new CharOutput()
    {
      public void close()
        throws IOException
      {
        this.val$writer.close();
      }

      public void flush()
        throws IOException
      {
        this.val$writer.flush();
      }

      public void write(char paramAnonymousChar)
        throws IOException
      {
        this.val$writer.append(paramAnonymousChar);
      }
    };
  }

  @GwtIncompatible("InputStream")
  static InputStream asInputStream(ByteInput paramByteInput)
  {
    Preconditions.checkNotNull(paramByteInput);
    return new InputStream()
    {
      public void close()
        throws IOException
      {
        this.val$input.close();
      }

      public int read()
        throws IOException
      {
        return this.val$input.read();
      }

      public int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        Preconditions.checkNotNull(paramAnonymousArrayOfByte);
        Preconditions.checkPositionIndexes(paramAnonymousInt1, paramAnonymousInt1 + paramAnonymousInt2, paramAnonymousArrayOfByte.length);
        if (paramAnonymousInt2 == 0)
        {
          j = 0;
          return j;
        }
        int i = read();
        if (i == -1)
          return -1;
        paramAnonymousArrayOfByte[paramAnonymousInt1] = ((byte)i);
        for (int j = 1; ; j++)
        {
          if (j >= paramAnonymousInt2)
            break label80;
          int k = read();
          if (k == -1)
            break;
          paramAnonymousArrayOfByte[(paramAnonymousInt1 + j)] = ((byte)k);
        }
        label80: return paramAnonymousInt2;
      }
    };
  }

  @GwtIncompatible("OutputStream")
  static OutputStream asOutputStream(ByteOutput paramByteOutput)
  {
    Preconditions.checkNotNull(paramByteOutput);
    return new OutputStream()
    {
      public void close()
        throws IOException
      {
        this.val$output.close();
      }

      public void flush()
        throws IOException
      {
        this.val$output.flush();
      }

      public void write(int paramAnonymousInt)
        throws IOException
      {
        this.val$output.write((byte)paramAnonymousInt);
      }
    };
  }

  static CharOutput stringBuilderOutput(int paramInt)
  {
    return new CharOutput()
    {
      public void close()
      {
      }

      public void flush()
      {
      }

      public String toString()
      {
        return this.val$builder.toString();
      }

      public void write(char paramAnonymousChar)
      {
        this.val$builder.append(paramAnonymousChar);
      }
    };
  }

  static abstract interface ByteInput
  {
    public abstract void close()
      throws IOException;

    public abstract int read()
      throws IOException;
  }

  static abstract interface ByteOutput
  {
    public abstract void close()
      throws IOException;

    public abstract void flush()
      throws IOException;

    public abstract void write(byte paramByte)
      throws IOException;
  }

  static abstract interface CharInput
  {
    public abstract void close()
      throws IOException;

    public abstract int read()
      throws IOException;
  }

  static abstract interface CharOutput
  {
    public abstract void close()
      throws IOException;

    public abstract void flush()
      throws IOException;

    public abstract void write(char paramChar)
      throws IOException;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.GwtWorkarounds
 * JD-Core Version:    0.6.2
 */