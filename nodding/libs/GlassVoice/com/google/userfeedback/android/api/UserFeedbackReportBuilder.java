package com.google.userfeedback.android.api;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.x.google.common.io.protocol.ProtoBuf;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;

public class UserFeedbackReportBuilder
{
  private static final Object GOOGLE_ACCOUNT = "com.google";
  private static final String REPORT_FILE_EXTENSION = ".proto.gz";
  private static final String TMP_FILE_EXTENSION = ".tmp";
  private final UserFeedbackSpec mSpec;

  protected UserFeedbackReportBuilder(UserFeedbackSpec paramUserFeedbackSpec)
  {
    this.mSpec = paramUserFeedbackSpec;
  }

  // ERROR //
  private String collectLogcatOutput(List<String> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 65	java/io/BufferedReader
    //   5: dup
    //   6: new 67	java/io/InputStreamReader
    //   9: dup
    //   10: invokestatic 73	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   13: aload_1
    //   14: iconst_0
    //   15: anewarray 75	java/lang/String
    //   18: invokeinterface 81 2 0
    //   23: checkcast 83	[Ljava/lang/String;
    //   26: invokevirtual 87	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   29: invokevirtual 93	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   32: invokespecial 96	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   35: invokespecial 99	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   38: astore_3
    //   39: new 101	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   46: astore 4
    //   48: ldc 104
    //   50: invokestatic 110	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   53: astore 16
    //   55: aload_3
    //   56: invokevirtual 114	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   59: astore 17
    //   61: aload 17
    //   63: ifnull +48 -> 111
    //   66: aload 4
    //   68: aload 17
    //   70: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: pop
    //   74: aload 4
    //   76: aload 16
    //   78: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: goto -27 -> 55
    //   85: astore 12
    //   87: aload_3
    //   88: astore_2
    //   89: ldc 120
    //   91: aload 12
    //   93: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
    //   96: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   99: pop
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 132	java/io/BufferedReader:close	()V
    //   108: ldc 134
    //   110: areturn
    //   111: aload 4
    //   113: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: astore 20
    //   118: aload_3
    //   119: ifnull +7 -> 126
    //   122: aload_3
    //   123: invokevirtual 132	java/io/BufferedReader:close	()V
    //   126: aload 20
    //   128: areturn
    //   129: astore 21
    //   131: ldc 120
    //   133: aload 21
    //   135: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
    //   138: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   141: pop
    //   142: goto -16 -> 126
    //   145: astore 14
    //   147: ldc 120
    //   149: aload 14
    //   151: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
    //   154: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: goto -50 -> 108
    //   161: astore 5
    //   163: ldc 120
    //   165: aload 5
    //   167: invokevirtual 138	java/lang/OutOfMemoryError:getMessage	()Ljava/lang/String;
    //   170: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   173: pop
    //   174: aload_2
    //   175: ifnull -67 -> 108
    //   178: aload_2
    //   179: invokevirtual 132	java/io/BufferedReader:close	()V
    //   182: goto -74 -> 108
    //   185: astore 10
    //   187: ldc 120
    //   189: aload 10
    //   191: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
    //   194: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   197: pop
    //   198: goto -90 -> 108
    //   201: astore 6
    //   203: aload_2
    //   204: ifnull +7 -> 211
    //   207: aload_2
    //   208: invokevirtual 132	java/io/BufferedReader:close	()V
    //   211: aload 6
    //   213: athrow
    //   214: astore 7
    //   216: ldc 120
    //   218: aload 7
    //   220: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
    //   223: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   226: pop
    //   227: goto -16 -> 211
    //   230: astore 6
    //   232: aload_3
    //   233: astore_2
    //   234: goto -31 -> 203
    //   237: astore 5
    //   239: aload_3
    //   240: astore_2
    //   241: goto -78 -> 163
    //   244: astore 12
    //   246: aconst_null
    //   247: astore_2
    //   248: goto -159 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   39	55	85	java/io/IOException
    //   55	61	85	java/io/IOException
    //   66	82	85	java/io/IOException
    //   111	118	85	java/io/IOException
    //   122	126	129	java/io/IOException
    //   104	108	145	java/io/IOException
    //   2	39	161	java/lang/OutOfMemoryError
    //   178	182	185	java/io/IOException
    //   2	39	201	finally
    //   89	100	201	finally
    //   163	174	201	finally
    //   207	211	214	java/io/IOException
    //   39	55	230	finally
    //   55	61	230	finally
    //   66	82	230	finally
    //   111	118	230	finally
    //   39	55	237	java/lang/OutOfMemoryError
    //   55	61	237	java/lang/OutOfMemoryError
    //   66	82	237	java/lang/OutOfMemoryError
    //   111	118	237	java/lang/OutOfMemoryError
    //   2	39	244	java/io/IOException
  }

