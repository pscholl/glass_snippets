package com.google.glass.logging;

import android.app.ApplicationErrorReport;
import android.app.ApplicationErrorReport.AnrInfo;
import android.app.ApplicationErrorReport.CrashInfo;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.userfeedback.android.api.UserFeedback;
import com.google.userfeedback.android.api.UserFeedbackCrashBuilder;
import com.google.userfeedback.android.api.UserFeedbackCrashData;
import com.google.userfeedback.android.api.UserFeedbackSpec;

public final class AppErrorReporterActivity extends GlassActivity
{
  private static final String ANR_CATEGORY_TAG = "com.google.glass.logging.ANR_REPORT";
  private static final int AUTO_FINISH_MS = 3000;
  private static final String CRASH_CATEGORY_TAG = "com.google.glass.logging.CRASH_REPORT";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  private static UserFeedbackCrashData getCrashData(ApplicationErrorReport.AnrInfo paramAnrInfo)
  {
    UserFeedbackCrashBuilder localUserFeedbackCrashBuilder = UserFeedbackCrashBuilder.newInstance().setExceptionClassName(paramAnrInfo.cause).setExceptionMessage(paramAnrInfo.info).setStackTrace("");
    if (TextUtils.isEmpty(paramAnrInfo.activity));
    for (String str = ""; ; str = paramAnrInfo.activity)
      return localUserFeedbackCrashBuilder.setThrowClassName(str).setThrowFileName("").setThrowLineNumber(0).setThrowMethodName("").build();
  }

  private static UserFeedbackCrashData getCrashData(ApplicationErrorReport.CrashInfo paramCrashInfo)
  {
    return UserFeedbackCrashBuilder.newInstance().setExceptionClassName(paramCrashInfo.exceptionClassName).setExceptionMessage(paramCrashInfo.exceptionMessage).setStackTrace(paramCrashInfo.stackTrace).setThrowClassName(paramCrashInfo.throwClassName).setThrowFileName(paramCrashInfo.throwFileName).setThrowLineNumber(paramCrashInfo.throwLineNumber).setThrowMethodName(paramCrashInfo.throwMethodName).build();
  }

  public FormattingLogger getLogger()
  {
    return logger;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ApplicationErrorReport localApplicationErrorReport = (ApplicationErrorReport)getIntent().getParcelableExtra("android.intent.extra.BUG_REPORT");
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(localApplicationErrorReport.type);
    localFormattingLogger1.w("Received error report: %d", arrayOfObject1);
    switch (localApplicationErrorReport.type)
    {
    default:
      FormattingLogger localFormattingLogger4 = logger;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(localApplicationErrorReport.type);
      localFormattingLogger4.w("Unhandled ApplicationError type: %s", arrayOfObject4);
      return;
    case 1:
      UserFeedbackSpec localUserFeedbackSpec2 = new UserFeedbackSpec(this, null, "com.google.glass.logging.CRASH_REPORT");
      localUserFeedbackSpec2.setCrashData(getCrashData(localApplicationErrorReport.crashInfo));
      new UserFeedback().silentSubmitFeedback(localUserFeedbackSpec2, localApplicationErrorReport.crashInfo.exceptionMessage);
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localApplicationErrorReport.crashInfo.stackTrace;
      localFormattingLogger3.w("Crash stack trace:\n%s", arrayOfObject3);
      return;
    case 2:
    }
    UserFeedbackSpec localUserFeedbackSpec1 = new UserFeedbackSpec(this, null, "com.google.glass.logging.ANR_REPORT");
    localUserFeedbackSpec1.setCrashData(getCrashData(localApplicationErrorReport.anrInfo));
    new UserFeedback().silentSubmitFeedback(localUserFeedbackSpec1, localApplicationErrorReport.anrInfo.cause);
    FormattingLogger localFormattingLogger2 = logger;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = localApplicationErrorReport.anrInfo.cause;
    localFormattingLogger2.w("ANR cause: %s", arrayOfObject2);
  }

  protected void onResume()
  {
    super.onResume();
    GlassApplication.from(this).getSoundManager().playSound(SoundManager.SoundId.ERROR);
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        AppErrorReporterActivity.this.finish();
      }
    }
    , 3000L);
  }

  protected int provideContentView()
  {
    return R.layout.feedback;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.AppErrorReporterActivity
 * JD-Core Version:    0.6.2
 */