package com.x.google.common.ui;

public class GoogleCommand
{
  public static final int BACK_TYPE = 2;
  public static final int CANCEL_TYPE = 3;
  public static final int EXIT_TYPE = 7;
  public static final int HELP_TYPE = 5;
  public static final int ITEM_TYPE = 8;
  private static final int MAX_ORDER = 65534;
  public static final int OK_TYPE = 4;
  private final Object action;
  private String label;
  private final int order;
  private final Object tag;
  private final int type;

  private GoogleCommand(String paramString, int paramInt1, int paramInt2, Object paramObject1, Object paramObject2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 65534))
      throw new IllegalArgumentException("For compatibility to Android, menu item order must be between 0 and 65534");
    this.label = paramString;
    this.type = paramInt1;
    this.order = paramInt2;
    this.tag = paramObject1;
    this.action = paramObject2;
  }

  public static boolean areSame(GoogleCommand[] paramArrayOfGoogleCommand1, GoogleCommand[] paramArrayOfGoogleCommand2)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramArrayOfGoogleCommand1 == null)
      if (paramArrayOfGoogleCommand2 == null)
        bool2 = bool1;
    int i;
    int j;
    do
    {
      do
      {
        return bool2;
        bool1 = false;
        break;
        bool2 = false;
      }
      while (paramArrayOfGoogleCommand2 == null);
      i = paramArrayOfGoogleCommand1.length;
      j = paramArrayOfGoogleCommand2.length;
      bool2 = false;
    }
    while (i != j);
    for (int k = 0; ; k++)
    {
      if (k >= paramArrayOfGoogleCommand1.length)
        break label79;
      GoogleCommand localGoogleCommand1 = paramArrayOfGoogleCommand1[k];
      GoogleCommand localGoogleCommand2 = paramArrayOfGoogleCommand2[k];
      bool2 = false;
      if (localGoogleCommand1 != localGoogleCommand2)
        break;
    }
    label79: return bool1;
  }

  public static GoogleCommand getCommand(String paramString, int paramInt1, int paramInt2)
  {
    return new GoogleCommand(paramString, paramInt1, paramInt2, null, null);
  }

  public static GoogleCommand getCommand(String paramString, int paramInt1, int paramInt2, Object paramObject1, Object paramObject2)
  {
    return new GoogleCommand(paramString, paramInt1, paramInt2, paramObject1, paramObject2);
  }

  public Object getAction()
  {
    return this.action;
  }

  public String getLabel()
  {
    return this.label;
  }

  public int getOrder()
  {
    return this.order;
  }

  public Object getTag()
  {
    return this.tag;
  }

  public int getType()
  {
    return this.type;
  }

  public void setLabel(String paramString)
  {
    this.label = paramString;
  }

  public String toString()
  {
    return this.label;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.ui.GoogleCommand
 * JD-Core Version:    0.6.2
 */