package com.google.glass.util;

import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.util.ArrayList;
import java.util.List;

public class TextColumnizer
{
  public static List<String> columnize(String paramString, TextPaint paramTextPaint, int paramInt1, int paramInt2, Layout.Alignment paramAlignment, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = 0;
    String[] arrayOfString = paramString.split("(?<=[\\s])");
    int k = 0;
    while (k < arrayOfString.length)
    {
      String str = arrayOfString[k];
      j += str.length();
      if (new StaticLayout(paramString, i, j, paramTextPaint, paramInt1, paramAlignment, paramFloat1, paramFloat2, paramBoolean).getHeight() > paramInt2)
      {
        j -= str.length();
        localArrayList.add(paramString.substring(i, j));
        i = j;
      }
      else
      {
        k++;
        if (k == arrayOfString.length)
          localArrayList.add(paramString.substring(i, j));
      }
    }
    return localArrayList;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.TextColumnizer
 * JD-Core Version:    0.6.2
 */