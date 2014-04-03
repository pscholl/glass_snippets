package com.google.glass.html;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImageUrlHelper
{
  private static final Pattern FIFE_HOSTED_IMAGE_URL_RE = Pattern.compile("^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|(gp[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(dp[3-6]\\.googleusercontent\\.cn)|((dev|dev2|dev3|qa|qa2|qa3|qa-red|qa-blue|canary)[-.]lighthouse\\.sandbox\\.google\\.com/image)|(www\\.google\\.com\\/visualsearch\\/lh))\\/");
  private static final int INVALID_NUMBER = -1;
  private final Context context;

  public ImageUrlHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private boolean isFifeHostedUrl(String paramString)
  {
    return FIFE_HOSTED_IMAGE_URL_RE.matcher(paramString).find();
  }

  private int safeToIntMinusPrefix(String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString))
        return -1;
      int i = Integer.parseInt(paramString.substring(1));
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return -1;
  }

  public ImageDownloadParams getImageDownloadParams(String paramString)
  {
    ImageDownloadParams localImageDownloadParams = new ImageDownloadParams();
    DisplayMetrics localDisplayMetrics = this.context.getResources().getDisplayMetrics();
    int i = Math.max(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
    localImageDownloadParams.width = i;
    localImageDownloadParams.height = i;
    localImageDownloadParams.cropType = 0;
    if (!isFifeHostedUrl(paramString));
    int j;
    Integer localInteger;
    do
    {
      String[] arrayOfString1;
      do
      {
        return localImageDownloadParams;
        arrayOfString1 = paramString.split("/");
      }
      while (arrayOfString1.length < 2);
      String[] arrayOfString2 = arrayOfString1[(-2 + arrayOfString1.length)].split("-");
      j = -1;
      k = -1;
      localInteger = null;
      int m = arrayOfString2.length;
      int n = 0;
      if (n < m)
      {
        String str = arrayOfString2[n];
        if (str.isEmpty());
        while (true)
        {
          n++;
          break;
          switch (str.charAt(0))
          {
          default:
            if (str.contains("p"))
              localInteger = Integer.valueOf(1);
            break;
          case 'w':
            j = safeToIntMinusPrefix(str);
            break;
          case 'h':
            k = safeToIntMinusPrefix(str);
            break;
          case 's':
            k = safeToIntMinusPrefix(str);
            j = k;
          }
        }
      }
    }
    while ((j == -1) || (k == -1) || (localInteger == null));
    float f;
    if ((j > i) || (k > i))
    {
      f = j / k;
      if (j <= k)
        break label315;
      j = i;
    }
    for (int k = (int)(i / f); ; k = i)
    {
      localImageDownloadParams.width = j;
      localImageDownloadParams.height = k;
      localImageDownloadParams.cropType = localInteger.intValue();
      return localImageDownloadParams;
      label315: j = (int)(f * i);
    }
  }

  private static class FifeParam
  {
    public static final char HEIGHT = 'h';
    public static final char SIZE = 's';
    public static final String SMART_CROP = "p";
    public static final char WIDTH = 'w';
  }

  public static class ImageDownloadParams
  {
    public int cropType;
    public int height;
    public int width;

    public String toString()
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(this.width);
      arrayOfObject[1] = Integer.valueOf(this.height);
      arrayOfObject[2] = Integer.valueOf(this.cropType);
      return String.format("[width=%d, height=%d, cropType=%s]", arrayOfObject);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.ImageUrlHelper
 * JD-Core Version:    0.6.2
 */