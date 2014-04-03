package com.google.userfeedback.android.api;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.x.google.common.io.android.GoogleHttpClient;
import java.io.File;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.FileEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class SendUserFeedbackService extends Service
{
  private static final String APP_AND_VERSION = "AndroidGoogleUIF/1.0";
  private static final String CONTENT_ENCODING = "gzip";
  private static final String CONTENT_TYPE = "application/x-protobuf";
  private static final int MAX_RETRIES = 3;
  private static final int TIMEOUT = 20000;
  private static boolean mSilenceToast;
  private final IBinder mServiceBinder = new SendUserFeedbackServiceBinder();
  protected UserFeedbackSpec mSpec;
  private int mToastMessage = R.string.gf_report_sent_failure;
  protected String mUrl;

  protected String getReceiverUrl()
  {
    String str1 = getString(R.string.gf_receiver_transport_scheme);
    if ("".equals(str1))
      str1 = "http";
    String str2 = getString(R.string.gf_receiver_port);
    if ("".equals(str2));
    for (String str3 = ""; ; str3 = ":" + str2)
      return str1 + "://" + getString(R.string.gf_receiver_host) + str3 + getString(R.string.gf_receiver_path);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.mServiceBinder;
  }

  public void onCreate()
  {
    super.onCreate();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    submitFeedback();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    submitFeedback();
    return 2;
  }

  protected int sendReport(File paramFile)
    throws IOException
  {
    HttpPost localHttpPost = new HttpPost(this.mUrl);
    localHttpPost.setHeader("Content-encoding", "gzip");
    localHttpPost.setEntity(new FileEntity(paramFile, "application/x-protobuf"));
    GoogleHttpClient localGoogleHttpClient = new GoogleHttpClient(this.mSpec.getActivity().getContentResolver(), "AndroidGoogleUIF/1.0", false);
    HttpParams localHttpParams = localGoogleHttpClient.getParams();
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 20000);
    try
    {
      HttpResponse localHttpResponse = localGoogleHttpClient.execute(localHttpPost);
      localGoogleHttpClient.close();
      int i = localHttpResponse.getStatusLine().getStatusCode();
      if (i >= 300)
        Log.d("GFEEDBACK", "Http response status: " + i);
      return i;
    }
    catch (IOException localIOException)
    {
      localGoogleHttpClient.close();
      throw localIOException;
    }
  }

  protected void showToast(int paramInt)
  {
    if ((!mSilenceToast) && (!UserFeedback.isServiceToastShown()))
    {
      Toast.makeText(this.mSpec.getContext(), paramInt, 0).show();
      UserFeedback.serviceToastShown();
    }
    mSilenceToast = true;
  }

  protected void startSendingUserFeedback()
  {
    new Thread(new Runnable()
    {
      private void cleanup(File paramAnonymousFile)
      {
        if (paramAnonymousFile != null)
        {
          SendUserFeedbackService.this.showToast(SendUserFeedbackService.this.mToastMessage);
          paramAnonymousFile.delete();
          jdField_this.stopSelf();
        }
      }

      public void run()
      {
        Looper.prepare();
        UserFeedbackReportBuilder localUserFeedbackReportBuilder = new UserFeedbackReportBuilder(SendUserFeedbackService.this.mSpec);
        File localFile = null;
        try
        {
          this.val$report.setSubmitted(true);
          localFile = localUserFeedbackReportBuilder.getFormattedFeedbackReport(this.val$report);
          for (int i = 0; ; i++)
          {
            int j;
            if (i < 3)
            {
              j = SendUserFeedbackService.this.sendReport(localFile) / 100;
              if (j != 2)
                break label90;
              SendUserFeedbackService.access$002(SendUserFeedbackService.this, R.string.gf_report_being_sent);
            }
            label90: 
            while (j != 5)
            {
              cleanup(localFile);
              cleanup(localFile);
              Looper.loop();
              return;
            }
          }
        }
        catch (IOException localIOException)
        {
          while (true)
          {
            Log.e("GFEEDBACK", "IOException: " + localIOException.getMessage());
            cleanup(localFile);
          }
        }
        finally
        {
          cleanup(localFile);
        }
      }
    }).start();
  }

  protected void submitFeedback()
  {
    mSilenceToast = false;
    if ((UserFeedback.userFeedback() == null) || (UserFeedback.userFeedback().getReport() == null))
    {
      Log.d("GFEEDBACK", "Removing userfeedback send service. Inconsistent state detected.");
      stopSelf();
      return;
    }
    if (UserFeedback.userFeedback().getReport().shouldSubmitReport())
    {
      this.mUrl = getReceiverUrl();
      this.mSpec = UserFeedback.userFeedback().getSpec();
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)this.mSpec.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
        {
          startSendingUserFeedback();
          return;
        }
      }
      catch (SecurityException localSecurityException)
      {
        startSendingUserFeedback();
        return;
      }
      this.mToastMessage = R.string.gf_report_queued;
      showToast(this.mToastMessage);
      stopSelf();
      return;
    }
    stopSelf();
  }

  public class SendUserFeedbackServiceBinder extends Binder
  {
    public SendUserFeedbackServiceBinder()
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.SendUserFeedbackService
 * JD-Core Version:    0.6.2
 */