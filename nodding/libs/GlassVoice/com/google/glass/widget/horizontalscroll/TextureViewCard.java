package com.google.glass.widget.horizontalscroll;

import android.content.Context;
import android.view.TextureView;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public class TextureViewCard extends TextureView
  implements Card
{
  public TextureViewCard(Context paramContext)
  {
    super(paramContext);
  }

  public TimelineItemId getBundleEntryPoint()
  {
    return null;
  }

  public boolean onConfirm()
  {
    return false;
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onSettled()
  {
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
  }

  public void onUnsettled()
  {
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.TextureViewCard
 * JD-Core Version:    0.6.2
 */