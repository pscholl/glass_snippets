package com.google.glass.voice;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.glass.voice.network.SpeechLevelSource;
import com.google.glass.voiceclient.R.id;

public class MusicView extends AudioInputRelativeLayout
{
  private ImageView blueCircle;
  private WaveformSoundLevelsView soundLevels;

  public MusicView(Context paramContext)
  {
    super(paramContext);
  }

  public MusicView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MusicView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void onFinishInflate()
  {
    this.soundLevels = ((WaveformSoundLevelsView)findViewById(R.id.sound_levels));
    this.blueCircle = ((ImageView)findViewById(R.id.blue_circle));
  }

  protected void onStateChanged()
  {
    switch (1.$SwitchMap$com$google$glass$voice$AudioInputRelativeLayout$State[getState().ordinal()])
    {
    default:
      return;
    case 1:
      this.soundLevels.setEnabled(true);
      this.soundLevels.setVisibility(0);
      this.blueCircle.setVisibility(0);
      return;
    case 2:
      this.blueCircle.setVisibility(8);
      this.soundLevels.setEnabled(false);
      this.soundLevels.setVisibility(8);
      return;
    case 3:
    }
    this.soundLevels.setEnabled(false);
    this.soundLevels.setVisibility(0);
  }

  public void setSpeechLevelSource(SpeechLevelSource paramSpeechLevelSource)
  {
    this.soundLevels.setLevelSource(paramSpeechLevelSource);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MusicView
 * JD-Core Version:    0.6.2
 */