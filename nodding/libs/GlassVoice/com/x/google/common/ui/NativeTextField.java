package com.x.google.common.ui;

public abstract interface NativeTextField
{
  public static final int INITIAL_CAPS_SENTENCE = 2097152;
  public static final int MIDP_MODE_MASK = 65535;
  public static final int MODE_ANY = 1;
  public static final int MODE_DECIMAL = 32;
  public static final int MODE_EMAIL_ADDRESS = 2;
  public static final int MODE_INTEGER = 4;
  public static final int MODE_MULTIPLE_LINES = 16777216;
  public static final int MODE_NON_PREDICTIVE = 524288;
  public static final int MODE_PASSWORD = 65536;
  public static final int MODE_PHONE_NUMBER = 8;
  public static final int MODE_SENSITIVE = 262144;
  public static final int MODE_URL = 16;

  public abstract void display();

  public abstract GoogleCommand getCancelCommand();

  public abstract GoogleCommandListener getCommandListener();

  public abstract int getMode();

  public abstract GoogleCommand getOkCommand();

  public abstract String getString();

  public abstract void setCommandListener(GoogleCommandListener paramGoogleCommandListener);

  public abstract void setLabel(String paramString);

  public abstract void setMaxSize(int paramInt);

  public abstract void setMode(int paramInt);

  public abstract void setString(String paramString);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.ui.NativeTextField
 * JD-Core Version:    0.6.2
 */