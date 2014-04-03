package com.google.glass.voice;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
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

public class BitmapSoundLevelsView extends View
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private int currentVolume;
  private Rect destRect = new Rect();
  private final Paint emptyPaint = new Paint();
  private final Matrix identityMatrix = new Matrix();
  private int levelSize = this.primaryLevel.getWidth();
  private SpeechLevelSource levelSource;
  private Bitmap maxPrimaryLevel;
  private final Bitmap primaryLevel = BitmapFactory.decodeResource(getResources(), R.drawable.voice_input_sound_level_circle);
  private RefreshHandler refreshHandler = new RefreshHandler(null);

  public BitmapSoundLevelsView(Context paramContext)
  {
    this(paramContext, null);
  }

  public BitmapSoundLevelsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BitmapSoundLevelsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.emptyPaint.setFilterBitmap(true);
  }

  private void drawLevel(Canvas paramCanvas, Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramBitmap2 != null))
    {
      paramCanvas.drawBitmap(paramBitmap2, this.identityMatrix, null);
      return;
    }
    this.destRect.set(paramInt1, paramInt1, paramInt1 + paramInt2, paramInt1 + paramInt2);
    paramCanvas.drawBitmap(paramBitmap1, null, this.destRect, this.emptyPaint);
  }

  private void startAnimator()
  {
    try
    {
      logger.v("startAnimator()", new Object[0]);
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
      logger.v("stopAnimator()", new Object[0]);
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
        break label98;
      i = 0;
      if (i <= this.currentVolume)
        break label111;
    }
    label98: label111: for (this.currentVolume += (i - this.currentVolume) / 4; ; this.currentVolume = ((int)(0.95F * this.currentVolume)))
    {
      if (this.primaryLevel != null)
      {
        int j = (getWidth() - this.levelSize) * this.currentVolume / 100 + this.levelSize;
        int k = (getWidth() - j) / 2;
        drawLevel(paramCanvas, this.primaryLevel, this.maxPrimaryLevel, k, j);
      }
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
    {
      logger.d("Ignoring setEnabled call; already in requested state.", new Object[0]);
      return;
    }
    super.setEnabled(paramBoolean);
    updateAnimatorState();
  }

  public void setLevelSource(SpeechLevelSource paramSpeechLevelSource)
  {
    logger.v("Speech source set", new Object[0]);
    this.levelSource = paramSpeechLevelSource;
  }

  private class RefreshHandler extends Handler
  {
    private static final int INTERVAL_MS = 10;
    private static final int REFRESH_MESSAGE;
    private volatile boolean running;

    private RefreshHandler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      if (this.running)
      {
        BitmapSoundLevelsView.this.invalidate();
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
 * Qualified Name:     com.google.glass.voice.BitmapSoundLevelsView
 * JD-Core Version:    0.6.2
 */