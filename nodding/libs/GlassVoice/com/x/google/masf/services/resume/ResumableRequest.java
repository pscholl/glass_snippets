package com.x.google.masf.services.resume;

import com.x.google.masf.InputStreamProvider;
import com.x.google.masf.protocol.Response;
import java.io.IOException;
import java.io.InputStream;

public abstract class ResumableRequest
  implements InputStreamProvider
{
  public static final int COMPLETE_EXTENDABLE_REQUEST = 3;
  public static final int EXTEND_EXTENDABLE_REQUEST = 2;
  private static final int MAXIMUM_ERROR_COUNT = 3;
  private static final int MAXIMUM_WINDOW_SIZE = 3;
  public static final int NEW_EXTENDABLE_REQUEST = 1;
  public static final int NEW_RESUMABLE_REQUEST;
  private Listener listener;
  private int maximumErrorCount = 3;
  private int maximumWindowSize = 3;
  private String requestId;
  private int requestType = 0;

  public abstract void dispose();

  public abstract InputStream getInputStream()
    throws IOException;

  public Listener getListener()
  {
    try
    {
      Listener localListener = this.listener;
      return localListener;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getMaximumErrorCount()
  {
    try
    {
      int i = this.maximumErrorCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getMaximumWindowSize()
  {
    try
    {
      int i = this.maximumWindowSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getRequestId()
  {
    try
    {
      String str = this.requestId;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getRequestType()
  {
    try
    {
      int i = this.requestType;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public abstract int getStreamLength()
    throws IOException;

  public void setListener(Listener paramListener)
  {
    try
    {
      this.listener = paramListener;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setMaximumErrorCount(int paramInt)
  {
    try
    {
      this.maximumErrorCount = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setMaximumWindowSize(int paramInt)
  {
    try
    {
      this.maximumWindowSize = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setRequestId(String paramString)
  {
    try
    {
      this.requestId = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setRequestType(int paramInt)
  {
    try
    {
      this.requestType = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static abstract interface Listener
  {
    public abstract void requestCancelled(ResumableRequest paramResumableRequest);

    public abstract void requestCompleted(ResumableRequest paramResumableRequest, Response paramResponse);

    public abstract void requestFailed(ResumableRequest paramResumableRequest, Exception paramException);

    public abstract void requestProgress(ResumableRequest paramResumableRequest, long paramLong1, long paramLong2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.ResumableRequest
 * JD-Core Version:    0.6.2
 */