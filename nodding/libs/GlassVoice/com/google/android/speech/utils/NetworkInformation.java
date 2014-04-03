package com.google.android.speech.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class NetworkInformation
{
  public static final int ERROR_VALUE = -1;
  public static final int[] MISSING_TELEPHONY_RESULT = { -1, -1 };

  @Nullable
  private final ConnectivityManager mConnectivityManager;

  @Nullable
  private final TelephonyManager mTelephonyManager;

  public NetworkInformation(@Nullable TelephonyManager paramTelephonyManager, @Nullable ConnectivityManager paramConnectivityManager)
  {
    this.mTelephonyManager = paramTelephonyManager;
    this.mConnectivityManager = paramConnectivityManager;
  }

  private static int tryParse(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return paramInt;
  }

  public int getConnectionId()
  {
    if (this.mConnectivityManager == null);
    do
    {
      return -1;
      NetworkInfo localNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
        return 0;
      if (localNetworkInfo.getType() == 1)
        return 1;
      if (localNetworkInfo.getType() == 6)
        return 19;
      if (localNetworkInfo.getType() == 7)
        return 17;
      if (localNetworkInfo.getType() == 9)
        return 18;
      if (localNetworkInfo.getType() != 0)
        break;
    }
    while (this.mTelephonyManager == null);
    switch (this.mTelephonyManager.getNetworkType())
    {
    default:
      return 0;
    case 7:
      return 2;
    case 4:
      return 3;
    case 2:
      return 4;
    case 14:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
    case 12:
      return 8;
    case 1:
      return 9;
    case 8:
      return 10;
    case 10:
      return 11;
    case 15:
      return 12;
    case 9:
      return 13;
    case 11:
      return 14;
    case 13:
      return 15;
    case 3:
    }
    return 16;
    return 0;
  }

  @Nonnull
  public String getDeviceCountryCode()
  {
    if (this.mTelephonyManager == null)
      return "";
    String str = this.mTelephonyManager.getSimCountryIso();
    if (TextUtils.isEmpty(str))
      return "";
    return str.toUpperCase();
  }

  @Nonnull
  public int[] getNetworkMccMnc()
  {
    if (this.mTelephonyManager == null)
      return MISSING_TELEPHONY_RESULT;
    String str = this.mTelephonyManager.getNetworkOperator();
    if ((str == null) || (str.length() < 3))
      return MISSING_TELEPHONY_RESULT;
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = tryParse(str.substring(0, 3), -1);
    arrayOfInt[1] = tryParse(str.substring(3), -1);
    return arrayOfInt;
  }

  public int getSimMcc()
  {
    if (this.mTelephonyManager == null);
    String str;
    do
    {
      return -1;
      str = this.mTelephonyManager.getSimOperator();
    }
    while ((str == null) || (str.length() <= 3));
    return tryParse(str.substring(0, 3), -1);
  }

  @Nonnull
  public int[] getSimMccMnc()
  {
    if (this.mTelephonyManager == null)
      return MISSING_TELEPHONY_RESULT;
    String str = this.mTelephonyManager.getSimOperator();
    if ((str == null) || (str.length() < 3))
      return MISSING_TELEPHONY_RESULT;
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = tryParse(str.substring(0, 3), -1);
    arrayOfInt[1] = tryParse(str.substring(3), -1);
    return arrayOfInt;
  }

  public boolean isConnected()
  {
    if (this.mConnectivityManager == null);
    NetworkInfo localNetworkInfo;
    do
    {
      return false;
      localNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
    }
    while ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.utils.NetworkInformation
 * JD-Core Version:    0.6.2
 */