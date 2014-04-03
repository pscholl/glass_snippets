package com.google.glass.util.proto;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.glass.companion.Proto.Location;
import com.google.glass.companion.Proto.LocationMessage;
import com.google.glass.util.PrimitiveUtils;

public final class LocationMessageUtils
{
  public static Location toAndroidLocation(Proto.LocationMessage paramLocationMessage)
  {
    Proto.Location localLocation = paramLocationMessage.location;
    Location localLocation1 = new Location(paramLocationMessage.provider);
    localLocation1.setLatitude(PrimitiveUtils.safeDouble(localLocation.latitude));
    localLocation1.setLongitude(PrimitiveUtils.safeDouble(localLocation.longitude));
    if (localLocation.accuracy != null)
      localLocation1.setAccuracy(localLocation.accuracy.floatValue());
    if (localLocation.altitude != null)
      localLocation1.setAltitude(localLocation.altitude.doubleValue());
    if (localLocation.bearing != null)
      localLocation1.setBearing(localLocation.bearing.floatValue());
    if (localLocation.speed != null)
      localLocation1.setSpeed(localLocation.speed.floatValue());
    if (localLocation.time != null)
      localLocation1.setTime(localLocation.time.longValue());
    if ((localLocation.satellitesUsedInFix != null) || (localLocation.visibleSatellites != null) || (!TextUtils.isEmpty(localLocation.levelId)) || (localLocation.levelNumberE3 != null) || (!TextUtils.isEmpty(paramLocationMessage.receiver)))
    {
      Bundle localBundle = new Bundle();
      if (localLocation.satellitesUsedInFix != null)
        localBundle.putInt("satellites", localLocation.satellitesUsedInFix.intValue());
      if (localLocation.visibleSatellites != null)
        localBundle.putInt("visible_satellites", localLocation.visibleSatellites.intValue());
      if (!TextUtils.isEmpty(localLocation.levelId))
        localBundle.putString("levelId", localLocation.levelId);
      if (localLocation.levelNumberE3 != null)
        localBundle.putInt("levelNumberE3", localLocation.levelNumberE3.intValue());
      if (!TextUtils.isEmpty(paramLocationMessage.receiver))
        localBundle.putString("receiver", paramLocationMessage.receiver);
      localLocation1.setExtras(localBundle);
    }
    return localLocation1;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.proto.LocationMessageUtils
 * JD-Core Version:    0.6.2
 */