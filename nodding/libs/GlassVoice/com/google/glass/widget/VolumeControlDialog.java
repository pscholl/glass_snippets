package com.google.glass.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.view.MotionEvent;
import com.google.glass.app.GlassApplication;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.common.R.style;
import com.google.glass.input.InputListener;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.input.TouchDetector;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.sound.VolumeHelper;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.HopHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.widget.horizontalscroll.FrameLayoutCard;
import com.google.glass.widget.horizontalscroll.HorizontallyTuggableView;
import java.util.HashMap;

public class VolumeControlDialog extends Dialog
  implements InputListener, ValueSlider.Listener
{
  public static final float HIGH_VOLUME_RATIO = 0.5F;
  private static final float HORIZONTAL_SCROLL_DAMPER = 0.5F;
  private static final long PLAY_DING_DELAY_MILLIS = 100L;
  private static final FormattingLogger headsetPlugReceiverLogger = FormattingLoggers.getLogger(logger, "headsetPlugReceiver");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private SafeBroadcastReceiver headsetPlugReceiver = new SafeBroadcastReceiver()
  {
    public FormattingLogger getLogger()
    {
      return VolumeControlDialog.headsetPlugReceiverLogger;
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      getLogger().d("Received intent: %s", new Object[] { paramAnonymousIntent });
      if ("android.intent.action.HEADSET_PLUG".equals(paramAnonymousIntent.getAction()))
        VolumeControlDialog.this.initSlider(VolumeHelper.getHeadsetState(paramAnonymousIntent));
    }
  };
  private int headsetState;
  private Runnable playDingRunnable = new Runnable()
  {
    public void run()
    {
      if (VolumeControlDialog.this.isShowing())
        VolumeControlDialog.this.soundManager.playSound(SoundManager.SoundId.VOLUME_CHANGE);
    }
  };
  private SoundManager soundManager;
  private TouchDetector touchDetector;
  private HorizontallyTuggableView tuggableView;
  private ValueSlider valueSlider;
  private VolumeHelper volumeHelper;

  public VolumeControlDialog(Context paramContext, SoundManager paramSoundManager, AudioManager paramAudioManager)
  {
    super(paramContext, R.style.ContextualDialogTheme);
    this.soundManager = paramSoundManager;
    this.volumeHelper = new VolumeHelper(paramContext, paramAudioManager);
    this.touchDetector = new TouchDetector(getContext(), this);
    setContentView(R.layout.volume_control_dialog);
    this.tuggableView = ((HorizontallyTuggableView)findViewById(R.id.tuggable_view));
    this.tuggableView.activate();
    FrameLayoutCard localFrameLayoutCard = new FrameLayoutCard(paramContext);
    this.valueSlider = new ValueSlider(paramContext);
    localFrameLayoutCard.addView(this.valueSlider);
    this.tuggableView.setView(localFrameLayoutCard);
    this.valueSlider.addListener(this);
    initSlider(VolumeHelper.getHeadsetState(paramContext));
  }

  private void initSlider(int paramInt)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localFormattingLogger.d("Initializing slider with headset state: %s", arrayOfObject);
    this.headsetState = paramInt;
    int i = this.volumeHelper.readAudioVolume(paramInt);
    final int j = VolumeHelper.getNumVolumeValues(paramInt);
    HashMap local3 = new HashMap()
    {
    };
    this.valueSlider.init(local3, R.drawable.ic_volume_2_large, j, i);
  }

  private void logVolume(UserEventAction paramUserEventAction)
  {
    int i = (int)Math.max(0.0F, Math.min(100.0F, 100.0F * (this.volumeHelper.readAudioVolume(this.headsetState) / (VolumeHelper.getNumVolumeValues(this.headsetState) - 1.0F))));
    GlassApplication.from(getContext()).getUserEventHelper().log(paramUserEventAction, UserEventHelper.createEventTuple("v", Integer.toString(i), new Object[0]));
  }

  public boolean onCameraButtonPressed()
  {
    return this.tuggableView.onCameraButtonPressed();
  }

  public boolean onConfirm()
  {
    this.soundManager.playSound(SoundManager.SoundId.SUCCESS);
    dismiss();
    return true;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return true;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    this.valueSlider.onFingerCountChanged(paramInt, paramBoolean);
    if ((paramInt == 0) && (!paramBoolean))
    {
      this.valueSlider.removeCallbacks(this.playDingRunnable);
      if (isShowing())
        this.valueSlider.postDelayed(this.playDingRunnable, 100L);
    }
    return this.tuggableView.onFingerCountChanged(paramInt, paramBoolean);
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    float f = paramFloat1 * 0.5F;
    this.valueSlider.onPrepareSwipe(f);
    return this.tuggableView.onPrepareSwipe(paramInt1, this.valueSlider.getFillBarOverScrollPixels(), paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
  }

  protected void onStart()
  {
    super.onStart();
    this.headsetPlugReceiver.registerAsync(AsyncThreadExecutorManager.getSerialExecutor(), getContext(), new String[] { "android.intent.action.HEADSET_PLUG" });
    logVolume(UserEventAction.VOLUME_CONTROL_ENTERED);
  }

  protected void onStop()
  {
    super.onStop();
    this.headsetPlugReceiver.unregisterAsync(AsyncThreadExecutorManager.getSerialExecutor(), getContext());
    logVolume(UserEventAction.VOLUME_CONTROL_EXITED);
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (paramSwipeDirection == SwipeDirection.UP)
      HopHelper.performHopAnimation(this.tuggableView, SwipeDirection.UP);
    do
    {
      return true;
      if (!this.valueSlider.onSwipe(paramSwipeDirection))
        break;
      if (paramSwipeDirection == SwipeDirection.RIGHT)
      {
        HopHelper.performHopAnimation(this.tuggableView, SwipeDirection.LEFT);
        return true;
      }
    }
    while (paramSwipeDirection != SwipeDirection.LEFT);
    HopHelper.performHopAnimation(this.tuggableView, SwipeDirection.RIGHT);
    return true;
    return this.tuggableView.onSwipe(paramInt, paramSwipeDirection);
  }

  public void onValueChanged(int paramInt)
  {
    this.volumeHelper.writeAudioVolume(this.headsetState, paramInt);
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    return this.tuggableView.onVerticalHeadScroll(paramFloat);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.VolumeControlDialog
 * JD-Core Version:    0.6.2
 */