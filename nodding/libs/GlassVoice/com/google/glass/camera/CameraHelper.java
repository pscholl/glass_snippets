package com.google.glass.camera;

import android.content.Context;
import android.content.Intent;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;

public class CameraHelper
{
  public static final String ACTION_PREPARE_CAMERA = "com.google.glass.action.PREPARE_CAMERA";
  public static final String ACTION_RECORD_MOMENT = "com.google.glass.action.MOMENT";
  public static final String ACTION_RECORD_VIDEO = "com.google.glass.action.RECORD_VIDEO";
  public static final String ACTION_TAKE_PICTURE = "com.google.glass.action.TAKE_PICTURE";
  public static final String ACTION_TAKE_PICTURE_FROM_SCREEN_OFF = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF";
  public static final String EXTRA_SCREENSHOT_FILE_PATH = "screenshot_file_path";
  public static final String EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF = "should_finish_turn_screen_off";
  public static final String EXTRA_SHOULD_TAKE_PICTURE = "should_take_picture";
  private final Context context;

  public CameraHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public void prepareCamera()
  {
    this.context.sendBroadcast(new Intent("com.google.glass.action.PREPARE_CAMERA"));
  }

  public void recordMoment(boolean paramBoolean, SoundManager paramSoundManager)
  {
    if (paramSoundManager != null)
      paramSoundManager.playSound(SoundManager.SoundId.PHOTO_READY);
    Intent localIntent = new Intent("com.google.glass.action.MOMENT");
    localIntent.putExtra("should_finish_turn_screen_off", paramBoolean);
    localIntent.putExtra("should_take_picture", true);
    startActivity(localIntent);
  }

  public void recordVideo(boolean paramBoolean, SoundManager paramSoundManager)
  {
    if (paramSoundManager != null)
      paramSoundManager.playSound(SoundManager.SoundId.VIDEO_START);
    Intent localIntent = new Intent("com.google.glass.action.RECORD_VIDEO");
    localIntent.putExtra("should_finish_turn_screen_off", paramBoolean);
    startActivity(localIntent);
  }

  void startActivity(Intent paramIntent)
  {
    paramIntent.addFlags(268435456).addFlags(134217728);
    this.context.startActivity(paramIntent);
  }

  public void takePicture(boolean paramBoolean1, boolean paramBoolean2, SoundManager paramSoundManager, String paramString)
  {
    prepareCamera();
    if (paramSoundManager != null)
      paramSoundManager.playSound(SoundManager.SoundId.PHOTO_READY);
    if (paramBoolean1);
    for (String str = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"; ; str = "com.google.glass.action.TAKE_PICTURE")
    {
      Intent localIntent = new Intent(str);
      localIntent.putExtra("should_finish_turn_screen_off", paramBoolean2);
      localIntent.putExtra("should_take_picture", true);
      if (paramString != null)
        localIntent.putExtra("screenshot_file_path", paramString);
      startActivity(localIntent);
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.CameraHelper
 * JD-Core Version:    0.6.2
 */