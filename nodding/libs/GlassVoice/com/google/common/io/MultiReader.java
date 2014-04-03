package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import javax.annotation.Nullable;

class MultiReader extends Reader
{
  private Reader current;
  private final Iterator<? extends InputSupplier<? extends Reader>> it;

  MultiReader(Iterator<? extends InputSupplier<? extends Reader>> paramIterator)
    throws IOException
  {
    this.it = paramIterator;
    advance();
  }

  private void advance()
    throws IOException
  {
    close();
    if (this.it.hasNext())
      this.current = ((Reader)((InputSupplier)this.it.next()).getInput());
  }

  public void close()
    throws IOException
  {
    if (this.current != null);
    try
    {
      this.current.close();
      return;
    }
    finally
    {
      this.current = null;
    }
  }

  public int read(@Nullable char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    int i;
    if (this.current == null)
      i = -1;
    do
    {
      return i;
      i = this.current.read(paramArrayOfChar, paramInt1, paramInt2);
    }
    while (i != -1);
    advance();
    return read(paramArrayOfChar, paramInt1, paramInt2);
  }

  public boolean ready()
    throws IOException
  {
    return (this.current != null) && (this.current.ready());
  }

  public long skip(long paramLong)
    throws IOException
  {
    boolean bool;
    if (paramLong >= 0L)
    {
      bool = true;
      Preconditions.checkArgument(bool, "n is negative");
      if (paramLong <= 0L);
    }
    else
    {
      while (true)
      {
        if (this.current == null)
          break label59;
        long l = this.current.skip(paramLong);
        if (l > 0L)
        {
          return l;
          bool = false;
          break;
        }
        advance();
      }
    }
    label59: return 0L;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.MultiReader
 * JD-Core Version:    0.6.2
 */