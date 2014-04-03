package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import com.google.android.glass.hidden.HiddenShutdown;
import com.google.glass.app.GlassApplication;
import com.google.glass.build.BuildHelper;
import com.google.glass.build.BuildHelper.Type;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.Set;

public class Feedback
{
  private static final String ACTIVITY_NAME = "com.google.glass.logging.FeedbackActivity";
  public static final String EXTRA_ADDITIONAL_FILES = "additional_files";
  public static final String EXTRA_ALLOW_VOICE_NOTE = "allow_voice_note";
  public static final String EXTRA_BUGREPORT = "bugreport";
  public static final String EXTRA_ID = "id";
  public static final String EXTRA_RECOVERY_ACTION = "recovery_action";
  public static final String EXTRA_SCREENSHOT_FILE_PATH = "screenshot_file_path";
  public static final String EXTRA_TITLE = "title";
  private static final String PACKAGE_NAME = "com.google.glass.logging";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  private static Intent createFeedbackIntent(String paramString1, String paramString2, RecoveryAction paramRecoveryAction, boolean paramBoolean1, boolean paramBoolean2, String paramString3, String[] paramArrayOfString)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.FeedbackActivity");
    localIntent.addFlags(268435456);
    localIntent.putExtra("id", paramString1);
    localIntent.putExtra("title", paramString2);
    localIntent.putExtra("recovery_action", paramRecoveryAction);
    localIntent.putExtra("bugreport", paramBoolean1);
    localIntent.putExtra("allow_voice_note", paramBoolean2);
    localIntent.putExtra("screenshot_file_path", paramString3);
    localIntent.putExtra("additional_files", paramArrayOfString);
    return localIntent;
  }

  public static String createNewBugId()
  {
    return FileHelper.formatTimestamp(new Date().getTime());
  }

  public static void handleRecoveryAction(Context paramContext, RecoveryAction paramRecoveryAction)
  {
    if (paramRecoveryAction == null)
      logger.e("RecoveryAction was null, taking no action.", new Object[0]);
    BuildHelper.Type localType;
    while (true)
    {
      return;
      localType = BuildHelper.getType();
      if (!paramRecoveryAction.buildTypes.contains(localType))
        break;
      int i = 1.$SwitchMap$com$google$glass$util$Feedback$RecoveryAction[paramRecoveryAction.ordinal()];
      Intent localIntent = null;
      switch (i)
      {
      case 3:
      default:
      case 1:
      case 2:
      }
      while (localIntent != null)
      {
        paramContext.startActivity(localIntent.addFlags(268435456));
        return;
        localIntent = HiddenShutdown.createIntent();
        continue;
        localIntent = new Intent("android.intent.action.REBOOT");
      }
    }
    logger.d("recoveryAction %s overridden, does not apply to build type %s", new Object[] { paramRecoveryAction, localType });
  }

  public static void show(Context paramContext, String paramString, RecoveryAction paramRecoveryAction, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String[] paramArrayOfString)
  {
    if (BuildHelper.isUser())
    {
      logger.d("This is a user build, not showing feedback, handling %s triggered by %s", new Object[] { paramRecoveryAction, paramString });
      handleRecoveryAction(paramContext, paramRecoveryAction);
      return;
    }
    GlassApplication.from(paramContext).getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
    String str1 = createNewBugId();
    if (paramBoolean2);
    for (String str2 = ScreenshotUtil.captureAndSaveScreenshot(paramContext, str1); ; str2 = null)
    {
      paramContext.startActivity(createFeedbackIntent(str1, paramString, paramRecoveryAction, paramBoolean1, paramBoolean3, str2, paramArrayOfString));
      return;
    }
  }

  public static enum RecoveryAction
  {
    public final Set<BuildHelper.Type> buildTypes;

    static
    {
      BuildHelper.Type[] arrayOfType1 = new BuildHelper.Type[2];
      arrayOfType1[0] = BuildHelper.Type.USER;
      arrayOfType1[1] = BuildHelper.Type.USERDEBUG;
      SHOULD_SHUTDOWN = new RecoveryAction("SHOULD_SHUTDOWN", 0, arrayOfType1);
      BuildHelper.Type[] arrayOfType2 = new BuildHelper.Type[2];
      arrayOfType2[0] = BuildHelper.Type.USER;
      arrayOfType2[1] = BuildHelper.Type.USERDEBUG;
      SHOULD_REBOOT = new RecoveryAction("SHOULD_REBOOT", 1, arrayOfType2);
      BuildHelper.Type[] arrayOfType3 = new BuildHelper.Type[1];
      arrayOfType3[0] = BuildHelper.Type.ENG;
      SHOULD_CONTINUE = new RecoveryAction("SHOULD_CONTINUE", 2, arrayOfType3);
      RecoveryAction[] arrayOfRecoveryAction = new RecoveryAction[3];
      arrayOfRecoveryAction[0] = SHOULD_SHUTDOWN;
      arrayOfRecoveryAction[1] = SHOULD_REBOOT;
      arrayOfRecoveryAction[2] = SHOULD_CONTINUE;
    }

    private RecoveryAction(BuildHelper.Type[] paramArrayOfType)
    {
      this.buildTypes = EnumSet.copyOf(Arrays.asList(paramArrayOfType));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Feedback
 * JD-Core Version:    0.6.2
 */