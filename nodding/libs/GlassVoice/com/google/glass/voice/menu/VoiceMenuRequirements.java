package com.google.glass.voice.menu;

import com.google.glass.app.GlassError;
import com.google.glass.voice.EntityUtils;
import com.google.glass.voiceclient.R.string;

public class VoiceMenuRequirements
{
  public static final Requirement HAS_PHOTO_SHARE_TARGETS = new Requirement()
  {
    public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
    {
      return new GlassError().setPrimaryMessageId(R.string.error_no_photo_share_targets).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
    }

    public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
    {
      return EntityUtils.hasShareTargets(paramAnonymousVoiceMenuEnvironment.getContext(), "image/jpeg");
    }
  };
  public static final Requirement HAS_PLUS_SHARE_TARGETS = new Requirement()
  {
    public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
    {
      return new GlassError().setPrimaryMessageId(R.string.error_no_plus_share_targets).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
    }

    public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
    {
      return EntityUtils.hasPlusShareTargets(paramAnonymousVoiceMenuEnvironment.getContext());
    }
  };
  public static final Requirement HAS_VIDEO_SHARE_TARGETS = new Requirement()
  {
    public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
    {
      return new GlassError().setPrimaryMessageId(R.string.error_no_video_share_targets).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
    }

    public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
    {
      return EntityUtils.hasShareTargets(paramAnonymousVoiceMenuEnvironment.getContext(), "video/mp4");
    }
  };
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.VoiceMenuRequirements
 * JD-Core Version:    0.6.2
 */