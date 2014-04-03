package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

@Beta
public final class CharStreams
{
  private static final int BUF_SIZE = 2048;

  static <W extends Appendable,  extends Closeable> CharSink asCharSink(OutputSupplier<W> paramOutputSupplier)
  {
    Preconditions.checkNotNull(paramOutputSupplier);
    return new CharSink()
    {
      public Writer openStream()
        throws IOException
      {
        return CharStreams.asWriter((Appendable)this.val$supplier.getOutput());
      }
    };
  }

  static <R extends Readable,  extends Closeable> CharSource asCharSource(InputSupplier<R> paramInputSupplier)
  {
    Preconditions.checkNotNull(paramInputSupplier);
    return new CharSource()
    {
      public Reader openStream()
        throws IOException
      {
        return CharStreams.asReader((Readable)this.val$supplier.getInput());
      }
    };
  }

  public static CharSource asCharSource(String paramString)
  {
    return new StringCharSource(paramString, null);
  }

  static <R extends Reader> InputSupplier<R> asInputSupplier(CharSource paramCharSource)
  {
    Preconditions.checkNotNull(paramCharSource);
    return new InputSupplier()
    {
      public R getInput()
        throws IOException
      {
        return this.val$source.openStream();
      }
    };
  }

  static <W extends Writer> OutputSupplier<W> asOutputSupplier(CharSink paramCharSink)
  {
    Preconditions.checkNotNull(paramCharSink);
    return new OutputSupplier()
    {
      public W getOutput()
        throws IOException
      {
        return this.val$sink.openStream();
      }
    };
  }

  static <R extends Readable,  extends Closeable> Reader asReader(R paramR)
  {
    Preconditions.checkNotNull(paramR);
    if ((paramR instanceof Reader))
      return (Reader)paramR;
    return new Reader()
    {
      public void close()
        throws IOException
      {
        ((Closeable)this.val$readable).close();
      }

      public int read(CharBuffer paramAnonymousCharBuffer)
        throws IOException
      {
        return this.val$readable.read(paramAnonymousCharBuffer);
      }

      public int read(char[] paramAnonymousArrayOfChar, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        return read(CharBuffer.wrap(paramAnonymousArrayOfChar, paramAnonymousInt1, paramAnonymousInt2));
      }
    };
  }

