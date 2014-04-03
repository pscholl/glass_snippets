package com.google.userfeedback.android.api;

import com.google.android.feedback.proto.MobileCommonMessageTypes;
import com.google.userfeedback.android.api.encode.Base64;
import com.x.google.common.io.protocol.ProtoBuf;
import java.util.Iterator;
import java.util.List;

public class UserFeedbackSerializer
{
  private UserFeedbackReport report;

  UserFeedbackSerializer(UserFeedbackReport paramUserFeedbackReport)
  {
    this.report = paramUserFeedbackReport;
  }

  private ProtoBuf serializeAndroidData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.MOBILE_DATA);
    localProtoBuf.setProtoBuf(1, serializeSystemData());
    localProtoBuf.setProtoBuf(2, serializePackageData());
    localProtoBuf.setProtoBuf(3, serializeBuildData());
    localProtoBuf.setProtoBuf(9, serializeUserInitiatedFeedbackData());
    if (this.report.crashData != null)
      localProtoBuf.setProtoBuf(4, serializeCrashData());
    return localProtoBuf;
  }

  private ProtoBuf serializeBuildData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.BUILD_DATA);
    localProtoBuf.setString(1, this.report.device);
    localProtoBuf.setString(2, this.report.buildId);
    localProtoBuf.setString(3, this.report.buildType);
    localProtoBuf.setString(4, this.report.model);
    localProtoBuf.setString(5, this.report.product);
    localProtoBuf.setString(7, this.report.release);
    localProtoBuf.setString(8, this.report.incremental);
    localProtoBuf.setString(9, this.report.codename);
    localProtoBuf.setString(10, this.report.board);
    localProtoBuf.setString(11, this.report.brand);
    localProtoBuf.setInt(6, this.report.sdkInt);
    return localProtoBuf;
  }

  private ProtoBuf serializeCommonData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.COMMON_DATA);
    localProtoBuf.setString(2, this.report.description);
    localProtoBuf.setString(6, this.report.uiLanguage);
    if (!"".equals(this.report.chosenAccount))
      localProtoBuf.setString(3, this.report.chosenAccount);
    return localProtoBuf;
  }

  private ProtoBuf serializeCrashData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.CRASH_DATA);
    localProtoBuf.setString(1, this.report.crashData.exceptionClassName);
    localProtoBuf.setString(3, this.report.crashData.throwFileName);
    localProtoBuf.setInt(4, this.report.crashData.throwLineNumber);
    localProtoBuf.setString(5, this.report.crashData.throwClassName);
    localProtoBuf.setString(6, this.report.crashData.throwMethodName);
    localProtoBuf.setString(7, this.report.crashData.stackTrace);
    if (this.report.crashData.exceptionMessage != null)
      localProtoBuf.setString(2, this.report.crashData.exceptionMessage);
    return localProtoBuf;
  }

  private ProtoBuf serializePackageData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.PACKAGE_DATA);
    localProtoBuf.setString(1, this.report.packageName);
    localProtoBuf.setString(2, this.report.installerPackageName);
    localProtoBuf.setString(3, this.report.processName);
    localProtoBuf.setInt(4, this.report.packageVersion);
    localProtoBuf.setString(5, this.report.packageVersionName);
    localProtoBuf.setBool(6, this.report.isSystemApp);
    return localProtoBuf;
  }

  private ProtoBuf serializeScreenshotData()
  {
    ProtoBuf localProtoBuf1 = new ProtoBuf(MobileCommonMessageTypes.IMAGE);
    localProtoBuf1.setString(1, "image/jpeg");
    localProtoBuf1.setString(2, Base64.encodeToString(this.report.screenshot, 0));
    ProtoBuf localProtoBuf2 = new ProtoBuf(MobileCommonMessageTypes.DIMENSIONS);
    localProtoBuf2.setFloat(2, this.report.screenshotHeight);
    localProtoBuf2.setFloat(1, this.report.screenshotWidth);
    localProtoBuf1.setProtoBuf(3, localProtoBuf2);
    return localProtoBuf1;
  }

  private ProtoBuf serializeSystemData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.SYSTEM_DATA);
    if (UserFeedback.userFeedback().shouldIncludeSystemLogs())
      localProtoBuf.setString(2, this.report.systemLog);
    localProtoBuf.setLong(1, this.report.timestamp);
    localProtoBuf.setProtoBuf(6, serializeTelephonyData());
    Iterator localIterator = this.report.runningApplications.iterator();
    while (localIterator.hasNext())
      localProtoBuf.addString(5, (String)localIterator.next());
    return localProtoBuf;
  }

  private ProtoBuf serializeTelephonyData()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.TELEPHONY_DATA);
    localProtoBuf.setInt(1, this.report.phoneType);
    localProtoBuf.setInt(3, this.report.networkType);
    localProtoBuf.setString(2, this.report.networkName);
    return localProtoBuf;
  }

  private ProtoBuf serializeUserFeedbackReport()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(MobileCommonMessageTypes.MOBILE_BUG_REPORT);
    localProtoBuf.setProtoBuf(1, serializeCommonData());
    localProtoBuf.setProtoBuf(2, serializeAndroidData());
    return localProtoBuf;
  }

  private ProtoBuf serializeUserInitiatedFeedbackData()
  {
    ProtoBuf localProtoBuf1 = new ProtoBuf(MobileCommonMessageTypes.USER_INITIATED_FEEDBACK_DATA);
    if ((UserFeedback.userFeedback().shouldIncludeScreenshot()) && (UserFeedback.userFeedback().getSpec().isScreenshotEnabled()) && (this.report.screenshot != null))
      localProtoBuf1.setProtoBuf(4, serializeScreenshotData());
    if (this.report.categoryTag != null)
      localProtoBuf1.setString(6, this.report.categoryTag);
    if (this.report.bucket != null)
      localProtoBuf1.setString(7, this.report.bucket);
    localProtoBuf1.setString(1, "" + this.report.numGoogleAccounts);
    Iterator localIterator = this.report.productSpecificBinaryData.iterator();
    while (localIterator.hasNext())
    {
      ProductSpecificBinaryDataHolder localProductSpecificBinaryDataHolder = (ProductSpecificBinaryDataHolder)localIterator.next();
      byte[] arrayOfByte = localProductSpecificBinaryDataHolder.getData();
      if (arrayOfByte != null)
      {
        ProtoBuf localProtoBuf2 = new ProtoBuf(MobileCommonMessageTypes.PRODUCT_SPECIFIC_BINARY_DATA);
        localProtoBuf2.setString(1, localProductSpecificBinaryDataHolder.getName());
        localProtoBuf2.setString(2, localProductSpecificBinaryDataHolder.getMimeType());
        localProtoBuf2.setBytes(3, arrayOfByte);
        localProtoBuf1.addProtoBuf(2, localProtoBuf2);
      }
    }
    return localProtoBuf1;
  }

  public ProtoBuf serialize()
  {
    return serializeUserFeedbackReport();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackSerializer
 * JD-Core Version:    0.6.2
 */