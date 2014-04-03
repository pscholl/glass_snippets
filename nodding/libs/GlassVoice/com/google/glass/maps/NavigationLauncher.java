package com.google.glass.maps;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.googlex.glass.common.proto.TimelineNano.Location;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class NavigationLauncher
{
  private static final String ACTION_NAVIGATION_BROADCAST = "com.google.glass.action.NAVIGATION_BROADCAST";
  public static final String EXTRA_DATA_URI_LIST = "data_uri_list";
  private static final String EXTRA_NAVIGATION_OPERATION = "operation";
  public static final String EXTRA_VOICE_SEARCH_RESULT = "voice_search_result";
  private static final String NAVIGATE_URI_PREFIX = "google.navigation:";
  public static final String NAVIGATION_OPERATION_FOREGROUND = "foreground";
  public static final String NAVIGATION_OPERATION_STOP = "stop";
  public static final String NAVIGATION_OPERATION_WAKE_UP = "wake_up";
  private static final String TRAVEL_MODE_BICYCLING_VALUE = "b";
  private static final String TRAVEL_MODE_DRIVING_VALUE = "d";
  private static final Map<Integer, String> TRAVEL_MODE_MAP = ImmutableMap.of(Integer.valueOf(1), "d", Integer.valueOf(2), "w", Integer.valueOf(3), "b", Integer.valueOf(4), "r", Integer.valueOf(0), "mru");
  private static final String TRAVEL_MODE_MOST_RECENTLY_USED = "mru";
  private static final String TRAVEL_MODE_TRANSIT_VALUE = "r";
  private static final String TRAVEL_MODE_WALKING_VALUE = "w";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static void bringNavigationToForeground(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.glass.action.NAVIGATION_BROADCAST");
    localIntent.putExtra("operation", "foreground");
    paramContext.sendBroadcast(localIntent);
  }

  public static Intent buildIntent(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setData(paramUri);
    return localIntent;
  }

  public static Intent getNavigationIntent(TimelineNano.Location paramLocation, Integer paramInteger)
  {
    String str = getNavigationUriString(paramLocation, paramInteger);
    if (str == null)
      return null;
    return buildIntent(Uri.parse(str));
  }

  public static Intent getNavigationIntent(String paramString1, String paramString2, double paramDouble1, double paramDouble2)
  {
    String str1 = paramDouble1 + "," + paramDouble2;
    try
    {
      String str2 = URLEncoder.encode(paramString1, "UTF-8");
      String str3 = URLEncoder.encode(paramString2, "UTF-8");
      return buildIntent(Uri.parse("google.navigation:q=" + str2 + "&mode=" + "mru" + "&title=" + str3 + "&ll=" + str1));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      logger.e(localUnsupportedEncodingException, "Error encoding navigation query", new Object[0]);
    }
    return null;
  }

  public static Intent getNavigationIntent(String paramString, boolean paramBoolean)
  {
    Intent localIntent = null;
    if (paramString == null);
    while (true)
    {
      return localIntent;
      try
      {
        String str = URLEncoder.encode(paramString, "UTF-8");
        localIntent = buildIntent(Uri.parse("google.navigation:q=" + str + "&mode=" + "mru"));
        if (paramBoolean)
        {
          localIntent.putExtra("voice_search_result", paramString);
          return localIntent;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        logger.e(localUnsupportedEncodingException, "Error encoding navigation query", new Object[0]);
      }
    }
    return null;
  }

  public static Intent getNavigationIntent(List<TimelineNano.Location> paramList, String paramString, boolean paramBoolean)
  {
    Intent localIntent = getNavigationIntent(paramString, paramBoolean);
    if (localIntent == null)
      localIntent = null;
    ArrayList localArrayList;
    do
    {
      do
        return localIntent;
      while ((paramList == null) || (paramList.isEmpty()));
      localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        TimelineNano.Location localLocation = (TimelineNano.Location)localIterator.next();
        if (localLocation != null)
        {
          String str = getNavigationUriString(localLocation, null);
          if (str != null)
            localArrayList.add(str);
        }
      }
    }
    while (localArrayList.isEmpty());
    localIntent.putExtra("data_uri_list", localArrayList);
    return localIntent;
  }

  @VisibleForTesting
  protected static String getNavigationUriString(TimelineNano.Location paramLocation, Integer paramInteger)
  {
    boolean bool = TextUtils.isEmpty(paramLocation.address);
    String str1 = null;
    if (!bool)
      str1 = paramLocation.address;
    if ((TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(paramLocation.displayName)))
      str1 = paramLocation.displayName;
    if ((TextUtils.isEmpty(str1)) && ((paramLocation.latitude == null) || (paramLocation.longitude == null)))
    {
      logger.e("No address, display name, or lat/long for location, skipping navigation.", new Object[0]);
      return null;
    }
    String str2 = paramLocation.displayName;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("google.navigation:");
    if ((paramLocation.latitude != null) && (paramLocation.longitude != null))
      localStringBuilder.append("ll=").append(paramLocation.latitude).append(",").append(paramLocation.longitude);
    if (!TextUtils.isEmpty(str2))
    {
      if (localStringBuilder.length() > "google.navigation:".length())
        localStringBuilder.append("&");
      localStringBuilder.append("title=").append(Uri.encode(str2));
    }
    if (!TextUtils.isEmpty(str1))
    {
      if (localStringBuilder.length() > "google.navigation:".length())
        localStringBuilder.append("&");
      localStringBuilder.append("q=").append(Uri.encode(str1));
    }
    if (paramInteger == null)
      paramInteger = Integer.valueOf(0);
    localStringBuilder.append("&mode=");
    localStringBuilder.append((String)TRAVEL_MODE_MAP.get(paramInteger));
    return localStringBuilder.toString();
  }

  public static void stopNavigation(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.glass.action.NAVIGATION_BROADCAST");
    localIntent.putExtra("operation", "stop");
    paramContext.sendBroadcast(localIntent);
  }

  public static void wakeUpNavigation(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.glass.action.NAVIGATION_BROADCAST");
    localIntent.putExtra("operation", "wake_up");
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.NavigationLauncher
 * JD-Core Version:    0.6.2
 */