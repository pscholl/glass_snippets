package com.google.glass.voice.menu;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.collect.BiMap;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.voice.VoiceCommand;
import java.util.Arrays;

public abstract class StaticCommandMenuItem extends VoiceMenuItem
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  public final VoiceCommand command;
  private final int contextMenuStringId;
  private final int iconId;
  private final int stringId;

  protected StaticCommandMenuItem(VoiceCommand paramVoiceCommand, int paramInt1, int paramInt2, int paramInt3, Requirement[] paramArrayOfRequirement)
  {
    super(Arrays.asList(paramArrayOfRequirement));
    this.command = paramVoiceCommand;
    this.stringId = paramInt1;
    this.contextMenuStringId = paramInt2;
    this.iconId = paramInt3;
  }

  protected StaticCommandMenuItem(VoiceCommand paramVoiceCommand, int paramInt, Requirement[] paramArrayOfRequirement)
  {
    this(paramVoiceCommand, paramInt, 0, 0, paramArrayOfRequirement);
  }

  protected StaticCommandMenuItem(VoiceCommand paramVoiceCommand, Requirement[] paramArrayOfRequirement)
  {
    this(paramVoiceCommand, 0, 0, 0, paramArrayOfRequirement);
  }

  static String getUserEventDataId(VoiceCommand paramVoiceCommand)
  {
    if (paramVoiceCommand == null)
    {
      logger.e("null command in getUserEventDataId!", new Object[0]);
      return "";
    }
    if (paramVoiceCommand.equals(VoiceCommand.GOOGLE))
      return "2";
    if (paramVoiceCommand.equals(VoiceCommand.TAKE_PHOTO))
      return "3";
    if (paramVoiceCommand.equals(VoiceCommand.RECORD_VIDEO))
      return "4";
    if (paramVoiceCommand.equals(VoiceCommand.VIDEO_CALL))
      return "11";
    if (paramVoiceCommand.equals(VoiceCommand.NAVIGATION))
      return "5";
    if (paramVoiceCommand.equals(VoiceCommand.CALL))
      return "7";
    if (paramVoiceCommand.equals(VoiceCommand.SEND_MESSAGE_TO))
      return "6";
    if (VoiceCommand.mirrorApiCommands.containsKey(paramVoiceCommand))
      return "28";
    return "";
  }

  static void logMainMenuCommandEvent(VoiceCommand paramVoiceCommand, boolean paramBoolean, VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    String str = getUserEventDataId(paramVoiceCommand);
    if (TextUtils.isEmpty(str))
    {
      logger.w("No user event log data id for command: %s; ignoring.", new Object[] { paramVoiceCommand });
      return;
    }
    if (paramBoolean);
    for (UserEventAction localUserEventAction = UserEventAction.VOICE_MENU_COMMAND_SPOKEN; ; localUserEventAction = UserEventAction.VOICE_MENU_COMMAND_TAPPED)
    {
      paramVoiceMenuEnvironment.logUserEvent(localUserEventAction, str);
      return;
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    StaticCommandMenuItem localStaticCommandMenuItem;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localStaticCommandMenuItem = (StaticCommandMenuItem)paramObject;
      if (this.command == null)
      {
        if (localStaticCommandMenuItem.command != null)
          return false;
      }
      else if (!this.command.equals(localStaticCommandMenuItem.command))
        return false;
    }
    while (this.stringId == localStaticCommandMenuItem.stringId);
    return false;
  }

  public int getContextIconId()
  {
    return this.iconId;
  }

  public String getContextLabel(Context paramContext)
  {
    if (this.contextMenuStringId == 0)
      return this.command.getLiteral();
    return paramContext.getString(this.contextMenuStringId);
  }

  public String getLabel(Context paramContext)
  {
    if (this.stringId == 0)
      return this.command.getLiteral();
    return paramContext.getString(this.stringId);
  }

  public int hashCode()
  {
    if (this.command == null);
    for (int i = 0; ; i = this.command.hashCode())
      return 31 * (i + 31) + this.stringId;
  }

  public boolean matches(VoiceCommand paramVoiceCommand)
  {
    return this.command.equals(paramVoiceCommand);
  }

  public void onTrigger(VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
  {
    logMainMenuCommandEvent(this.command, paramBoolean, paramVoiceMenuEnvironment);
    paramVoiceMenuEnvironment.selectMenuItem(this, (Runnable)null);
  }

  public String toString()
  {
    return "MainMenuCommandItem [command=" + this.command + "]";
  }

  public static abstract interface VoiceMenuCommandItemListener
  {
    public abstract void onVoiceMenuCommandItemTriggered(VoiceCommand paramVoiceCommand);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.StaticCommandMenuItem
 * JD-Core Version:    0.6.2
 */