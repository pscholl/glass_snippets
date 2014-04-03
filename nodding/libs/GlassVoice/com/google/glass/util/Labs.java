package com.google.glass.util;

import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.glass.hidden.HiddenSystemProperties;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.build.BuildHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.Locale;

public class Labs
{

  @VisibleForTesting
  static final int MAX_PROPERTY_LENGTH = 31;

  @VisibleForTesting
  static final String PROPERTY_PREFIX = "persist.lab.";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static String getValue(Feature paramFeature)
  {
    if (paramFeature.isSetByTest())
      return paramFeature.getValueForTest();
    if (BuildHelper.isUser())
      return paramFeature.getDefaultValue();
    return HiddenSystemProperties.get(paramFeature.getPropertyKey(), paramFeature.getDefaultValue());
  }

  public static boolean isEnabled(Feature paramFeature)
  {
    if (paramFeature.isSetByTest())
      return paramFeature.getValueForTestAsBoolean();
    if (BuildHelper.isUser())
      return paramFeature.getDefaultValueAsBoolean();
    return HiddenSystemProperties.getBoolean(paramFeature.getPropertyKey(), paramFeature.getDefaultValueAsBoolean());
  }

  public static boolean isEnabled(Feature paramFeature, PackageManager paramPackageManager, String paramString)
  {
    if (!isEnabled(paramFeature))
      return false;
    try
    {
      paramPackageManager.getPackageInfo(paramString, 1);
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      logger.e(localNameNotFoundException, "Lab %s enabled without installing required package: %s.", new Object[] { paramFeature, paramString });
    }
    return false;
  }

  @VisibleForTesting
  public static void setFeatureForTesting(Feature paramFeature, String paramString)
  {
    Assert.assertIsTest();
    paramFeature.setTestValue(paramString);
  }

  @VisibleForTesting
  public static void setFeatureForTesting(Feature paramFeature, boolean paramBoolean)
  {
    setFeatureForTesting(paramFeature, Boolean.toString(paramBoolean));
  }

  public static enum Feature
  {
    private final String defaultValue;
    private boolean isSetByTest;
    private final String propertyKey;
    private String valueForTest;

