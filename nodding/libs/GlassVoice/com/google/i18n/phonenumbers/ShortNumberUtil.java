package com.google.i18n.phonenumbers;

import java.util.Set;

@Deprecated
public class ShortNumberUtil
{
  public boolean connectsToEmergencyNumber(String paramString1, String paramString2)
  {
    return ShortNumberInfo.getInstance().connectsToEmergencyNumber(paramString1, paramString2);
  }

  public Set<String> getSupportedRegions()
  {
    return ShortNumberInfo.getInstance().getSupportedRegions();
  }

  public boolean isEmergencyNumber(String paramString1, String paramString2)
  {
    return ShortNumberInfo.getInstance().isEmergencyNumber(paramString1, paramString2);
  }

  public static enum ShortNumberCost
  {
    static
    {
      STANDARD_RATE = new ShortNumberCost("STANDARD_RATE", 1);
      PREMIUM_RATE = new ShortNumberCost("PREMIUM_RATE", 2);
      UNKNOWN_COST = new ShortNumberCost("UNKNOWN_COST", 3);
      ShortNumberCost[] arrayOfShortNumberCost = new ShortNumberCost[4];
      arrayOfShortNumberCost[0] = TOLL_FREE;
      arrayOfShortNumberCost[1] = STANDARD_RATE;
      arrayOfShortNumberCost[2] = PREMIUM_RATE;
      arrayOfShortNumberCost[3] = UNKNOWN_COST;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.ShortNumberUtil
 * JD-Core Version:    0.6.2
 */