package com.google.userfeedback.android.api;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class UserFeedbackReport
{
  public List<String> accounts;
  public String board;
  public String brand;
  public String bucket;
  public String buildId;
  public String buildType;
  public String categoryTag;
  public String chosenAccount;
  public String codename;
  public UserFeedbackCrashData crashData;
  public String description;
  public String device;
  public String incremental;
  public List<String> installedPackages = new ArrayList();
  public String installerPackageName;
  private boolean isSubmitted;
  public boolean isSystemApp;
  public String model;
  public String networkName;
  public int networkType;
  public int numGoogleAccounts;
  public String packageName;
  public int packageVersion;
  public String packageVersionName;
  public int phoneType;
  public String processName;
  public String product;
  public List<ProductSpecificBinaryDataHolder> productSpecificBinaryData = new LinkedList();
  private boolean readyToBeSubmitted;
  public String release;
  public List<String> runningApplications = new ArrayList();
  public byte[] screenshot;
  public int screenshotHeight;
  public int screenshotWidth;
  public int sdkInt;
  public String systemLog;
  public long timestamp;
  public String uiLanguage;

  UserFeedbackReport()
  {
    setSubmitted(false);
    setReadyToSubmit(false);
    this.crashData = null;
  }

  public void setReadyToSubmit(boolean paramBoolean)
  {
    try
    {
      this.readyToBeSubmitted = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSubmitted(boolean paramBoolean)
  {
    try
    {
      this.isSubmitted = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean shouldSubmitReport()
  {
    return (!this.isSubmitted) && (this.readyToBeSubmitted);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackReport
 * JD-Core Version:    0.6.2
 */