package com.x.google.common.ui;

import java.util.Date;

public abstract interface NativeDateTimeField
{
  public static final int MODE_DATE_ONLY = 1;
  public static final int MODE_DATE_TIME = 3;
  public static final int MODE_TIME_ONLY = 2;

  public abstract void display();

  public abstract GoogleCommand getCancelCommand();

  public abstract GoogleCommandListener getCommandListener();

  public abstract Date getDate();

  public abstract int getMode();

  public abstract GoogleCommand getOkCommand();

  public abstract void setCommandListener(GoogleCommandListener paramGoogleCommandListener);

  public abstract void setDate(Date paramDate);

  public abstract void setLabel(String paramString);

  public abstract void setMode(int paramInt);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.ui.NativeDateTimeField
 * JD-Core Version:    0.6.2
 */