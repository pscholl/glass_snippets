package com.google.glass.voice;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.google.glass.voice.network.SpeechLevelSource;
import com.google.glass.voiceclient.R.anim;
import com.google.glass.voiceclient.R.id;

public class MicrophoneView extends AudioInputRelativeLayout
{
  private static final int OPENING_TIME_MS = 218;
  private static final int RED_MIC_FADE_IN_TIME = 536;
  private static final String TAG = MicrophoneView.class.getSimpleName();
  private ImageView grayCircle;
  private ImageView microphone;
  private Animation pulseAnim;
  private ImageView pulsingCircle;
  private ImageView redCircle;
  private BitmapSoundLevelsView soundLevels;

  public MicrophoneView(Context paramContext)
  {
    super(paramContext);
  }

  public MicrophoneView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MicrophoneView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void setupPulsingAnimation()
  {
    this.pulseAnim = AnimationUtils.loadAnimation(getContext(), R.anim.pulsing_circle_anim);
    this.pulseAnim.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        MicrophoneView.this.pulsingCircle.setAlpha(0.0F);
        MicrophoneView.this.startPulsingAnimation();
      }

      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
      }

      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        MicrophoneView.this.pulsingCircle.setAlpha(1.0F);
      }
    });
  }

  private void startFadeInAnimation(View paramView, int paramInt)
  {
    paramView.setAlpha(0.0F);
    paramView.animate().alpha(1.0F).setDuration(paramInt).start();
  }

  private void startFadeOutAnimation(View paramView, int paramInt)
  {
    paramView.setAlpha(1.0F);
    paramView.animate().alpha(0.0F).setDuration(paramInt).start();
  }

  private void startOpeningAnimation()
  {
    startFadeInAnimation(this.soundLevels, 218);
    startFadeInAnimation(this.microphone, 218);
    startFadeInAnimation(this.grayCircle, 218);
  }

  private void startPulsingAnimation()
  {
    if (this.pulsingCircle.getVisibility() == 8)
      return;
    this.pulsingCircle.setAnimation(this.pulseAnim);
    this.pulseAnim.start();
  }

  private void startRedCircleAnimation()
  {
    this.redCircle.setVisibility(0);
    startFadeOutAnimation(this.grayCircle, 536);
    startFadeInAnimation(this.redCircle, 536);
  }

  public void onFinishInflate()
  {
    this.soundLevels = ((BitmapSoundLevelsView)findViewById(R.id.sound_levels));
    this.microphone = ((ImageView)findViewById(R.id.microphone));
    this.redCircle = ((ImageView)findViewById(R.id.red_circle));
    this.grayCircle = ((ImageView)findViewById(R.id.gray_circle));
    this.pulsingCircle = ((ImageView)findViewById(R.id.pulsing_circle));
    setupPulsingAnimation();
  }

  protected void onStateChanged()
  {
    switch (2.$SwitchMap$com$google$glass$voice$AudioInputRelativeLayout$State[getState().ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
      do
      {
        return;
        this.microphone.setVisibility(8);
        this.grayCircle.setVisibility(8);
        this.redCircle.setVisibility(8);
        this.pulsingCircle.setVisibility(8);
        this.soundLevels.setEnabled(false);
        this.soundLevels.setVisibility(8);
        return;
        this.microphone.setVisibility(0);
        this.grayCircle.setVisibility(0);
        this.soundLevels.setEnabled(true);
        this.soundLevels.setVisibility(0);
        this.pulsingCircle.setVisibility(0);
        startPulsingAnimation();
        startOpeningAnimation();
        return;
        this.microphone.setVisibility(0);
        this.grayCircle.setVisibility(0);
        this.soundLevels.setEnabled(true);
        this.soundLevels.setVisibility(0);
        this.pulsingCircle.setVisibility(0);
        startRedCircleAnimation();
        return;
        this.microphone.setVisibility(8);
        this.redCircle.setVisibility(8);
        this.grayCircle.setVisibility(8);
        this.soundLevels.setEnabled(false);
        this.soundLevels.setVisibility(8);
        this.pulsingCircle.setVisibility(8);
      }
      while (this.pulseAnim == null);
      this.pulseAnim.cancel();
      this.pulseAnim.reset();
      return;
    case 5:
    }
    this.microphone.setVisibility(0);
    this.redCircle.setVisibility(0);
    this.soundLevels.setEnabled(false);
    this.soundLevels.setVisibility(0);
    this.pulsingCircle.setVisibility(0);
  }

  public void setSpeechLevelSource(SpeechLevelSource paramSpeechLevelSource)
  {
    this.soundLevels.setLevelSource(paramSpeechLevelSource);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MicrophoneView
 * JD-Core Version:    0.6.2
 */