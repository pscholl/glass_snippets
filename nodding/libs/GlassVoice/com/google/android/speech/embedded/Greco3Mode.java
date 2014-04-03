package com.google.android.speech.embedded;

import java.io.File;

public enum Greco3Mode
{
  private static final String ASCII_SUFFIX = ".ascii_proto";
  private final String mFileName;

  static
  {
    ENDPOINTER_DICTATION = new Greco3Mode("ENDPOINTER_DICTATION", 2, "endpointer_dictation");
    HOTWORD = new Greco3Mode("HOTWORD", 3, "google_hotword");
    COMPILER = new Greco3Mode("COMPILER", 4, "compile_grammar");
    GRAMMAR = new Greco3Mode("GRAMMAR", 5, "grammar");
    Greco3Mode[] arrayOfGreco3Mode = new Greco3Mode[6];
    arrayOfGreco3Mode[0] = DICTATION;
    arrayOfGreco3Mode[1] = ENDPOINTER_VOICESEARCH;
    arrayOfGreco3Mode[2] = ENDPOINTER_DICTATION;
    arrayOfGreco3Mode[3] = HOTWORD;
    arrayOfGreco3Mode[4] = COMPILER;
    arrayOfGreco3Mode[5] = GRAMMAR;
  }

  private Greco3Mode(String paramString)
  {
    this.mFileName = paramString;
  }

  public static boolean isAsciiConfiguration(File paramFile)
  {
    return paramFile.getName().endsWith(".ascii_proto");
  }

  public static Greco3Mode valueOf(File paramFile)
  {
    for (Greco3Mode localGreco3Mode : values())
      if (localGreco3Mode.matches(paramFile))
        return localGreco3Mode;
    return null;
  }

  public boolean isEndpointerMode()
  {
    return (this == ENDPOINTER_DICTATION) || (this == ENDPOINTER_VOICESEARCH);
  }

  public boolean matches(File paramFile)
  {
    String str = paramFile.getName();
    int i = str.indexOf(".");
    if (i > 0)
      str = str.substring(0, i);
    return this.mFileName.equals(str);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3Mode
 * JD-Core Version:    0.6.2
 */