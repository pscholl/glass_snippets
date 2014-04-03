package com.google.glass.input;

import android.content.Context;
import android.os.SystemClock;
import com.google.common.annotations.VisibleForTesting;

public class InputDetector
{
  private static final int MAX_PITCH_ACCUMULATIONS = 20;
  private static final float SCROLL_PIXELS_PER_PITCH_DEGREE = 40.0F;
  private static final String TAG = InputDetector.class.getSimpleName();
  private float accumulatedPitchDelta;
  private boolean hasPitch;
  private final InputListener inputListener;
  private long lastHeadScrollTimeMillis;
  private float lastPitch;
  private int numPitchAccumulations;
  private final PitchHelper pitchHelper;
  private final PitchHelper.PitchListener pitchListener = new PitchHelper.PitchListener()
  {
    public void onRelativePitchChange(float paramAnonymousFloat)
    {
      if (InputDetector.this.hasPitch)
      {
        float f = 40.0F * (paramAnonymousFloat - InputDetector.this.lastPitch);
        InputDetector.this.handleHeadScroll(f);
      }
      while (true)
      {
        InputDetector.access$102(InputDetector.this, paramAnonymousFloat);
        return;
        InputDetector.access$002(InputDetector.this, true);
      }
    }
  };

  public InputDetector(Context paramContext, InputListener paramInputListener)
  {
    if (paramInputListener == null)
      throw new NullPointerException("InputDetector constructed with null InputListener");
    this.inputListener = paramInputListener;
    this.pitchHelper = new PitchHelper(paramContext, this.pitchListener);
  }

  private void dispatchVerticalHeadScroll(float paramFloat)
  {
    this.inputListener.onVerticalHeadScroll(paramFloat);
  }

  private void handleHeadScroll(float paramFloat)
  {
    long l = SystemClock.uptimeMillis();
    if ((this.lastHeadScrollTimeMillis != 0L) && (l != this.lastHeadScrollTimeMillis))
    {
      this.accumulatedPitchDelta = (paramFloat + this.accumulatedPitchDelta);
      int i = 1 + this.numPitchAccumulations;
      this.numPitchAccumulations = i;
      if (i >= 20)
      {
        dispatchVerticalHeadScroll(this.accumulatedPitchDelta);
        this.accumulatedPitchDelta = 0.0F;
      }
    }
    this.lastHeadScrollTimeMillis = l;
  }

  @VisibleForTesting
  boolean areOrientationSensorsStarted()
  {
    return this.pitchHelper.isStarted();
  }

  public void startOrientationSensors()
  {
    this.pitchHelper.start();
  }

  public void stopOrientationSensors()
  {
    this.pitchHelper.stop();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputDetector
 * JD-Core Version:    0.6.2
 */