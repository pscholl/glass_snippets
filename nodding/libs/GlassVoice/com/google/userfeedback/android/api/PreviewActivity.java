package com.google.userfeedback.android.api;

import android.app.Activity;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.ListView;

public class PreviewActivity extends ListActivity
{
  private UserFeedbackReportAdapter mAdapter;
  private Button mGoBack;
  private Button mSubmitFeedback;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.gf_preview_activity);
    UiConfigurationOptions localUiConfigurationOptions = UserFeedback.userFeedback().getSpec().getUiConfigurationOptions();
    if ((localUiConfigurationOptions != null) && (localUiConfigurationOptions.getBackgroundColor() != 0))
      getWindow().getDecorView().setBackgroundColor(getResources().getColor(localUiConfigurationOptions.getBackgroundColor()));
    this.mSubmitFeedback = ((Button)findViewById(R.id.gf_send_from_preview));
    this.mSubmitFeedback.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        UserFeedback localUserFeedback = UserFeedback.userFeedback();
        Dialog localDialog = localUserFeedback.createDialog(jdField_this, localUserFeedback.shouldIncludeScreenshot(), localUserFeedback.shouldIncludeSystemLogs(), localUserFeedback.getFeedbackText());
        if (localDialog == null)
        {
          localUserFeedback.submitFeedback(localUserFeedback.shouldIncludeScreenshot(), localUserFeedback.shouldIncludeSystemLogs(), localUserFeedback.getFeedbackText());
          Intent localIntent = new Intent();
          PreviewActivity.this.setResult(-1, localIntent);
          PreviewActivity.this.finish();
          return;
        }
        localDialog.show();
      }
    });
    this.mGoBack = ((Button)findViewById(R.id.gf_back));
    this.mGoBack.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PreviewActivity.this.setResult(0);
        PreviewActivity.this.finish();
      }
    });
    UserFeedback localUserFeedback = UserFeedback.userFeedback();
    if (localUserFeedback == null)
    {
      finish();
      return;
    }
    UserFeedbackReport localUserFeedbackReport = localUserFeedback.getReport();
    if (localUserFeedbackReport == null)
    {
      finish();
      return;
    }
    try
    {
      this.mAdapter = new UserFeedbackReportAdapter(this, localUserFeedbackReport);
      setListAdapter(this.mAdapter);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.d("GFEEDBACK", "failed to read in report fields", localNoSuchFieldException);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    UserFeedback.flushBitmapsOnDestroy(this);
  }

  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    this.mAdapter.onListItemClick(paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.PreviewActivity
 * JD-Core Version:    0.6.2
 */