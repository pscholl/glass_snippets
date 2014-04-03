package com.google.glass.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import com.google.glass.common.R.dimen;
import com.google.glass.common.R.styleable;

public class TipsView extends TypophileTextView
{
  private static final String TAG = TipsView.class.getSimpleName();
  private String tip;

  public TipsView(Context paramContext)
  {
    this(paramContext, null);
  }

  public TipsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TipsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TipsView);
    if (localTypedArray.hasValue(0))
    {
      int i = localTypedArray.getResourceId(0, 0);
      if (i != 0)
        setTip(i);
    }
    localTypedArray.recycle();
  }

  public String getTip()
  {
    return this.tip;
  }

  protected float getTipTextSize()
  {
    return getContext().getResources().getDimension(R.dimen.small_text_size);
  }

  protected Typeface getTipTypeface()
  {
    return RobotoTypefaces.getTypeface(getContext(), 2);
  }

  public void setTip(int paramInt)
  {
    setTip(getContext().getString(paramInt));
  }

  public void setTip(String paramString)
  {
    this.tip = paramString;
    setText(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.TipsView
 * JD-Core Version:    0.6.2
 */