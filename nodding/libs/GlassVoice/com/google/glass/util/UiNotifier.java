package com.google.glass.util;

import com.google.common.collect.Lists;
import java.util.LinkedList;

public class UiNotifier<T>
{
  private final LinkedList<Listener<T>> hiddenListeners = Lists.newLinkedList();
  private final LinkedList<Listener<T>> shownListeners = Lists.newLinkedList();

  public void addListener(Listener<T> paramListener)
  {
    if (paramListener.isConsumed())
      throw new IllegalArgumentException("Do not reuse listeners");
    switch (1.$SwitchMap$com$google$glass$util$UiNotifier$Mode[paramListener.getMode().ordinal()])
    {
    default:
      return;
    case 1:
      this.shownListeners.add(paramListener);
      return;
    case 2:
    }
    this.hiddenListeners.add(paramListener);
  }

  public void clear()
  {
    this.shownListeners.clear();
    this.hiddenListeners.clear();
  }

  public void onHidden(T paramT)
  {
    if (this.hiddenListeners.isEmpty())
      return;
    ((Listener)this.hiddenListeners.remove(0)).onHidden(paramT);
  }

  public void onShown(T paramT)
  {
    if (this.shownListeners.isEmpty())
      return;
    ((Listener)this.shownListeners.remove(0)).onShown(paramT);
  }

  public void removeListener(Listener<T> paramListener)
  {
    switch (1.$SwitchMap$com$google$glass$util$UiNotifier$Mode[paramListener.getMode().ordinal()])
    {
    default:
      return;
    case 1:
      this.shownListeners.remove(paramListener);
      return;
    case 2:
    }
    this.hiddenListeners.remove(paramListener);
  }

  public static abstract interface Listener<T>
  {
    public abstract UiNotifier.Mode getMode();

    public abstract boolean isConsumed();

    public abstract void onHidden(T paramT);

    public abstract void onShown(T paramT);
  }

  public static enum Mode
  {
    static
    {
      ON_HIDE = new Mode("ON_HIDE", 1);
      Mode[] arrayOfMode = new Mode[2];
      arrayOfMode[0] = ON_SHOW;
      arrayOfMode[1] = ON_HIDE;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.UiNotifier
 * JD-Core Version:    0.6.2
 */