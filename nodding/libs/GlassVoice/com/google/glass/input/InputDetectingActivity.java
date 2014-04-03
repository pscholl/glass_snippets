package com.google.glass.input;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;

public abstract class InputDetectingActivity extends Activity
  implements InputListener
{
  private InputDetector inputDetector;
  private KeyDetector keyDetector;
  private TouchDetector touchDetector;

  @VisibleForTesting
  protected boolean areOrientationSensorsStarted()
  {
    return this.inputDetector.areOrientationSensorsStarted();
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return (onGenericMotionEvent(paramMotionEvent)) || (super.dispatchTouchEvent(paramMotionEvent));
  }

  public abstract FormattingLogger getLogger();

  protected String identityHashCode()
  {
    return Integer.toHexString(System.identityHashCode(this));
  }

  public void onBackPressed()
  {
    onDismiss(InputListener.DismissAction.SWIPE_DOWN);
  }

  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public boolean onConfirm()
  {
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramBundle;
    arrayOfObject[1] = identityHashCode();
    localFormattingLogger.i("onCreate(%s, %s):", arrayOfObject);
    this.inputDetector = new InputDetector(this, this);
    this.touchDetector = new TouchDetector(this, this);
    this.keyDetector = new KeyDetector(this, this);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.i("onDestroy: %s", arrayOfObject);
  }

  protected void onDisallowedInput()
  {
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return false;
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.touchDetector != null)
      this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 27) && (paramKeyEvent.getRepeatCount() == 0))
      if (shouldAllowCameraButton())
        if (!onCameraButtonPressed())
          break label35;
    label35: 
    while ((this.keyDetector.onKeyDown(paramInt, paramKeyEvent)) || (super.onKeyDown(paramInt, paramKeyEvent)))
    {
      return true;
      onDisallowedInput();
      return true;
    }
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return (this.keyDetector.onKeyUp(paramInt, paramKeyEvent)) || (super.onKeyUp(paramInt, paramKeyEvent));
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramIntent;
    arrayOfObject[1] = identityHashCode();
    localFormattingLogger.i("onNewIntent(%s, %s):", arrayOfObject);
  }

  protected void onPause()
  {
    super.onPause();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.i("onPause: %s", arrayOfObject);
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return false;
  }

  protected void onResume()
  {
    super.onResume();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.i("onResume: %s", arrayOfObject);
  }

  protected void onStart()
  {
    super.onStart();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.i("onStart: %s", arrayOfObject);
  }

  protected void onStop()
  {
    super.onStop();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.i("onStop: %s", arrayOfObject);
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    return false;
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    return false;
  }

  protected boolean shouldAllowCameraButton()
  {
    return true;
  }

  protected void startOrientationSensors()
  {
    this.inputDetector.startOrientationSensors();
  }

  protected void stopOrientationSensors()
  {
    this.inputDetector.stopOrientationSensors();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputDetectingActivity
 * JD-Core Version:    0.6.2
 */