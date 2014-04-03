package com.google.android.feedback.proto;

public abstract interface BatteryData
{
  public static final int BATTERY_LEVEL = 5;
  public static final int BATTERY_STATE = 6;
  public static final int BATTERY_STATE_CHARGING = 2;
  public static final int BATTERY_STATE_FULL = 3;
  public static final int BATTERY_STATE_UNKNOWN = 0;
  public static final int BATTERY_STATE_UNPLUGGED = 1;
  public static final int CHECKIN_DETAILS = 4;
  public static final int DURATION_MICROS = 2;
  public static final int USAGE_DETAILS = 3;
  public static final int USAGE_PERCENT = 1;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.feedback.proto.BatteryData
 * JD-Core Version:    0.6.2
 */