package com.google.common.io;

import java.io.IOException;

public abstract interface InputSupplier<T>
{
  public abstract T getInput()
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.InputSupplier
 * JD-Core Version:    0.6.2
 */