    static
    {
      if (!BuildHelper.isJellyBean());
      for (boolean bool = true; ; bool = false)
      {
        GCAM = new Feature("GCAM", 0, bool);
        MMNT = new Feature("MMNT", 1, false);
        HO_LOG_VERBOSE = new Feature("HO_LOG_VERBOSE", 2, false);
        HO_AYE = new Feature("HO_AYE", 3, false);
        HO_SHOUT_OUT = new Feature("HO_SHOUT_OUT", 4, false);
        SAVE_AUDIO = new Feature("SAVE_AUDIO", 5, false);
        LOG_POS_HOTWORD_REC = new Feature("LOG_POS_HOTWORD_REC", 6, true);
        LOG_NEG_HOTWORD_REC = new Feature("LOG_NEG_HOTWORD_REC", 7, false);
        BLUETOOTH_HEADSET = new Feature("BLUETOOTH_HEADSET", 8, true);
        DEBUG_LAUNCHER = new Feature("DEBUG_LAUNCHER", 9, false);
        SEARCH_DEV_SERVER = new Feature("SEARCH_DEV_SERVER", 10, false);
        SEARCH_TEST_SERVER = new Feature("SEARCH_TEST_SERVER", 11, false);
        PRODUCTION_SERVERS = new Feature("PRODUCTION_SERVERS", 12, true);
        STAGING_SERVERS = new Feature("STAGING_SERVERS", 13, false);
        QA_SERVERS = new Feature("QA_SERVERS", 14, false);
        AUTOPUSH_SERVERS = new Feature("AUTOPUSH_SERVERS", 15, true);
        DEV_SERVERS = new Feature("DEV_SERVERS", 16, false);
        SERVER_COMPONENT = new Feature("SERVER_COMPONENT", 17, "");
        GPS_DEBUG_CARD = new Feature("GPS_DEBUG_CARD", 18, false);
        GPS_IN_BACKGROUND = new Feature("GPS_IN_BACKGROUND", 19, false);
        GPS_ENABLE_LOCAL = new Feature("GPS_ENABLE_LOCAL", 20, false);
        GPS_ENABLE_REMOTE = new Feature("GPS_ENABLE_REMOTE", 21, true);
        NV_TRST = new Feature("NV_TRST", 22, true);
        CALL_NOISE_CANCEL = new Feature("CALL_NOISE_CANCEL", 23, false);
        NATIVE_APP_VOICE = new Feature("NATIVE_APP_VOICE", 24, true);
        MSG_GW = new Feature("MSG_GW", 25, false);
        WEB_BROWSING = new Feature("WEB_BROWSING", 26, true);
        DING_ON_LOAD = new Feature("DING_ON_LOAD", 27, false);
        WINK = new Feature("WINK", 28, false);
        SPECIAL_GWS_SERVER = new Feature("SPECIAL_GWS_SERVER", 29, false);
        USE_SAX_PARSER = new Feature("USE_SAX_PARSER", 30, false);
        PHONE_AEC_LOG = new Feature("PHONE_AEC_LOG", 31, false);
        PEOPLE_GRID = new Feature("PEOPLE_GRID", 32, false);
        LP_AUD = new Feature("LP_AUD", 33, false);
        SC_RM = new Feature("SC_RM", 34, true);
        FAST_VOICE_PICTURE = new Feature("FAST_VOICE_PICTURE", 35, true);
        KP_OUT = new Feature("KP_OUT", 36, false);
        GRC_VC = new Feature("GRC_VC", 37, false);
        NON_MCKENZIAN = new Feature("NON_MCKENZIAN", 38, false);
        LV_SHOW = new Feature("LV_SHOW", 39, true);
        ANS_JS = new Feature("ANS_JS", 40, true);
        ANS_JSE = new Feature("ANS_JSE", 41, true);
        WK_CH = new Feature("WK_CH", 42, true);
        OHD_MAS = new Feature("OHD_MAS", 43, false);
        I_TORE_DOWN_THIS_APK_AND_ALL_I_GOT_WAS_THIS_STUPID_LAB = new Feature("I_TORE_DOWN_THIS_APK_AND_ALL_I_GOT_WAS_THIS_STUPID_LAB", 44, false);
        VS = new Feature("VS", 45, true);
        VS_MANIA = new Feature("VS_MANIA", 46, false);
        CNS = new Feature("CNS", 47, false);
        IGY_RCRD = new Feature("IGY_RCRD", 48, false);
        SP_AN = new Feature("SP_AN", 49, true);
        VM_MV = new Feature("VM_MV", 50, true);
        HF = new Feature("HF", 51, false);
        SSTELE = new Feature("SSTELE", 52, false);
        CVS = new Feature("CVS", 53, false);
        C_W_PW_INPUT = new Feature("C_W_PW_INPUT", 54, false);
        LC_PH = new Feature("LC_PH", 55, false);
        ATC_OK = new Feature("ATC_OK", 56, false);
        GDT_HW = new Feature("GDT_HW", 57, true);
        SV2 = new Feature("SV2", 58, true);
        PZ = new Feature("PZ", 59, false);
        Feature[] arrayOfFeature = new Feature[60];
        arrayOfFeature[0] = GCAM;
        arrayOfFeature[1] = MMNT;
        arrayOfFeature[2] = HO_LOG_VERBOSE;
        arrayOfFeature[3] = HO_AYE;
        arrayOfFeature[4] = HO_SHOUT_OUT;
        arrayOfFeature[5] = SAVE_AUDIO;
        arrayOfFeature[6] = LOG_POS_HOTWORD_REC;
        arrayOfFeature[7] = LOG_NEG_HOTWORD_REC;
        arrayOfFeature[8] = BLUETOOTH_HEADSET;
        arrayOfFeature[9] = DEBUG_LAUNCHER;
        arrayOfFeature[10] = SEARCH_DEV_SERVER;
        arrayOfFeature[11] = SEARCH_TEST_SERVER;
        arrayOfFeature[12] = PRODUCTION_SERVERS;
        arrayOfFeature[13] = STAGING_SERVERS;
        arrayOfFeature[14] = QA_SERVERS;
        arrayOfFeature[15] = AUTOPUSH_SERVERS;
        arrayOfFeature[16] = DEV_SERVERS;
        arrayOfFeature[17] = SERVER_COMPONENT;
        arrayOfFeature[18] = GPS_DEBUG_CARD;
        arrayOfFeature[19] = GPS_IN_BACKGROUND;
        arrayOfFeature[20] = GPS_ENABLE_LOCAL;
        arrayOfFeature[21] = GPS_ENABLE_REMOTE;
        arrayOfFeature[22] = NV_TRST;
        arrayOfFeature[23] = CALL_NOISE_CANCEL;
        arrayOfFeature[24] = NATIVE_APP_VOICE;
        arrayOfFeature[25] = MSG_GW;
        arrayOfFeature[26] = WEB_BROWSING;
        arrayOfFeature[27] = DING_ON_LOAD;
        arrayOfFeature[28] = WINK;
        arrayOfFeature[29] = SPECIAL_GWS_SERVER;
        arrayOfFeature[30] = USE_SAX_PARSER;
        arrayOfFeature[31] = PHONE_AEC_LOG;
        arrayOfFeature[32] = PEOPLE_GRID;
        arrayOfFeature[33] = LP_AUD;
        arrayOfFeature[34] = SC_RM;
        arrayOfFeature[35] = FAST_VOICE_PICTURE;
        arrayOfFeature[36] = KP_OUT;
        arrayOfFeature[37] = GRC_VC;
        arrayOfFeature[38] = NON_MCKENZIAN;
        arrayOfFeature[39] = LV_SHOW;
        arrayOfFeature[40] = ANS_JS;
        arrayOfFeature[41] = ANS_JSE;
        arrayOfFeature[42] = WK_CH;
        arrayOfFeature[43] = OHD_MAS;
        arrayOfFeature[44] = I_TORE_DOWN_THIS_APK_AND_ALL_I_GOT_WAS_THIS_STUPID_LAB;
        arrayOfFeature[45] = VS;
        arrayOfFeature[46] = VS_MANIA;
        arrayOfFeature[47] = CNS;
        arrayOfFeature[48] = IGY_RCRD;
        arrayOfFeature[49] = SP_AN;
        arrayOfFeature[50] = VM_MV;
        arrayOfFeature[51] = HF;
        arrayOfFeature[52] = SSTELE;
        arrayOfFeature[53] = CVS;
        arrayOfFeature[54] = C_W_PW_INPUT;
        arrayOfFeature[55] = LC_PH;
        arrayOfFeature[56] = ATC_OK;
        arrayOfFeature[57] = GDT_HW;
        arrayOfFeature[58] = SV2;
        arrayOfFeature[59] = PZ;
        $VALUES = arrayOfFeature;
        return;
      }
    }

    private Feature(String paramString)
    {
      this.defaultValue = paramString;
      this.propertyKey = ("persist.lab." + toString().toLowerCase(Locale.US));
      this.isSetByTest = false;
      this.valueForTest = paramString;
    }

    private Feature(boolean paramBoolean)
    {
      this(Boolean.toString(paramBoolean));
    }

    private String getPropertyKey()
    {
      return this.propertyKey;
    }

    private String getValueForTest()
    {
      return this.valueForTest;
    }

    private boolean getValueForTestAsBoolean()
    {
      return Boolean.parseBoolean(this.valueForTest);
    }

    private boolean isSetByTest()
    {
      return this.isSetByTest;
    }

    private void setTestValue(String paramString)
    {
      this.isSetByTest = true;
      this.valueForTest = paramString;
    }

    public String getDefaultValue()
    {
      return this.defaultValue;
    }

    public boolean getDefaultValueAsBoolean()
    {
      return Boolean.parseBoolean(this.defaultValue);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Labs
 * JD-Core Version:    0.6.2
 */