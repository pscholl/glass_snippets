package com.x.google.masf;

import com.x.google.common.util.Observable;
import com.x.google.common.util.Observer;
import java.io.DataInputStream;
import java.io.IOException;

public class MultiplexedHttpConnection extends AsyncHttpConnection
{
  public MultiplexedHttpConnection(String paramString, boolean paramBoolean)
  {
    super(paramString, paramBoolean);
  }

  private void submitRequestAndWaitForCompletion()
  {
    synchronized (new Object())
    {
      if (isInit())
      {
        addObserver(new Observer()
        {
          public void update(Observable paramAnonymousObservable, Object paramAnonymousObject)
          {
            synchronized (localObject1)
            {
              localObject1.notifyAll();
              return;
            }
          }
        });
        submitRequest();
      }
      while (!isCompleted())
      {
        boolean bool = isClosed();
        if (bool)
          break;
        try
        {
          ???.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      return;
    }
  }

  public String getContentType()
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getContentType();
  }

  public String getHeaderField(int paramInt)
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getHeaderField(paramInt);
  }

  public String getHeaderField(String paramString)
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getHeaderField(paramString);
  }

  public String getHeaderFieldKey(int paramInt)
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getHeaderFieldKey(paramInt);
  }

  public long getLength()
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getLength();
  }

  public int getResponseCode()
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getResponseCode();
  }

  public String getResponseMessage()
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.getResponseMessage();
  }

  public DataInputStream openDataInputStream()
    throws IOException
  {
    submitRequestAndWaitForCompletion();
    return super.openDataInputStream();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.MultiplexedHttpConnection
 * JD-Core Version:    0.6.2
 */