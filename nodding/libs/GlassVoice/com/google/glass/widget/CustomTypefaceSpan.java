package com.google.glass.widget;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;

public class CustomTypefaceSpan extends TypefaceSpan
{
  private final Typeface typeface;

  public CustomTypefaceSpan(Typeface paramTypeface)
  {
    super("custom");
    this.typeface = paramTypeface;
  }

  public void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setTypeface(this.typeface);
  }

  public void updateMeasureState(TextPaint paramTextPaint)
  {
    paramTextPaint.setTypeface(this.typeface);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.CustomTypefaceSpan
 * JD-Core Version:    0.6.2
 */