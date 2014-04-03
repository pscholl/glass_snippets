package com.google.common.io;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

public abstract class CharSource
{
  public long copyTo(CharSink paramCharSink)
    throws IOException
  {
    Preconditions.checkNotNull(paramCharSink);
    Closer localCloser = Closer.create();
    try
    {
      long l = CharStreams.copy((Reader)localCloser.register(openStream()), (Writer)localCloser.register(paramCharSink.openStream()));
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

  public long copyTo(Appendable paramAppendable)
    throws IOException
  {
    Preconditions.checkNotNull(paramAppendable);
    Closer localCloser = Closer.create();
    try
    {
      long l = CharStreams.copy((Reader)localCloser.register(openStream()), paramAppendable);
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

  public BufferedReader openBufferedStream()
    throws IOException
  {
    Reader localReader = openStream();
    if ((localReader instanceof BufferedReader))
      return (BufferedReader)localReader;
    return new BufferedReader(localReader);
  }

  public abstract Reader openStream()
    throws IOException;

  public String read()
    throws IOException
  {
    Closer localCloser = Closer.create();
    try
    {
      String str = CharStreams.toString((Reader)localCloser.register(openStream()));
      return str;
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

  @Nullable
  public String readFirstLine()
    throws IOException
  {
    Closer localCloser = Closer.create();
    try
    {
      String str = ((BufferedReader)localCloser.register(openBufferedStream())).readLine();
      return str;
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

  public ImmutableList<String> readLines()
    throws IOException
  {
    Closer localCloser = Closer.create();
    ArrayList localArrayList;
    try
    {
      BufferedReader localBufferedReader = (BufferedReader)localCloser.register(openBufferedStream());
      localArrayList = Lists.newArrayList();
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        localArrayList.add(str);
      }
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
    ImmutableList localImmutableList = ImmutableList.copyOf(localArrayList);
    localCloser.close();
    return localImmutableList;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.CharSource
 * JD-Core Version:    0.6.2
 */