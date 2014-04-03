package com.google.glass.voice;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.voice.network.SpeechLevelSource;

public abstract class AudioInputRelativeLayout extends RelativeLayout
{
  private State state;

  public AudioInputRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }

  public AudioInputRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public AudioInputRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  @VisibleForTesting
  public State getState()
  {
    return this.state;
  }

  protected abstract void onStateChanged();

  public abstract void setSpeechLevelSource(SpeechLevelSource paramSpeechLevelSource);

  public void showListening()
  {
    this.state = State.LISTENING;
    onStateChanged();
  }

  public void showNotListening()
  {
    this.state = State.NOT_LISTENING;
    onStateChanged();
  }

  public void showRecognizing()
  {
    this.state = State.RECOGNIZING;
    onStateChanged();
  }

  public void showRecording()
  {
    this.state = State.RECORDING;
    onStateChanged();
  }

  @VisibleForTesting
  public static enum State
  {
    static
    {
      MIC_INITIALIZING = new State("MIC_INITIALIZING", 1);
      LISTENING = new State("LISTENING", 2);
      RECORDING = new State("RECORDING", 3);
      RECOGNIZING = new State("RECOGNIZING", 4);
      State[] arrayOfState = new State[5];
      arrayOfState[0] = NOT_LISTENING;
      arrayOfState[1] = MIC_INITIALIZING;
      arrayOfState[2] = LISTENING;
      arrayOfState[3] = RECORDING;
      arrayOfState[4] = RECOGNIZING;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.AudioInputRelativeLayout
 * JD-Core Version:    0.6.2
 */