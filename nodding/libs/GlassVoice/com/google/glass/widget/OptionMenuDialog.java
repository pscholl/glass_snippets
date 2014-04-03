package com.google.glass.widget;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.common.R.style;
import com.google.glass.input.InputListener;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.KeyDetector;
import com.google.glass.input.SwipeDirection;
import com.google.glass.input.TouchDetector;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HopHelper;

@Deprecated
public final class OptionMenuDialog extends Dialog
  implements InputListener
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private boolean canceled = false;
  private final KeyDetector keyDetector;
  private final Listener listener;
  private final OptionMenuView optionsView;
  private final GlassActivity owner;
  private final SliderView sliderView;
  private final SoundManager soundManager;
  private final TouchDetector touchDetector;

  public OptionMenuDialog(GlassActivity paramGlassActivity, SoundManager paramSoundManager, Listener paramListener)
  {
    super(paramGlassActivity, R.style.ContextualDialogTheme);
    this.owner = paramGlassActivity;
    this.soundManager = paramSoundManager;
    this.listener = paramListener;
    this.touchDetector = new TouchDetector(getContext(), this);
    this.keyDetector = new KeyDetector(getContext(), this);
    setContentView(R.layout.option_menu_dialog);
    this.sliderView = ((SliderView)findViewById(R.id.slider));
    this.optionsView = ((OptionMenuView)findViewById(R.id.options));
    this.optionsView.setListener(new OptionMenuView.Listener()
    {
      public boolean onMenuOptionConfirmed(OptionMenu.Item paramAnonymousItem)
      {
        return OptionMenuDialog.this.listener.onItemSelected(paramAnonymousItem);
      }
    });
    this.sliderView.setScrollView(this.optionsView);
    setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        OptionMenuDialog.this.listener.onClosed();
      }
    });
  }

  private void resetToHomePosition()
  {
    this.optionsView.setSelection(this.optionsView.getHomePosition(), false);
  }

  public void cancel()
  {
    this.canceled = true;
    super.cancel();
  }

  public void dismiss()
  {
    if (!isShowing())
      return;
    this.soundManager.playSound(SoundManager.SoundId.DISMISS);
    super.dismiss();
  }

  @VisibleForTesting
  public OptionMenuView getOptionMenuView()
  {
    return this.optionsView;
  }

  public void hide()
  {
  }

  public boolean onCameraButtonPressed()
  {
    return this.listener.onCameraButtonPressed();
  }

  public boolean onConfirm()
  {
    if (this.optionsView.onConfirm())
      dismiss();
    while (true)
    {
      return true;
      this.listener.onDisallowedInput();
    }
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    dismiss();
    return true;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return this.optionsView.onFingerCountChanged(paramInt, paramBoolean);
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 27) && (paramKeyEvent.getRepeatCount() == 0))
      if (this.listener.shouldAllowCameraButton())
        if (!onCameraButtonPressed())
          break label45;
    label45: 
    while ((this.keyDetector.onKeyDown(paramInt, paramKeyEvent)) || (super.onKeyDown(paramInt, paramKeyEvent)))
    {
      return true;
      this.listener.onDisallowedInput();
      return true;
    }
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return (this.keyDetector.onKeyUp(paramInt, paramKeyEvent)) || (super.onKeyUp(paramInt, paramKeyEvent));
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    this.optionsView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return true;
  }

  protected void onStart()
  {
    logger.d("onStart", new Object[0]);
    super.onStart();
    this.optionsView.activate();
    resetToHomePosition();
  }

  protected void onStop()
  {
    logger.d("onStop", new Object[0]);
    super.onStop();
    this.optionsView.deactivate();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (paramSwipeDirection == SwipeDirection.UP)
    {
      HopHelper.performHopAnimation(this.optionsView, SwipeDirection.UP);
      return true;
    }
    this.optionsView.onSwipe(paramInt, paramSwipeDirection);
    return false;
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    return false;
  }

  public OptionMenuDialog setMenu(OptionMenu paramOptionMenu)
  {
    this.optionsView.setOptionMenu(paramOptionMenu);
    resetToHomePosition();
    this.sliderView.setCount(paramOptionMenu.getVisibleItemCount());
    return this;
  }

  public void show()
  {
    if (isShowing())
      return;
    this.canceled = false;
    super.show();
  }

  public boolean wasCanceled()
  {
    return this.canceled;
  }

  public static abstract interface Listener
  {
    public abstract boolean onCameraButtonPressed();

    public abstract void onClosed();

    public abstract void onDisallowedInput();

    public abstract boolean onItemSelected(OptionMenu.Item paramItem);

    public abstract boolean shouldAllowCameraButton();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.OptionMenuDialog
 * JD-Core Version:    0.6.2
 */