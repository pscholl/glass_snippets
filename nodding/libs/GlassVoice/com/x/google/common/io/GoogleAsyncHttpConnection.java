package com.x.google.common.io;

import com.x.google.common.util.Observable;
import java.io.IOException;

public abstract interface GoogleAsyncHttpConnection extends GoogleHttpConnection, Observable
{
  public static final int STATE_CLOSED = 3;
  public static final int STATE_COMPLETED = 2;
  public static final int STATE_INIT = 0;
  public static final int STATE_SUBMITTED = 1;

  public abstract int getState();

  public abstract void submitRequest()
    throws IOException, SecurityException;

  public abstract void submitRequest(boolean paramBoolean)
    throws IOException, SecurityException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.GoogleAsyncHttpConnection
 * JD-Core Version:    0.6.2
 */