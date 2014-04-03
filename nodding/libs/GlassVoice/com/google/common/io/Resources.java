package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

@Beta
public final class Resources
{
  public static ByteSource asByteSource(URL paramURL)
  {
    return new UrlByteSource(paramURL, null);
  }

  public static CharSource asCharSource(URL paramURL, Charset paramCharset)
  {
    return asByteSource(paramURL).asCharSource(paramCharset);
  }

  public static void copy(URL paramURL, OutputStream paramOutputStream)
    throws IOException
  {
    asByteSource(paramURL).copyTo(paramOutputStream);
  }

  public static URL getResource(Class<?> paramClass, String paramString)
  {
    URL localURL = paramClass.getResource(paramString);
    if (localURL != null);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = paramClass.getName();
      Preconditions.checkArgument(bool, "resource %s relative to %s not found.", arrayOfObject);
      return localURL;
    }
  }

  public static URL getResource(String paramString)
  {
    URL localURL = Resources.class.getClassLoader().getResource(paramString);
    if (localURL != null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "resource %s not found.", new Object[] { paramString });
      return localURL;
    }
  }

  public static InputSupplier<InputStream> newInputStreamSupplier(URL paramURL)
  {
    return ByteStreams.asInputSupplier(asByteSource(paramURL));
  }

  public static InputSupplier<InputStreamReader> newReaderSupplier(URL paramURL, Charset paramCharset)
  {
    return CharStreams.asInputSupplier(asCharSource(paramURL, paramCharset));
  }

  public static <T> T readLines(URL paramURL, Charset paramCharset, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramURL, paramCharset), paramLineProcessor);
  }

  public static List<String> readLines(URL paramURL, Charset paramCharset)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramURL, paramCharset));
  }

  public static byte[] toByteArray(URL paramURL)
    throws IOException
  {
    return asByteSource(paramURL).read();
  }

  public static String toString(URL paramURL, Charset paramCharset)
    throws IOException
  {
    return asCharSource(paramURL, paramCharset).read();
  }

  private static final class UrlByteSource extends ByteSource
  {
    private final URL url;

    private UrlByteSource(URL paramURL)
    {
      this.url = ((URL)Preconditions.checkNotNull(paramURL));
    }

    public InputStream openStream()
      throws IOException
    {
      return this.url.openStream();
    }

    public String toString()
    {
      return "Resources.newByteSource(" + this.url + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.Resources
 * JD-Core Version:    0.6.2
 */