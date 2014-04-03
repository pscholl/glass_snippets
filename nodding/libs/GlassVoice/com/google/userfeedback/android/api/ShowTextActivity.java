package com.google.userfeedback.android.api;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class ShowTextActivity extends Activity
{
  private static final String TAG = "ShowTextActivity";

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.gf_show_text_activity);
    String str = getIntent().getStringExtra("feedback.FIELD_NAME");
    UserFeedbackReport localUserFeedbackReport = UserFeedback.userFeedback().getReport();
    if (localUserFeedbackReport == null)
    {
      finish();
      return;
    }
    if ("systemLog".equals(str))
    {
      setTitle(R.string.gf_error_report_system_log);
      setText(localUserFeedbackReport.systemLog);
      return;
    }
    if ("serviceDetails".equals(str))
    {
      setTitle(R.string.gf_error_report_running_service_details);
      return;
    }
    if ("stackTrace".equals(str))
    {
      setTitle(R.string.gf_stack_trace);
      setText(localUserFeedbackReport.crashData.stackTrace);
      return;
    }
    throw new IllegalArgumentException("ShowTextActivity unknown EXTRA_FIELD_NAME");
  }

  protected void setText(String paramString)
  {
    if (paramString == null)
    {
      findViewById(R.id.gf_text_view).setVisibility(8);
      findViewById(R.id.gf_empty_view).setVisibility(0);
      return;
    }
    ((TextView)findViewById(R.id.gf_text)).setText(paramString);
    findViewById(R.id.gf_empty_view).setVisibility(8);
    findViewById(R.id.gf_text_view).setVisibility(0);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.ShowTextActivity
 * JD-Core Version:    0.6.2
 */