package com.google.glass.logging;

import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.google.glass.app.GlassActivity;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.Feedback;
import com.google.glass.util.Feedback.RecoveryAction;
import com.google.glass.voice.VoiceAnnotationHelper;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import java.util.concurrent.Executor;

public class FeedbackActivity extends GlassActivity
{
  private static final int REQUEST_CODE_VOICE_ANNOTATION = 10;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private VoiceAnnotationHelper annotationHelper;
  private final TimelineHelper timelineHelper = new TimelineHelper();

  private void sendFeedback(final String paramString)
  {
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      logger.w("No intent.", new Object[0]);
      finish();
      return;
    }
    final String str1 = localIntent.getStringExtra("id");
    final String str2 = localIntent.getStringExtra("title");
    final String str3 = localIntent.getStringExtra("screenshot_file_path");
    final Feedback.RecoveryAction localRecoveryAction = (Feedback.RecoveryAction)localIntent.getSerializableExtra("recovery_action");
    final boolean bool = localIntent.getBooleanExtra("bugreport", true);
    final String[] arrayOfString = localIntent.getStringArrayExtra("additional_files");
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = str2;
    arrayOfObject[1] = paramString;
    arrayOfObject[2] = str3;
    arrayOfObject[3] = localRecoveryAction;
    arrayOfObject[4] = Boolean.valueOf(bool);
    localFormattingLogger.d("name: %s, description: %s, screenshot: %s, recoveryAction: %s, shouldBugreport: %s", arrayOfObject);
    final CompanionLogReader localCompanionLogReader = new CompanionLogReader(this);
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        Application localApplication = FeedbackActivity.this.getApplication();
        try
        {
          FeedbackBuilder.build(localApplication, FeedbackActivity.this.timelineHelper, str1, str2, paramString, str3, bool, localCompanionLogReader, arrayOfString);
          return;
        }
        finally
        {
          Feedback.handleRecoveryAction(localApplication, localRecoveryAction);
        }
      }
    });
    finish();
  }

  public FormattingLogger getLogger()
  {
    return logger;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (10 == paramInt1)
      sendFeedback(this.annotationHelper.getAnnotationResult(paramInt2, paramIntent));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    logger.d("onCreate", new Object[0]);
    this.annotationHelper = new VoiceAnnotationHelper(this);
    getSoundManager().playSound(SoundManager.SoundId.ERROR);
    boolean bool = getIntent().getBooleanExtra("allow_voice_note", true);
    MessageDialog.Builder localBuilder = new MessageDialog.Builder(this, getSoundManager()).setIcon(R.drawable.ic_bug_large).setMessage(R.string.capturing_bugreport).setShowProgress(true).setExpanded(true).setHandleConfirm(bool).setListener(new MessageDialog.SimpleListener()
    {
      boolean wasConfirmed;

      public boolean onConfirmed()
      {
        this.wasConfirmed = true;
        FeedbackActivity.this.annotationHelper.startAnnotationForResult(10);
        FeedbackActivity.this.getSoundManager().playSound(SoundManager.SoundId.TAP);
        return true;
      }

      public void onDismissed()
      {
        if (!this.wasConfirmed)
          FeedbackActivity.this.sendFeedback(null);
      }

      public void onDone()
      {
        if (!this.wasConfirmed)
          FeedbackActivity.this.sendFeedback(null);
      }
    });
    if (bool)
      localBuilder.setSecondaryMessage(R.string.sharing_menu_tap_to_annotate);
    showMessage(localBuilder.build());
  }

  protected int provideContentView()
  {
    return R.layout.feedback;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.FeedbackActivity
 * JD-Core Version:    0.6.2
 */