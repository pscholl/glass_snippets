package com.google.userfeedback.android.api;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import java.util.List;

public class UserFeedbackActivity extends Activity
{
  private Spinner mChooseAccount;
  private EditText mFeedbackText;
  private CheckBox mIncludeScreenshot;
  private CheckBox mIncludeSystemLogs;
  private Button mPreviewFeedback;
  private Button mSubmitFeedback;
  private final UserFeedback mUserfeedback = UserFeedback.userFeedback();

  private void computeResourcesAndUpdateUi(Context paramContext, Spinner paramSpinner, Button paramButton)
  {
    new UpdateActivityOnReportCollection(paramContext, paramSpinner, paramButton).execute(new Void[0]);
  }

  private void configureActivity()
  {
    if ((this.mUserfeedback == null) || (this.mUserfeedback.getSpec() == null))
    {
      setResult(0);
      finishActivity(0);
      return;
    }
    updateUi(this);
    if (!this.mUserfeedback.getSpec().isScreenshotEnabled())
      findViewById(R.id.gf_screenshot_option).setVisibility(8);
    while (true)
    {
      this.mFeedbackText = ((EditText)findViewById(R.id.gf_feedback));
      this.mIncludeSystemLogs = ((CheckBox)findViewById(R.id.gf_send_system_info));
      this.mIncludeSystemLogs.setOnCheckedChangeListener(new OnUserChoiceInputChangeListener(null));
      this.mPreviewFeedback = ((Button)findViewById(R.id.gf_preview));
      this.mPreviewFeedback.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          UserFeedbackActivity.this.handleClick(UserFeedbackActivity.access$000(UserFeedbackActivity.this), UserFeedbackActivity.access$100(UserFeedbackActivity.this), UserFeedbackActivity.this.mFeedbackText.getText().toString());
          Intent localIntent = new Intent(UserFeedbackActivity.this.getApplicationContext(), PreviewActivity.class);
          UserFeedbackActivity.this.startActivityForResult(localIntent, 0);
        }
      });
      this.mSubmitFeedback = ((Button)findViewById(R.id.gf_send));
      this.mSubmitFeedback.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Dialog localDialog = UserFeedbackActivity.this.mUserfeedback.createDialog(jdField_this, UserFeedbackActivity.this.shouldIncludeScreenshot(), UserFeedbackActivity.this.shouldIncludeSystemLogs(), UserFeedbackActivity.this.mFeedbackText.getText().toString());
          if (localDialog == null)
          {
            UserFeedbackActivity.this.mUserfeedback.submitFeedback(UserFeedbackActivity.this.shouldIncludeScreenshot(), UserFeedbackActivity.this.shouldIncludeSystemLogs(), UserFeedbackActivity.this.mFeedbackText.getText().toString());
            UserFeedbackActivity.this.setResult(-1);
            UserFeedbackActivity.this.finish();
            return;
          }
          localDialog.show();
        }
      });
      this.mChooseAccount = ((Spinner)findViewById(R.id.gf_account_spinner));
      this.mChooseAccount.setBackgroundDrawable(null);
      this.mChooseAccount.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          String str = (String)UserFeedbackActivity.this.mChooseAccount.getSelectedItem();
          if (!str.equals(jdField_this.getString(R.string.gf_anonymous)))
          {
            UserFeedbackActivity.this.mUserfeedback.getReport().chosenAccount = str;
            return;
          }
          UserFeedbackActivity.this.mUserfeedback.getReport().chosenAccount = "";
        }

        public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView)
        {
          UserFeedbackActivity.this.mUserfeedback.getReport().chosenAccount = "";
        }
      });
      findViewById(R.id.gf_privacy_option).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AlertDialog localAlertDialog = new AlertDialog.Builder(UserFeedbackActivity.this).setTitle(UserFeedbackActivity.this.getString(R.string.gf_privacy_policy)).setMessage(UserFeedbackActivity.this.getString(R.string.gf_privacy_text)).create();
          localAlertDialog.setButton("OK", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
            }
          });
          localAlertDialog.show();
        }
      });
      computeResourcesAndUpdateUi(this, this.mChooseAccount, this.mPreviewFeedback);
      return;
      this.mIncludeScreenshot = ((CheckBox)findViewById(R.id.gf_send_screenshot));
      this.mIncludeScreenshot.setOnCheckedChangeListener(new OnUserChoiceInputChangeListener(null));
    }
  }

  private void handleClick(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    UserFeedback.userFeedback().setUserInputParams(paramBoolean1, paramBoolean2, paramString);
  }

  private void setHeaderUi(int paramInt, UiConfigurationOptions paramUiConfigurationOptions)
  {
    TextView localTextView = (TextView)findViewById(paramInt);
    int i = paramUiConfigurationOptions.getHeaderBackgroundResourceId();
    int j = paramUiConfigurationOptions.getSectionHeaderFontColor();
    if (localTextView != null)
    {
      if (i >= 0)
        break label54;
      localTextView.setBackgroundDrawable(null);
    }
    while (true)
    {
      if (j != 0)
        localTextView.setTextColor(getResources().getColor(j));
      return;
      label54: localTextView.setBackgroundDrawable(getResources().getDrawable(i));
    }
  }

  private boolean shouldIncludeScreenshot()
  {
    if (!this.mUserfeedback.getSpec().isScreenshotEnabled())
      return false;
    return this.mIncludeScreenshot.isChecked();
  }

  private boolean shouldIncludeSystemLogs()
  {
    return this.mIncludeSystemLogs.isChecked();
  }

  private void updateAppIcon(final Activity paramActivity)
  {
    new AsyncTask()
    {
      ImageView mAppIcon;
      int mAppIconRes;

      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        this.mAppIcon = ((ImageView)paramActivity.findViewById(R.id.gf_app_icon));
        Context localContext = UserFeedback.userFeedback().getSpec().getContext();
        String str = localContext.getPackageName();
        PackageManager localPackageManager = localContext.getPackageManager();
        this.mAppIconRes = R.drawable.gf_icon;
        try
        {
          this.mAppIconRes = localPackageManager.getApplicationInfo(str, 0).icon;
          label59: return null;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          break label59;
        }
      }

      protected void onPostExecute(Void paramAnonymousVoid)
      {
        this.mAppIcon.setImageResource(this.mAppIconRes);
      }
    }
    .execute(new Void[0]);
  }

  private void updateUi(Activity paramActivity)
  {
    UiConfigurationOptions localUiConfigurationOptions = UserFeedback.userFeedback().getSpec().getUiConfigurationOptions();
    if (localUiConfigurationOptions != null)
    {
      if (localUiConfigurationOptions.getHideTitleBar())
        findViewById(R.id.gf_app_header).setVisibility(8);
      while (true)
      {
        if (localUiConfigurationOptions.getBackgroundColor() != 0)
          getWindow().getDecorView().setBackgroundColor(getResources().getColor(localUiConfigurationOptions.getBackgroundColor()));
        setHeaderUi(R.id.gf_feedback_header, localUiConfigurationOptions);
        setHeaderUi(R.id.gf_privacy, localUiConfigurationOptions);
        setHeaderUi(R.id.gf_user_account, localUiConfigurationOptions);
        return;
        updateAppIcon(paramActivity);
      }
    }
    updateAppIcon(paramActivity);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt2)
    {
    case 0:
    default:
      return;
    case -1:
    }
    setResult(-1);
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.gf_feedback_activity);
    configureActivity();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    UserFeedback.flushBitmapsOnDestroy(this);
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    if ((this.mUserfeedback == null) || (this.mUserfeedback.getSpec() == null) || (this.mUserfeedback.getReport() == null))
    {
      setResult(0);
      finish();
    }
  }

  private class OnUserChoiceInputChangeListener
    implements CompoundButton.OnCheckedChangeListener
  {
    private OnUserChoiceInputChangeListener()
    {
    }

    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      UserFeedbackActivity.this.handleClick(UserFeedbackActivity.access$000(UserFeedbackActivity.this), UserFeedbackActivity.access$100(UserFeedbackActivity.this), UserFeedbackActivity.this.mFeedbackText.getText().toString());
    }
  }

  private class UpdateActivityOnReportCollection extends AsyncTask<Void, Void, Void>
  {
    private Spinner mAccountSpinner;
    private Context mContext;
    private Button mPreviewButton;

    public UpdateActivityOnReportCollection(Context paramSpinner, Spinner paramButton, Button arg4)
    {
      this.mContext = paramSpinner;
      this.mAccountSpinner = paramButton;
      Object localObject;
      this.mPreviewButton = localObject;
    }

    private void updatePreviewButton()
    {
      this.mPreviewButton.setEnabled(true);
    }

    private void updateSpinner()
    {
      this.mAccountSpinner.setEnabled(true);
      try
      {
        arrayOfString1 = (String[])UserFeedbackActivity.this.mUserfeedback.getReport().accounts.toArray(new String[0]);
        arrayOfString2 = new String[1 + arrayOfString1.length];
        arrayOfString2[0] = this.mContext.getString(R.string.gf_anonymous);
        int i = 0;
        localObject = "";
        j = 0;
        String str1 = UserFeedbackActivity.this.mUserfeedback.getSpec().getSelectedAccount();
        for (String str2 : arrayOfString1)
        {
          i++;
          arrayOfString2[i] = str2;
          if (str2.equals(str1))
          {
            localObject = str1;
            j = i;
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        String[] arrayOfString2;
        Object localObject;
        int j;
        while (true)
          String[] arrayOfString1 = new String[0];
        ArrayAdapter localArrayAdapter = new ArrayAdapter(this.mContext, R.layout.gf_userfeedback_account_spinner, arrayOfString2);
        localArrayAdapter.setDropDownViewResource(17367049);
        this.mAccountSpinner.setAdapter(localArrayAdapter);
        this.mAccountSpinner.setSelection(j);
        UserFeedbackActivity.this.mUserfeedback.getReport().chosenAccount = ((String)localObject);
      }
    }

    protected Void doInBackground(Void[] paramArrayOfVoid)
    {
      if (!UserFeedbackActivity.this.mUserfeedback.isReportReady())
        UserFeedbackActivity.this.mUserfeedback.blockOnReportConstruction();
      return null;
    }

    protected void onPostExecute(Void paramVoid)
    {
      updateSpinner();
      updatePreviewButton();
    }

    protected void onPreExecute()
    {
      this.mPreviewButton.setEnabled(false);
      this.mAccountSpinner.setEnabled(false);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackActivity
 * JD-Core Version:    0.6.2
 */