  private String gatherLogs(String paramString)
  {
    ArrayList localArrayList = new ArrayList(Arrays.asList(new String[] { "logcat", "-v", "time", "-d" }));
    if (paramString != null)
      localArrayList.add(paramString);
    return collectLogcatOutput(localArrayList);
  }

  private File getFilesDataDir()
    throws IOException
  {
    File localFile = new File(this.mSpec.getContext().getFilesDir(), "reports");
    if ((!localFile.exists()) && (!localFile.mkdirs()))
      throw new IOException("Unable to create directory structure for base directory provided");
    return localFile;
  }

  private byte[] getScreenshotBytes(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 70, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  private void populateBuildData(UserFeedbackReport paramUserFeedbackReport)
  {
    paramUserFeedbackReport.device = Build.DEVICE;
    paramUserFeedbackReport.buildId = Build.DISPLAY;
    paramUserFeedbackReport.buildType = Build.TYPE;
    paramUserFeedbackReport.model = Build.MODEL;
    paramUserFeedbackReport.board = Build.BOARD;
    paramUserFeedbackReport.brand = Build.BRAND;
    paramUserFeedbackReport.codename = Build.VERSION.CODENAME;
    paramUserFeedbackReport.incremental = Build.VERSION.INCREMENTAL;
    paramUserFeedbackReport.release = Build.VERSION.RELEASE;
    paramUserFeedbackReport.product = Build.PRODUCT;
    try
    {
      paramUserFeedbackReport.sdkInt = Integer.parseInt(Build.VERSION.SDK);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      paramUserFeedbackReport.sdkInt = -1;
    }
  }

  private void populateCommonData(UserFeedbackReport paramUserFeedbackReport)
  {
    paramUserFeedbackReport.description = UserFeedback.userFeedback().getFeedbackText();
    paramUserFeedbackReport.uiLanguage = Locale.getDefault().toString();
    if (UserFeedback.userFeedback().getSpec().getProductSpecificBinaryData().size() > 0)
      paramUserFeedbackReport.productSpecificBinaryData = UserFeedback.userFeedback().getSpec().getProductSpecificBinaryData();
  }

  private void populatePackageData(UserFeedbackReport paramUserFeedbackReport)
  {
    PackageManager localPackageManager = this.mSpec.getContext().getPackageManager();
    paramUserFeedbackReport.packageName = this.mSpec.getContext().getPackageName();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramUserFeedbackReport.packageName, 0);
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramUserFeedbackReport.packageName, 0);
      paramUserFeedbackReport.processName = localApplicationInfo.processName;
      paramUserFeedbackReport.packageVersion = localPackageInfo.versionCode;
      paramUserFeedbackReport.packageVersionName = localPackageInfo.versionName;
      paramUserFeedbackReport.installerPackageName = localPackageManager.getInstallerPackageName(paramUserFeedbackReport.packageName);
      label86: paramUserFeedbackReport.processName = UserFeedback.userFeedback().getSpec().getActivity().getPackageName();
      paramUserFeedbackReport.isSystemApp = false;
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label86;
    }
  }

  private void populateRunningApps(UserFeedbackReport paramUserFeedbackReport)
  {
    Iterator localIterator = ((ActivityManager)this.mSpec.getContext().getSystemService("activity")).getRunningAppProcesses().iterator();
    while (localIterator.hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      paramUserFeedbackReport.runningApplications.add(localRunningAppProcessInfo.processName);
    }
  }

  private void populateSystemData(UserFeedbackReport paramUserFeedbackReport)
  {
    paramUserFeedbackReport.timestamp = System.currentTimeMillis();
    paramUserFeedbackReport.systemLog = gatherLogs(this.mSpec.getLogFilter());
    if (((paramUserFeedbackReport.systemLog == null) || (paramUserFeedbackReport.systemLog.equals(""))) && (this.mSpec.getLogs() != null))
      paramUserFeedbackReport.systemLog = this.mSpec.getLogs();
    paramUserFeedbackReport.crashData = this.mSpec.getCrashData();
  }

  private void populateTelephonyData(UserFeedbackReport paramUserFeedbackReport)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)this.mSpec.getContext().getSystemService("phone");
    paramUserFeedbackReport.phoneType = localTelephonyManager.getPhoneType();
    paramUserFeedbackReport.networkType = localTelephonyManager.getNetworkType();
    paramUserFeedbackReport.networkName = localTelephonyManager.getNetworkOperatorName();
  }

  private void populateUserInitiatedFeedbackData(UserFeedbackReport paramUserFeedbackReport)
  {
    if ((this.mSpec.isScreenshotEnabled()) && (this.mSpec.getCurrentScreenshot() != null))
    {
      Bitmap localBitmap = this.mSpec.getCurrentScreenshot();
      if (!localBitmap.isRecycled())
      {
        paramUserFeedbackReport.screenshot = getScreenshotBytes(localBitmap);
        paramUserFeedbackReport.screenshotWidth = localBitmap.getWidth();
        paramUserFeedbackReport.screenshotHeight = localBitmap.getHeight();
      }
    }
    paramUserFeedbackReport.accounts = new ArrayList();
    try
    {
      for (Account localAccount : AccountManager.get(this.mSpec.getContext()).getAccounts())
        if (localAccount.type.equals(GOOGLE_ACCOUNT))
          paramUserFeedbackReport.accounts.add(localAccount.name);
    }
    catch (VerifyError localVerifyError)
    {
      paramUserFeedbackReport.numGoogleAccounts = paramUserFeedbackReport.accounts.size();
      paramUserFeedbackReport.categoryTag = this.mSpec.getCategoryTag();
      paramUserFeedbackReport.bucket = this.mSpec.getBucket();
      return;
    }
    catch (Exception localException)
    {
      label149: break label149;
    }
  }

  private ProtoBuf serializeReport(UserFeedbackReport paramUserFeedbackReport)
  {
    return new UserFeedbackSerializer(paramUserFeedbackReport).serialize();
  }

  private AsyncTask<Void, Void, Void> startBuildingReport(final UserFeedbackReport paramUserFeedbackReport, final BuilderListener paramBuilderListener)
  {
    return new AsyncTask()
    {
      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        this.this$0.populateRunningApps(paramUserFeedbackReport);
        this.this$0.populateBuildData(paramUserFeedbackReport);
        this.this$0.populateCommonData(paramUserFeedbackReport);
        this.this$0.populateTelephonyData(paramUserFeedbackReport);
        this.this$0.populateSystemData(paramUserFeedbackReport);
        this.this$0.populatePackageData(paramUserFeedbackReport);
        this.this$0.populateUserInitiatedFeedbackData(paramUserFeedbackReport);
        if (paramBuilderListener != null)
          paramBuilderListener.onComplete();
        return null;
      }
    }
    .execute(new Void[0]);
  }

  public AsyncTask<Void, Void, Void> buildReport(UserFeedbackReport paramUserFeedbackReport)
  {
    return startBuildingReport(paramUserFeedbackReport, null);
  }

  public void buildReportWithListener(UserFeedbackReport paramUserFeedbackReport, BuilderListener paramBuilderListener)
  {
    startBuildingReport(paramUserFeedbackReport, paramBuilderListener);
  }

  protected File getFormattedFeedbackReport(UserFeedbackReport paramUserFeedbackReport)
    throws IOException
  {
    ProtoBuf localProtoBuf = serializeReport(paramUserFeedbackReport);
    File localFile1 = getFilesDataDir();
    String str = System.currentTimeMillis() + "." + localProtoBuf.hashCode();
    File localFile2 = new File(localFile1, str + ".tmp");
    File localFile3 = new File(localFile1, str + ".proto.gz");
    try
    {
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(new FileOutputStream(localFile2));
      localProtoBuf.outputTo(localGZIPOutputStream);
      localGZIPOutputStream.close();
      if (!localFile2.renameTo(localFile3))
        throw new IOException("Failed to rename temporary file");
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      throw localIOException;
    }
    finally
    {
      localFile2.delete();
    }
    localFile2.delete();
    return localFile3;
  }

  public static abstract interface BuilderListener
  {
    public abstract void onComplete();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackReportBuilder
 * JD-Core Version:    0.6.2
 */