  public static Writer asWriter(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer))
      return (Writer)paramAppendable;
    return new AppendableWriter(paramAppendable);
  }

  public static <R extends Readable,  extends Closeable, W extends Appendable,  extends Closeable> long copy(InputSupplier<R> paramInputSupplier, OutputSupplier<W> paramOutputSupplier)
    throws IOException
  {
    return asCharSource(paramInputSupplier).copyTo(asCharSink(paramOutputSupplier));
  }

  public static <R extends Readable,  extends Closeable> long copy(InputSupplier<R> paramInputSupplier, Appendable paramAppendable)
    throws IOException
  {
    return asCharSource(paramInputSupplier).copyTo(paramAppendable);
  }

  public static long copy(Readable paramReadable, Appendable paramAppendable)
    throws IOException
  {
    Preconditions.checkNotNull(paramReadable);
    Preconditions.checkNotNull(paramAppendable);
    CharBuffer localCharBuffer = CharBuffer.allocate(2048);
    long l = 0L;
    while (paramReadable.read(localCharBuffer) != -1)
    {
      localCharBuffer.flip();
      paramAppendable.append(localCharBuffer);
      l += localCharBuffer.remaining();
      localCharBuffer.clear();
    }
    return l;
  }

  public static InputSupplier<Reader> join(Iterable<? extends InputSupplier<? extends Reader>> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    return new InputSupplier()
    {
      public Reader getInput()
        throws IOException
      {
        return new MultiReader(this.val$suppliers.iterator());
      }
    };
  }

  public static InputSupplier<Reader> join(InputSupplier<? extends Reader>[] paramArrayOfInputSupplier)
  {
    return join(Arrays.asList(paramArrayOfInputSupplier));
  }

  public static InputSupplier<InputStreamReader> newReaderSupplier(InputSupplier<? extends InputStream> paramInputSupplier, Charset paramCharset)
  {
    return asInputSupplier(ByteStreams.asByteSource(paramInputSupplier).asCharSource(paramCharset));
  }

  public static InputSupplier<StringReader> newReaderSupplier(String paramString)
  {
    return asInputSupplier(asCharSource(paramString));
  }

  public static OutputSupplier<OutputStreamWriter> newWriterSupplier(OutputSupplier<? extends OutputStream> paramOutputSupplier, Charset paramCharset)
  {
    return asOutputSupplier(ByteStreams.asByteSink(paramOutputSupplier).asCharSink(paramCharset));
  }

  public static <R extends Readable,  extends Closeable> String readFirstLine(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    return asCharSource(paramInputSupplier).readFirstLine();
  }

  public static <R extends Readable,  extends Closeable, T> T readLines(InputSupplier<R> paramInputSupplier, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    Preconditions.checkNotNull(paramInputSupplier);
    Preconditions.checkNotNull(paramLineProcessor);
    Closer localCloser = Closer.create();
    try
    {
      Object localObject2 = readLines((Readable)localCloser.register((Closeable)paramInputSupplier.getInput()), paramLineProcessor);
      return localObject2;
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

  public static <T> T readLines(Readable paramReadable, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    Preconditions.checkNotNull(paramReadable);
    Preconditions.checkNotNull(paramLineProcessor);
    LineReader localLineReader = new LineReader(paramReadable);
    String str;
    do
      str = localLineReader.readLine();
    while ((str != null) && (paramLineProcessor.processLine(str)));
    return paramLineProcessor.getResult();
  }

  public static <R extends Readable,  extends Closeable> List<String> readLines(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    Closer localCloser = Closer.create();
    try
    {
      List localList = readLines((Readable)localCloser.register((Closeable)paramInputSupplier.getInput()));
      return localList;
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

  public static List<String> readLines(Readable paramReadable)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    LineReader localLineReader = new LineReader(paramReadable);
    while (true)
    {
      String str = localLineReader.readLine();
      if (str == null)
        break;
      localArrayList.add(str);
    }
    return localArrayList;
  }

  public static void skipFully(Reader paramReader, long paramLong)
    throws IOException
  {
    Preconditions.checkNotNull(paramReader);
    while (paramLong > 0L)
    {
      long l = paramReader.skip(paramLong);
      if (l == 0L)
      {
        if (paramReader.read() == -1)
          throw new EOFException();
        paramLong -= 1L;
      }
      else
      {
        paramLong -= l;
      }
    }
  }

  public static <R extends Readable,  extends Closeable> String toString(InputSupplier<R> paramInputSupplier)
    throws IOException
  {
    return asCharSource(paramInputSupplier).read();
  }

  public static String toString(Readable paramReadable)
    throws IOException
  {
    return toStringBuilder(paramReadable).toString();
  }

  private static StringBuilder toStringBuilder(Readable paramReadable)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    copy(paramReadable, localStringBuilder);
    return localStringBuilder;
  }

  public static <W extends Appendable,  extends Closeable> void write(CharSequence paramCharSequence, OutputSupplier<W> paramOutputSupplier)
    throws IOException
  {
    asCharSink(paramOutputSupplier).write(paramCharSequence);
  }

  private static final class StringCharSource extends CharSource
  {
    private static final Splitter LINE_SPLITTER = Splitter.on(Pattern.compile("\r\n|\n|\r"));
    private final String string;

    private StringCharSource(String paramString)
    {
      this.string = ((String)Preconditions.checkNotNull(paramString));
    }

    private Iterable<String> lines()
    {
      return new Iterable()
      {
        public Iterator<String> iterator()
        {
          return new AbstractIterator()
          {
            Iterator<String> lines = CharStreams.StringCharSource.LINE_SPLITTER.split(CharStreams.StringCharSource.this.string).iterator();

            protected String computeNext()
            {
              if (this.lines.hasNext())
              {
                String str = (String)this.lines.next();
                if ((this.lines.hasNext()) || (str.length() != 0))
                  return str;
              }
              return (String)endOfData();
            }
          };
        }
      };
    }

    public Reader openStream()
    {
      return new StringReader(this.string);
    }

    public String read()
    {
      return this.string;
    }

    public String readFirstLine()
    {
      Iterator localIterator = lines().iterator();
      if (localIterator.hasNext())
        return (String)localIterator.next();
      return null;
    }

    public ImmutableList<String> readLines()
    {
      return ImmutableList.copyOf(lines());
    }

    public String toString()
    {
      if (this.string.length() <= 15);
      for (String str = this.string; ; str = this.string.substring(0, 12) + "...")
        return "CharStreams.asCharSource(" + str + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.CharStreams
 * JD-Core Version:    0.6.2
 */