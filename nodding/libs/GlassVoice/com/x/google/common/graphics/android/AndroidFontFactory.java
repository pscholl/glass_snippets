package com.x.google.common.graphics.android;

import com.x.google.common.graphics.GoogleFont;
import com.x.google.common.graphics.InterpolatedFontFactory;

public class AndroidFontFactory extends InterpolatedFontFactory
{
  public GoogleFont getFont(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, boolean paramBoolean3, boolean paramBoolean4)
  {
    return createWrappedFont(new AndroidFont(paramInt1, paramBoolean1, paramBoolean2, paramInt2, paramBoolean3, paramBoolean4));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.AndroidFontFactory
 * JD-Core Version:    0.6.2
 */