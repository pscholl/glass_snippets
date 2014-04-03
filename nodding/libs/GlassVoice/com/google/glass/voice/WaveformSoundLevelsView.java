package com.google.glass.voice;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.voice.network.SpeechLevelSource;
import com.google.glass.voiceclient.R.drawable;

public class WaveformSoundLevelsView extends View
{
  private static final boolean DEBUG = false;
  private static final int INTERVAL_MS = 10;
  private static final int MAX_AMPLITUDE = 40;
  private static final int MAX_LEVEL_WIDTH_PX = 176;
  private static final int NUM_PERIODS = 20;
  private static final int NUM_POINTS_FOR_WAVEFORM = 3000;
  private static final int NUM_POINTS_PER_PERIOD = 150;
  private static final float THETA_PER_INTERVAL = 0.005235988F;
  private static final int ZERO_RADIUS = 80;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private int currentVolume;
  private final Rect destRect = new Rect();
  private final Matrix identityMatrix = new Matrix();
  private int levelSize = this.primaryLevel.getWidth();
  private SpeechLevelSource levelSource;
  private Bitmap maxPrimaryLevel;
  private final float[] offsets = new float[3000];
  private final Paint paint = new Paint();
  private final Bitmap primaryLevel = BitmapFactory.decodeResource(getResources(), R.drawable.voice_input_sound_level_circle);
  private RefreshHandler refreshHandler = new RefreshHandler(null);
  private float thetaOffset = 0.0F;
  private Paint waveformPaint;
  private final float[] waveformPoints = new float[12000];

  public WaveformSoundLevelsView(Context paramContext)
  {
    this(paramContext, null);
  }

  public WaveformSoundLevelsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WaveformSoundLevelsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.paint.setFilterBitmap(true);
    this.waveformPaint = new Paint();
    this.waveformPaint.setAlpha(128);
    this.waveformPaint.setColor(-7829368);
    this.waveformPaint.setStyle(Paint.Style.STROKE);
    this.waveformPaint.setStrokeWidth(1.0F);
    this.waveformPaint.setDither(true);
    this.waveformPaint.setStrokeJoin(Paint.Join.ROUND);
    this.waveformPaint.setStrokeCap(Paint.Cap.ROUND);
    this.waveformPaint.setAntiAlias(true);
  }

  private void drawLevel(Canvas paramCanvas, Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramBitmap2 != null))
    {
      paramCanvas.drawBitmap(paramBitmap2, this.identityMatrix, null);
      return;
    }
    this.destRect.set(paramInt1, paramInt1, paramInt1 + paramInt2, paramInt1 + paramInt2);
    paramCanvas.drawBitmap(paramBitmap1, null, this.destRect, this.paint);
  }

  private void drawWaveform(Canvas paramCanvas)
  {
    float f1 = paramCanvas.getWidth() / 2;
    float f2 = paramCanvas.getHeight() / 2;
    int i = -2 + this.waveformPoints.length;
    for (int j = 0; j < 3000; j++)
    {
      float f3 = (float)(6.283185307179586D * (j / 3000.0F)) + this.thetaOffset;
      float f4 = 80.0F + this.offsets[j];
      float f5 = (float)(f4 * Math.cos(f3) + f1);
      float f6 = (float)(f4 * Math.sin(f3) + f2);
      this.waveformPoints[i] = f5;
      this.waveformPoints[((i + 1) % this.waveformPoints.length)] = f6;
      this.waveformPoints[((i + 2) % this.waveformPoints.length)] = f5;
      this.waveformPoints[((i + 3) % this.waveformPoints.length)] = f6;
      i = (i + 4) % this.waveformPoints.length;
    }
    paramCanvas.drawLines(this.waveformPoints, this.waveformPaint);
    this.thetaOffset = (0.005235988F + this.thetaOffset);
    if (this.thetaOffset > 6.283185307179586D)
      this.thetaOffset = ((float)(this.thetaOffset - 6.283185307179586D));
  }

  private void startAnimator()
  {
    try
    {
      this.refreshHandler.start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void stopAnimator()
  {
    try
    {
      this.refreshHandler.stop();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void updateAnimatorState()
  {
    if (isEnabled())
    {
      startAnimator();
      return;
    }
    stopAnimator();
  }

  private void updatePointsForWaveform()
  {
    int i = 150 * (int)(20.0D * Math.random());
    float f1 = 40.0F * (this.currentVolume / 100.0F);
    for (int j = 0; j < 150; j++)
    {
      int m = (i + j) % 3000;
      float f4 = (float)(6.283185307179586D * (m / 3000.0F));
      float f5 = (float)(f1 * Math.sin(20.0F * f4));
      float f6 = this.offsets[m];
      if (Math.abs(f5) > Math.abs(f6))
        this.offsets[m] = f5;
    }
    int k = 0;
    if (k < 3000)
    {
      float f2 = (float)(4.0D * Math.sin(20.0F * (float)(6.283185307179586D * (k / 3000.0F))));
      float f3 = 0.9F * this.offsets[k];
      if (Math.abs(f2) > Math.abs(f3))
        this.offsets[k] = f2;
      while (true)
      {
        k++;
        break;
        this.offsets[k] = f3;
      }
    }
  }

  @VisibleForTesting
  public SpeechLevelSource getLevelSource()
  {
    return this.levelSource;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    updateAnimatorState();
  }

  protected void onDetachedFromWindow()
  {
    stopAnimator();
    super.onDetachedFromWindow();
  }

  public void onDraw(Canvas paramCanvas)
  {
    int i;
    if (isEnabled())
    {
      if (this.levelSource != null)
        break label106;
      i = 0;
      if (i <= this.currentVolume)
        break label119;
    }
    label106: label119: for (this.currentVolume += (i - this.currentVolume) / 4; ; this.currentVolume = ((int)(0.95F * this.currentVolume)))
    {
      if (this.primaryLevel != null)
      {
        int j = (176 - this.levelSize) * this.currentVolume / 100 + this.levelSize;
        int k = (getWidth() - j) / 2;
        drawLevel(paramCanvas, this.primaryLevel, this.maxPrimaryLevel, k, j);
      }
      updatePointsForWaveform();
      drawWaveform(paramCanvas);
      return;
      i = this.levelSource.getSpeechLevel();
      break;
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 <= 0) || (paramInt2 <= 0));
    while (this.primaryLevel == null)
      return;
    this.maxPrimaryLevel = Bitmap.createScaledBitmap(this.primaryLevel, paramInt1, paramInt2, true);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      updateAnimatorState();
      return;
    }
    stopAnimator();
  }

  public void setEnabled(boolean paramBoolean)
  {
    if (paramBoolean == isEnabled())
      return;
    super.setEnabled(paramBoolean);
    updateAnimatorState();
  }

  public void setLevelSource(SpeechLevelSource paramSpeechLevelSource)
  {
    this.levelSource = paramSpeechLevelSource;
  }

  private class RefreshHandler extends Handler
  {
    private static final int REFRESH_MESSAGE;
    private volatile boolean running;

    private RefreshHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      if (this.running)
      {
        WaveformSoundLevelsView.this.invalidate();
        sendMessageDelayed(obtainMessage(0), 10L);
      }
    }

    public void start()
    {
      this.running = true;
      sendEmptyMessage(0);
    }

    public void stop()
    {
      this.running = false;
      removeMessages(0);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.WaveformSoundLevelsView
 * JD-Core Version:    0.6.2
 */