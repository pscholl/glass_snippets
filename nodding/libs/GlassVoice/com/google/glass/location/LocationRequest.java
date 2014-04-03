package com.google.glass.location;

import android.os.Bundle;

class LocationRequest
{
  private static final String KEY_LISTENER_ID = "listenerId";
  private static final String KEY_MIN_DISTANCE = "minDistance";
  private static final String KEY_MIN_TIME = "minTime";
  private static final String KEY_PID = "pid";
  private static final String KEY_PROVIDER = "provider";
  private final int listenerId;
  private final float minDistance;
  private final long minTime;
  private final int pid;
  private final String provider;

  LocationRequest(int paramInt1, int paramInt2, String paramString, long paramLong, float paramFloat)
  {
    this.pid = paramInt1;
    this.listenerId = paramInt2;
    this.provider = paramString;
    this.minTime = paramLong;
    this.minDistance = paramFloat;
  }

  LocationRequest(LocationRequest paramLocationRequest)
  {
    this(paramLocationRequest.pid, paramLocationRequest.listenerId, paramLocationRequest.provider, paramLocationRequest.minTime, paramLocationRequest.minDistance);
  }

  LocationRequest(String paramString, long paramLong, float paramFloat)
  {
    this(0, 0, paramString, paramLong, paramFloat);
  }

  static LocationRequest fromBundle(Bundle paramBundle)
  {
    if (paramBundle == null)
      return null;
    return new LocationRequest(paramBundle.getInt("pid"), paramBundle.getInt("listenerId"), paramBundle.getString("provider"), paramBundle.getLong("minTime"), paramBundle.getFloat("minDistance"));
  }

  int getListenerId()
  {
    return this.listenerId;
  }

  float getMinDistance()
  {
    return this.minDistance;
  }

  long getMinTime()
  {
    return this.minTime;
  }

  int getPid()
  {
    return this.pid;
  }

  String getProvider()
  {
    return this.provider;
  }

  boolean matchesListener(LocationRequest paramLocationRequest)
  {
    return (paramLocationRequest.pid == this.pid) && (paramLocationRequest.listenerId == this.listenerId);
  }

  Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("pid", this.pid);
    localBundle.putInt("listenerId", this.listenerId);
    localBundle.putString("provider", this.provider);
    localBundle.putLong("minTime", this.minTime);
    localBundle.putFloat("minDistance", this.minDistance);
    return localBundle;
  }

  public String toString()
  {
    return "[pid:" + this.pid + " listenerId:" + this.listenerId + " provider:" + this.provider + " minTime:" + this.minTime + " minDistance:" + this.minDistance + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationRequest
 * JD-Core Version:    0.6.2
 */