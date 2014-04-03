package com.google.userfeedback.android.api;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import java.util.concurrent.ExecutionException;

public class UserFeedback
{
  private static boolean mServiceToastShown;
  private static UserFeedback sUserFeedback;
  private boolean isSilentReport;
  private String mFeedbacktext;
  private boolean mIncludeScreenshot;
  private boolean mIncludeSystemLogs;
  private UserFeedbackReport mReport;
  public UserFeedbackReportBuilder mReportBuilder;
  private AsyncTask<Void, Void, Void> mReportBuilderTask;
  private UserFeedbackSpec mSpec;

  public UserFeedback()
  {
    sUserFeedback = this;
    mServiceToastShown = false;
    this.isSilentReport = false;
  }

  private AlertDialog buildDialog(final Activity paramActivity, final boolean paramBoolean1, final boolean paramBoolean2, final String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    localBuilder.setMessage(paramString2).setCancelable(false).setPositiveButton(paramActivity.getString(R.string.gf_yes), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        UserFeedback.this.submitFeedback(paramBoolean1, paramBoolean2, paramString1);
        paramActivity.setResult(-1);
        paramActivity.finish();
      }
    }).setNegativeButton(paramActivity.getString(R.string.gf_no), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    });
    return localBuilder.create();
  }

  private void configureSendFeedback(UserFeedbackSpec paramUserFeedbackSpec, String paramString)
  {
    this.mSpec = UserFeedbackSpec.defensiveCopyFrom(paramUserFeedbackSpec);
    FeedbackConnectivityReceiver.setEnabled(paramUserFeedbackSpec.getContext(), true);
    buildSubmitReport(paramString);
  }

  protected static void flushBitmapsOnDestroy(Activity paramActivity)
  {
    nullBitmapsRecursively(paramActivity.getWindow().peekDecorView());
  }

  protected static boolean isServiceToastShown()
  {
    return mServiceToastShown;
  }

  private static void nullBitmapsRecursively(View paramView)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      for (int i = 0; i < localViewGroup.getChildCount(); i++)
        nullBitmapsRecursively(localViewGroup.getChildAt(i));
    }
    if ((paramView instanceof ImageView))
      ((ImageView)paramView).setImageDrawable(null);
  }

  protected static void serviceToastShown()
  {
    mServiceToastShown = true;
  }

  protected static UserFeedback userFeedback()
  {
    return sUserFeedback;
  }

  protected void blockOnReportConstruction()
  {
    try
    {
      this.mReportBuilderTask.get();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.d("GFEEDBACK", localInterruptedException.getMessage());
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      Log.d("GFEEDBACK", localExecutionException.getMessage());
    }
  }

  protected void buildReport()
  {
    this.mReportBuilder = new UserFeedbackReportBuilder(this.mSpec);
    this.mReport = new UserFeedbackReport();
    this.mReportBuilderTask = this.mReportBuilder.buildReport(this.mReport);
  }

  protected void buildSubmitReport(final String paramString)
  {
    serviceToastShown();
    this.mReportBuilder = new UserFeedbackReportBuilder(this.mSpec);
    this.mReport = new UserFeedbackReport();
    this.mReportBuilder.buildReportWithListener(this.mReport, new UserFeedbackReportBuilder.BuilderListener()
    {
      public void onComplete()
      {
        UserFeedback.this.submitFeedback(false, false, paramString);
      }
    });
  }

  protected void configureFeedback(UserFeedbackSpec paramUserFeedbackSpec)
  {
    this.mSpec = UserFeedbackSpec.defensiveCopyFrom(paramUserFeedbackSpec);
    FeedbackConnectivityReceiver.setEnabled(paramUserFeedbackSpec.getContext(), true);
    buildReport();
  }

  protected Dialog createDialog(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    if (paramString.trim().length() == 0)
    {
      if (this.mSpec.shouldShowPopupForEmptyDescription())
        return buildDialog(paramActivity, paramBoolean1, paramBoolean2, paramString, paramActivity.getString(R.string.gf_should_submit_on_empty_description));
    }
    else if ((getReport().chosenAccount == "") && (this.mSpec.shouldShowPopupForAnonymousSubmission()))
      return buildDialog(paramActivity, paramBoolean1, paramBoolean2, paramString, paramActivity.getString(R.string.gf_should_submit_anonymously));
    return null;
  }

  protected String getFeedbackText()
  {
    return this.mFeedbacktext;
  }

  protected UserFeedbackReport getReport()
  {
    return this.mReport;
  }

  public UserFeedbackSpec getSpec()
  {
    return this.mSpec;
  }

  protected boolean isReportReady()
  {
    if (this.isSilentReport);
    while (this.mReportBuilderTask.getStatus() == AsyncTask.Status.FINISHED)
      return true;
    return false;
  }

  protected void setFeedbackText(String paramString)
  {
    this.mFeedbacktext = paramString;
    if (isReportReady());
    try
    {
      this.mReport.description = paramString;
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      Log.e("GFEEDBACK", "Race condition made report description to throw an NPE");
    }
  }

  protected void setIncludeScreenshot(boolean paramBoolean)
  {
    this.mIncludeScreenshot = paramBoolean;
  }

  protected void setIncludeSystemLogs(boolean paramBoolean)
  {
    this.mIncludeSystemLogs = paramBoolean;
  }

  protected void setUserInputParams(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    setFeedbackText(paramString);
    setIncludeScreenshot(paramBoolean1);
    setIncludeSystemLogs(paramBoolean2);
  }

  protected boolean shouldIncludeScreenshot()
  {
    return this.mIncludeScreenshot;
  }

  protected boolean shouldIncludeSystemLogs()
  {
    return this.mIncludeSystemLogs;
  }

  public void silentSubmitFeedback(UserFeedbackSpec paramUserFeedbackSpec, String paramString)
  {
    this.isSilentReport = true;
    configureSendFeedback(paramUserFeedbackSpec, paramString);
  }

  public void startFeedback(UserFeedbackSpec paramUserFeedbackSpec)
  {
    startFeedback(paramUserFeedbackSpec, 0);
  }

  public void startFeedback(UserFeedbackSpec paramUserFeedbackSpec, int paramInt)
  {
    configureFeedback(paramUserFeedbackSpec);
    Intent localIntent = new Intent(paramUserFeedbackSpec.getActivity(), UserFeedbackActivity.class);
    paramUserFeedbackSpec.getActivity().startActivityForResult(localIntent, paramInt);
  }

  protected void submitFeedback(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    setUserInputParams(paramBoolean1, paramBoolean2, paramString);
    this.mReport.setReadyToSubmit(true);
    new AsyncTask()
    {
      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        if (!UserFeedback.this.isReportReady())
          UserFeedback.this.blockOnReportConstruction();
        return null;
      }

      protected void onPostExecute(Void paramAnonymousVoid)
      {
        Context localContext = UserFeedback.this.mSpec.getContext();
        localContext.startService(new Intent(localContext, SendUserFeedbackService.class));
      }
    }
    .execute(new Void[0]);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedback
 * JD-Core Version:    0.6.2
 */