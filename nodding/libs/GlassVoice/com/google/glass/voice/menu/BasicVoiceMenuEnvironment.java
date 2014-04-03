package com.google.glass.voice.menu;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.app.GlassVoiceActivity;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundCompletionListener;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.voice.VoiceConfig;
import java.util.concurrent.Executor;

public abstract class BasicVoiceMenuEnvironment
  implements VoiceMenuEnvironment
{
  private final GlassVoiceActivity glassVoiceActivity;

  public BasicVoiceMenuEnvironment(GlassVoiceActivity paramGlassVoiceActivity)
  {
    this.glassVoiceActivity = paramGlassVoiceActivity;
  }

  public static void postToUiThread(GlassActivity paramGlassActivity, Runnable paramRunnable)
  {
    MainThreadExecutorManager.getMainThreadExecutor().execute(paramRunnable);
  }

  public GlassActivity getContext()
  {
    return this.glassVoiceActivity;
  }

  public boolean isConnected()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.glassVoiceActivity.getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting());
  }

  public void logUserEvent(UserEventAction paramUserEventAction, String paramString)
  {
    this.glassVoiceActivity.logUserEvent(paramUserEventAction, paramString);
  }

  public void playSound(SoundManager.SoundId paramSoundId)
  {
    this.glassVoiceActivity.getSoundManager().playSound(paramSoundId);
  }

  public void playSound(SoundManager.SoundId paramSoundId, SoundManager.SoundCompletionListener paramSoundCompletionListener)
  {
    this.glassVoiceActivity.getSoundManager().playSound(paramSoundId, paramSoundCompletionListener);
  }

  public void postToUiThread(Runnable paramRunnable)
  {
    postToUiThread(this.glassVoiceActivity, paramRunnable);
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    if (paramRunnable != null)
      paramRunnable.run();
  }

  public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, long paramLong, Runnable paramRunnable)
  {
    if (paramRunnable != null)
      paramRunnable.run();
  }

  public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    if (paramRunnable != null)
      paramRunnable.run();
  }

  @Deprecated
  public void setVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    this.glassVoiceActivity.setVoiceConfig(paramVoiceConfig);
  }

  public void showError(final GlassError paramGlassError)
  {
    postToUiThread(new Runnable()
    {
      public void run()
      {
        paramGlassError.show(BasicVoiceMenuEnvironment.this.glassVoiceActivity);
      }
    });
  }

  public void showProgressBar()
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.BasicVoiceMenuEnvironment
 * JD-Core Version:    0.6.2
 */