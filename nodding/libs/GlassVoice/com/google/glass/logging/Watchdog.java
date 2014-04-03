package com.google.glass.logging;

import android.app.Service;
import android.text.TextUtils;
import android.util.Log;
import com.google.glass.util.CommandOutputCollector;
import java.util.HashSet;
import java.util.Set;

public class Watchdog
{
  private static final String TAG = Watchdog.class.getSimpleName();
  private static Set<String> reportedErrors = new HashSet();
  private final Service serviceContext;

  public Watchdog(Service paramService)
  {
    this.serviceContext = paramService;
  }

  private String extractErrorLine(String paramString1, String paramString2)
  {
    int i = paramString1.indexOf(paramString2);
    int j = paramString1.lastIndexOf('\n', i);
    if (j == -1)
      j = 0;
    int k = paramString1.indexOf('\n', i);
    if (k == -1)
      k = paramString1.length();
    return paramString1.substring(j, k);
  }

  private void reportError(GlassError paramGlassError, String paramString)
  {
    if (paramString == null)
      paramString = paramGlassError.signature;
    if (reportedErrors.contains(paramString))
    {
      Log.w(TAG, "Error \"" + paramGlassError.name + "\" detected and already reported so doing nothing");
      return;
    }
    reportedErrors.add(paramString);
    GlassError.report(this.serviceContext, paramGlassError);
  }

  public void watch()
  {
    Log.d(TAG, "Checking for errors");
    String str1 = FeedbackBuilder.getDmesg(this.serviceContext);
    String str2 = CommandOutputCollector.getLogcat();
    GlassError[] arrayOfGlassError = GlassError.values();
    int i = arrayOfGlassError.length;
    int j = 0;
    if (j < i)
    {
      GlassError localGlassError = arrayOfGlassError[j];
      if (TextUtils.isEmpty(localGlassError.signature));
      label146: 
      while (true)
      {
        j++;
        break;
        int k;
        String str3;
        if (str1.contains(localGlassError.signature))
        {
          k = 1;
          str3 = extractErrorLine(str1, localGlassError.signature);
        }
        while (true)
        {
          if (k == 0)
            break label146;
          reportError(localGlassError, str3);
          break;
          boolean bool = str2.contains(localGlassError.signature);
          str3 = null;
          k = 0;
          if (bool)
          {
            k = 1;
            str3 = extractErrorLine(str2, localGlassError.signature);
          }
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.Watchdog
 * JD-Core Version:    0.6.2
 */