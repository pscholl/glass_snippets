package com.google.android.speech.embedded;

import com.google.common.base.Preconditions;
import java.io.File;

public enum Greco3Grammar
{
  private final boolean mAddContacts;
  private final boolean mCompiledOnDevice;
  private final String mDirectoryName;

  static
  {
    Greco3Grammar[] arrayOfGreco3Grammar = new Greco3Grammar[2];
    arrayOfGreco3Grammar[0] = CONTACT_DIALING;
    arrayOfGreco3Grammar[1] = HANDS_FREE_COMMANDS;
  }

  private Greco3Grammar(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mDirectoryName = paramString;
    this.mCompiledOnDevice = paramBoolean1;
    this.mAddContacts = paramBoolean2;
  }

  public static Greco3Grammar fromDirectoryName(String paramString)
  {
    if (CONTACT_DIALING.getDirectoryName().equals(paramString))
      return CONTACT_DIALING;
    if (HANDS_FREE_COMMANDS.getDirectoryName().equals(paramString))
      return HANDS_FREE_COMMANDS;
    return null;
  }

  public static Greco3Grammar valueOf(File paramFile)
  {
    return fromDirectoryName(paramFile.getName());
  }

  public String getApkFullName(String paramString)
  {
    return ((String)Preconditions.checkNotNull(paramString)).replace("-", "_").toLowerCase() + "_" + this.mDirectoryName;
  }

  public String getDirectoryName()
  {
    return this.mDirectoryName;
  }

  public boolean isAddContacts()
  {
    return this.mAddContacts;
  }

  public boolean isCompiledOnDevice()
  {
    return this.mCompiledOnDevice;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3Grammar
 * JD-Core Version:    0.6.2
 */