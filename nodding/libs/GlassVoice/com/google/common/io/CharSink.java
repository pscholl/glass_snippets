package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;

public abstract class CharSink
{
  public BufferedWriter openBufferedStream()
    throws IOException
  {
    Writer localWriter = openStream();
    if ((localWriter instanceof BufferedWriter))
      return (BufferedWriter)localWriter;
    return new BufferedWriter(localWriter);
  }

  public abstract Writer openStream()
    throws IOException;

  public void write(CharSequence paramCharSequence)
    throws IOException
  {
    Preconditions.checkNotNull(paramCharSequence);
    Closer localCloser = Closer.create();
    try
    {
      ((Writer)localCloser.register(openStream())).append(paramCharSequence);
      return;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  public long writeFrom(Readable paramReadable)
    throws IOException
  {
    Preconditions.checkNotNull(paramReadable);
    Closer localCloser = Closer.create();
    try
    {
      long l = CharStreams.copy(paramReadable, (Writer)localCloser.register(openStream()));
      return l;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  public void writeLines(Iterable<? extends CharSequence> paramIterable)
    throws IOException
  {
    writeLines(paramIterable, System.getProperty("line.separator"));
  }

  public void writeLines(Iterable<? extends CharSequence> paramIterable, String paramString)
    throws IOException
  {
    Preconditions.checkNotNull(paramIterable);
    Preconditions.checkNotNull(paramString);
    Closer localCloser = Closer.create();
    try
    {
      BufferedWriter localBufferedWriter = (BufferedWriter)localCloser.register(openBufferedStream());
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localBufferedWriter.append((CharSequence)localIterator.next()).append(paramString);
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
    localCloser.close();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.CharSink
 * JD-Core Version:    0.6.2
 */