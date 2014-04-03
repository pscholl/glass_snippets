package com.google.glass.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.google.glass.common.R.styleable;

public class TypophileTextView extends TextView
{
  private static final int MASK_CONDENSED = 256;
  private static final int MASK_ITALIC = 16;
  private static final int MASK_WEIGHT = 15;

  public TypophileTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public TypophileTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TypophileTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TypophileTextView);
    int j;
    boolean bool2;
    if (localTypedArray.hasValue(0))
    {
      int i = localTypedArray.getInt(0, 0);
      j = i & 0xF;
      if ((i & 0x10) == 0)
        break label95;
      bool2 = bool1;
      if ((i & 0x100) == 0)
        break label101;
    }
    while (true)
    {
      Typeface localTypeface = RobotoTypefaces.getTypeface(paramContext, j, bool2, bool1);
      if (localTypeface != null)
        setTypeface(localTypeface);
      localTypedArray.recycle();
      return;
      label95: bool2 = false;
      break;
      label101: bool1 = false;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.TypophileTextView
 * JD-Core Version:    0.6.2
 */