package com.google.glass.voice;

import android.content.Context;
import java.util.List;

public class NativeAppVoiceConfigHelper
{
  private static final NativeAppVoiceConfigHelper instance = new NativeAppVoiceConfigHelper();
  private List<String> currentCommands;
  private VoiceConfig nativeAppConfig;

  public static NativeAppVoiceConfigHelper getInstance()
  {
    return instance;
  }

  private List<String> getNativeAppCommands(Context paramContext)
  {
    return NativeAppVoiceMenuHelper.getInstance(paramContext).getNativeAppCommands(paramContext);
  }

  private String[] getTags(Context paramContext, String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
    {
      String str = paramArrayOfString[i];
      arrayOfString[i] = NativeAppVoiceMenuHelper.getInstance(paramContext).getTag(str);
    }
    return arrayOfString;
  }

  protected void createNativeAppsConfig(Context paramContext)
  {
    this.currentCommands = getNativeAppCommands(paramContext);
    if (this.currentCommands.isEmpty())
    {
      this.nativeAppConfig = null;
      return;
    }
    String[] arrayOfString = (String[])this.currentCommands.toArray(new String[0]);
    this.nativeAppConfig = new VoiceConfig("NATIVE_APP_COMMANDS", arrayOfString, getTags(paramContext, arrayOfString));
  }

  public VoiceConfig getNativeAppsConfig(Context paramContext)
  {
    if ((this.nativeAppConfig == null) || (!this.currentCommands.equals(getNativeAppCommands(paramContext))))
      createNativeAppsConfig(paramContext);
    return this.nativeAppConfig;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.NativeAppVoiceConfigHelper
 * JD-Core Version:    0.6.2
 */