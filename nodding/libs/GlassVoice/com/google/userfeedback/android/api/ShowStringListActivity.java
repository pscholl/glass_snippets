package com.google.userfeedback.android.api;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import java.util.List;

public class ShowStringListActivity extends ListActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getIntent().getStringExtra("feedback.FIELD_NAME");
    UserFeedbackReport localUserFeedbackReport = UserFeedback.userFeedback().getReport();
    if (localUserFeedbackReport == null)
    {
      finish();
      return;
    }
    boolean bool = "runningApplications".equals(str);
    List localList = null;
    if (bool)
    {
      localList = localUserFeedbackReport.runningApplications;
      setTitle(R.string.gf_error_report_running_apps);
    }
    setListAdapter(new ArrayAdapter(this, 17367043, localList));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.ShowStringListActivity
 * JD-Core Version:    0.6.2
 */