package com.google.glass.util;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MimeTypeMatcher
{
  public boolean acceptsAll;
  public List<String> baseTypeMatches = new ArrayList();
  public List<String> fullMatches = new ArrayList();

  public boolean addMatchPattern(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    String str1;
    String str2;
    do
    {
      int j;
      do
      {
        return false;
        int i = paramString.indexOf(';');
        if (i >= 0)
          paramString = paramString.substring(0, i);
        j = paramString.indexOf('/');
      }
      while ((j <= 0) || (j == -1 + paramString.length()));
      str1 = paramString.substring(0, j);
      str2 = paramString.substring(j + 1);
      if (str2.equals("*"))
      {
        if (str1.equals("*"))
        {
          this.acceptsAll = true;
          return true;
        }
        this.baseTypeMatches.add(str1 + "/");
        return true;
      }
    }
    while ((str1.contains("*")) || (str2.contains("*")));
    this.fullMatches.add(paramString);
    return true;
  }

  public boolean matches(String paramString)
  {
    if (this.acceptsAll);
    do
    {
      return true;
      if (paramString == null)
        return false;
    }
    while (this.fullMatches.contains(paramString));
    Iterator localIterator = this.baseTypeMatches.iterator();
    while (localIterator.hasNext())
      if (paramString.startsWith((String)localIterator.next()))
        return true;
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.MimeTypeMatcher
 * JD-Core Version:    0.6.2
 */