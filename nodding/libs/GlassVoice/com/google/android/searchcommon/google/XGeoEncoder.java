package com.google.android.searchcommon.google;

import android.location.Location;
import android.util.Base64;
import java.util.concurrent.TimeUnit;
import location.unified.LocationDescriptorProto.LatLng;
import location.unified.LocationDescriptorProto.LocationDescriptor;

public class XGeoEncoder
{
  private static final double E7 = 10000000.0D;
  public static final String HEADER = "X-Geo";
  private static final String LOCATION_PREFIX = "w ";
  private static final double MILLIMETERS_IN_A_METER = 1000.0D;

  public static String encodeLocation(Location paramLocation)
  {
    LocationDescriptorProto.LocationDescriptor localLocationDescriptor = new LocationDescriptorProto.LocationDescriptor();
    LocationDescriptorProto.LatLng localLatLng = new LocationDescriptorProto.LatLng();
    localLocationDescriptor.setRole(1);
    localLocationDescriptor.setProducer(12);
    localLatLng.setLatitudeE7((int)Math.round(10000000.0D * paramLocation.getLatitude()));
    localLatLng.setLongitudeE7((int)Math.round(10000000.0D * paramLocation.getLongitude()));
    localLocationDescriptor.setLatlng(localLatLng);
    long l = paramLocation.getTime();
    localLocationDescriptor.setTimestamp(TimeUnit.MILLISECONDS.toMicros(l));
    if (paramLocation.hasAccuracy())
      localLocationDescriptor.setRadius((float)(1000.0D * paramLocation.getAccuracy()));
    return "w " + Base64.encodeToString(localLocationDescriptor.toByteArray(), 10);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.google.XGeoEncoder
 * JD-Core Version:    0.6.2
 */