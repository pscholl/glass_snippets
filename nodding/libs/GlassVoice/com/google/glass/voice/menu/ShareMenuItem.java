package com.google.glass.voice.menu;

import android.content.Context;
import com.google.common.collect.Lists;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voiceclient.R.string;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.List;

public abstract class ShareMenuItem extends StaticCommandMenuItem
{
  private TimelineNano.TimelineItem timelineItem;

  public ShareMenuItem(VoiceCommand paramVoiceCommand, int paramInt, TimelineNano.TimelineItem paramTimelineItem, Requirement[] paramArrayOfRequirement)
  {
    super(paramVoiceCommand, paramInt, paramArrayOfRequirement);
    this.timelineItem = paramTimelineItem;
  }

  public static List<? extends VoiceMenuItem> getShareContextMenuItems(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, VoiceMenuEnvironment.EntityType paramEntityType)
  {
    ShareMenuItem[] arrayOfShareMenuItem = new ShareMenuItem[1];
    arrayOfShareMenuItem[0] = newShareItem(paramContext, paramTimelineItem, paramEntityType);
    return Lists.newArrayList(arrayOfShareMenuItem);
  }

  public static ShareMenuItem newShareItem(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, final VoiceMenuEnvironment.EntityType paramEntityType)
  {
    Requirement localRequirement;
    final VoiceConfig localVoiceConfig;
    switch (2.$SwitchMap$com$google$glass$voice$menu$VoiceMenuEnvironment$EntityType[paramEntityType.ordinal()])
    {
    default:
      throw new IllegalStateException("No VoiceConfig for entityType" + paramEntityType);
    case 1:
      localRequirement = VoiceMenuRequirements.HAS_VIDEO_SHARE_TARGETS;
      localVoiceConfig = VoiceConfig.VIDEO_SHARE_TARGETS;
    case 2:
    case 3:
    }
    while (true)
    {
      ShareMenuItem local1 = new ShareMenuItem(VoiceCommand.SHARE, R.string.voice_menu_item_share, paramTimelineItem, new Requirement[] { localRequirement })
      {
        public VoiceConfig getNextVoiceConfig()
        {
          return localVoiceConfig;
        }

        public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
        {
          super.onTrigger(paramAnonymousVoiceMenuEnvironment, paramAnonymousBoolean);
          paramAnonymousVoiceMenuEnvironment.showPeopleList(this, paramEntityType, VoiceMenuEnvironment.EntityCommand.SHARE);
          paramAnonymousVoiceMenuEnvironment.logUserEvent(UserEventAction.VOICE_MENU_COMMAND_SPOKEN, "20");
        }
      };
      local1.setVoicePendingAfterTrigger(true);
      local1.setHasSubMenu(true);
      return local1;
      localRequirement = VoiceMenuRequirements.HAS_PHOTO_SHARE_TARGETS;
      localVoiceConfig = VoiceConfig.PHOTO_SHARE_TARGETS;
      continue;
      localRequirement = VoiceMenuRequirements.HAS_PLUS_SHARE_TARGETS;
      localVoiceConfig = VoiceConfig.PLUS_SHARE_TARGETS;
    }
  }

  public TimelineNano.TimelineItem getTimelineItem()
  {
    return this.timelineItem;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.ShareMenuItem
 * JD-Core Version:    0.6.2
 */