package com.x.google.common.util;

public abstract interface Observable
{
  public abstract void addObserver(Observer paramObserver);

  public abstract Observer[] getObservers();

  public abstract void notifyObservers();

  public abstract void notifyObservers(Object paramObject);

  public abstract void removeAllObservers();

  public abstract boolean removeObserver(Observer paramObserver);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.Observable
 * JD-Core Version:    0.6.2
 */