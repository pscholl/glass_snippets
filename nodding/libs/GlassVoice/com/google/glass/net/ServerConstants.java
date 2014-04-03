package com.google.glass.net;

import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public class ServerConstants
{
  private static final String AUTOPUSH_DOMAIN = "glass.sandbox.google.com";
  private static final String AUTOPUSH_PATH_COMPONENT = "autopush";
  private static final String CHECK_SETUP_ACCESS_SUFFIX = "_/checksetupaccess";
  private static final String CLIENT_PROXY_PATH_COMPONENT = "cp";
  private static final String DEV_DOMAIN = "glass.sandbox.google.com";
  private static final String DEV_PATH_COMPONENT = "dev";
  private static final String GLASSWARE_PAGE_SUFFIX = "glassware";
  public static final String HELP_LINK = "http://www.google.com/glass/help";
  private static final String MY_GLASS_PAGE_SUFFIX = "myglass";
  private static final String PROD_DOMAIN = "clients2.google.com";
  private static final String PROD_FRONTEND_PREFIX = "https://glass.google.com/";
  private static final String PROD_PATH_COMPONENT = "glass";
  private static final String QA_DOMAIN = "glass.sandbox.google.com";
  private static final String QA_FRONTEND_PREFIX = "https://glass.sandbox.google.com/qa/fe/";
  private static final String QA_PATH_COMPONENT = "qa";
  private static final String SETUP_PAGE_SUFFIX = "ml2";
  private static final String STAGING_DOMAIN = "glass.sandbox.google.com";
  private static final String STAGING_FRONTEND_PREFIX = "https://glass.sandbox.google.com/staging/fe/";
  private static final String STAGING_PATH_COMPONENT = "staging";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static String getBatchUrl()
  {
    return makeClientProxyUrl("b");
  }

  public static String getCheckSetupAccessUrl()
  {
    return getFrontendPrefix() + "_/checksetupaccess";
  }

  private static String getFrontendPrefix()
  {
    return "https://glass.google.com/";
  }

  public static String getGlasswareUrl()
  {
    return getFrontendPrefix() + "glassware";
  }

  public static String getMyGlassUrl()
  {
    return getFrontendPrefix() + "myglass";
  }

  public static String getResumableUploadUrl()
  {
    return makeUrl("uploads");
  }

  public static String getRootUrl()
  {
    String str1 = Labs.getValue(Labs.Feature.SERVER_COMPONENT);
    String str2;
    String str3;
    if (!TextUtils.isEmpty(str1))
    {
      str2 = "glass.sandbox.google.com";
      str3 = str1;
    }
    while (true)
    {
      String str4 = "https://" + str2 + "/" + str3;
      logger.d(str4, new Object[0]);
      return str4;
      if (Labs.isEnabled(Labs.Feature.PRODUCTION_SERVERS))
      {
        str2 = "clients2.google.com";
        str3 = "glass";
      }
      else if (Labs.isEnabled(Labs.Feature.STAGING_SERVERS))
      {
        str2 = "glass.sandbox.google.com";
        str3 = "staging";
      }
      else if (Labs.isEnabled(Labs.Feature.QA_SERVERS))
      {
        str2 = "glass.sandbox.google.com";
        str3 = "qa";
      }
      else if (Labs.isEnabled(Labs.Feature.AUTOPUSH_SERVERS))
      {
        str2 = "glass.sandbox.google.com";
        str3 = "autopush";
      }
      else if (Labs.isEnabled(Labs.Feature.DEV_SERVERS))
      {
        str2 = "glass.sandbox.google.com";
        str3 = "dev";
      }
      else
      {
        str2 = "clients2.google.com";
        str3 = "glass";
      }
    }
  }

  public static String getSetupPageUrl()
  {
    return getFrontendPrefix() + "ml2";
  }

  @VisibleForTesting
  static String makeClientProxyUrl(String paramString)
  {
    return getRootUrl() + "/" + "cp" + "/" + paramString;
  }

  @VisibleForTesting
  static String makeUrl(String paramString)
  {
    return getRootUrl() + "/" + paramString;
  }

  public static enum Action
  {
    public final String path;

    static
    {
      GET_SESSION_ID = new Action("GET_SESSION_ID", 1, "gsi");
      REPORT_USER_EVENT = new Action("REPORT_USER_EVENT", 2, "rue");
      GCM_REGISTRATION = new Action("GCM_REGISTRATION", 3, "gcm");
      REPORT_LOCATION = new Action("REPORT_LOCATION", 4, "loc");
      ENTITY_SYNC = new Action("ENTITY_SYNC", 5, "es");
      GLASSWARE_SYNC = new Action("GLASSWARE_SYNC", 6, "gs");
      TIMELINE_SYNC = new Action("TIMELINE_SYNC", 7, "sync");
      REMOTE_WIPE_CONFIRMATION = new Action("REMOTE_WIPE_CONFIRMATION", 8, "rwc");
      DOWNLOAD_IMAGE = new Action("DOWNLOAD_IMAGE", 9, "di");
      TIMEZONE = new Action("TIMEZONE", 10, "tz");
      ATTACHMENT_GET = new Action("ATTACHMENT_GET", 11, "ag");
      ATTACHMENT_INSERT = new Action("ATTACHMENT_INSERT", 12, "ai");
      RESOURCE = new Action("RESOURCE", 13, "res");
      LOCKSCREEN_RECOVERY = new Action("LOCKSCREEN_RECOVERY", 14, "lsr");
      DEVICE_CHECKIN = new Action("DEVICE_CHECKIN", 15, "dc");
      Action[] arrayOfAction = new Action[16];
      arrayOfAction[0] = SETUP_USER_ACCOUNT;
      arrayOfAction[1] = GET_SESSION_ID;
      arrayOfAction[2] = REPORT_USER_EVENT;
      arrayOfAction[3] = GCM_REGISTRATION;
      arrayOfAction[4] = REPORT_LOCATION;
      arrayOfAction[5] = ENTITY_SYNC;
      arrayOfAction[6] = GLASSWARE_SYNC;
      arrayOfAction[7] = TIMELINE_SYNC;
      arrayOfAction[8] = REMOTE_WIPE_CONFIRMATION;
      arrayOfAction[9] = DOWNLOAD_IMAGE;
      arrayOfAction[10] = TIMEZONE;
      arrayOfAction[11] = ATTACHMENT_GET;
      arrayOfAction[12] = ATTACHMENT_INSERT;
      arrayOfAction[13] = RESOURCE;
      arrayOfAction[14] = LOCKSCREEN_RECOVERY;
      arrayOfAction[15] = DEVICE_CHECKIN;
    }

    private Action(String paramString)
    {
      this.path = paramString;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ServerConstants
 * JD-Core Version:    0.6.2
 */