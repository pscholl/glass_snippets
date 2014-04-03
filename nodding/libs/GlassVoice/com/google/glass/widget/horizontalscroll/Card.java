package com.google.glass.widget.horizontalscroll;

import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public abstract interface Card
{
  public abstract TimelineItemId getBundleEntryPoint();

  public abstract boolean onConfirm();

  public abstract void onFocus();

  public abstract void onLoad();

  public abstract boolean onOptionsItemSelected(OptionMenu.Item paramItem);

  public abstract boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu);

  public abstract void onSettled();

  public abstract void onUnfocus();

  public abstract void onUnload();

  public abstract void onUnsettled();

  public abstract boolean shouldSuppressSingleTapSound();

  public static enum State
  {
    static
    {
      LOADED = new State("LOADED", 1);
      FOCUSED = new State("FOCUSED", 2);
      SETTLED = new State("SETTLED", 3);
      State[] arrayOfState = new State[4];
      arrayOfState[0] = UNLOADED;
      arrayOfState[1] = LOADED;
      arrayOfState[2] = FOCUSED;
      arrayOfState[3] = SETTLED;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.Card
 * JD-Core Version:    0.6.2
 */