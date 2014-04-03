package com.google.userfeedback.android.api;

public class UiConfigurationOptions
{
  private int backgroundColor;
  private int headerBackgroundResourceId;
  private boolean hideTitleBar;
  private int sectionHeaderBackgroundResourceId;
  private int sectionHeaderFontColor;

  private void setBackgroundColor(int paramInt)
  {
    this.backgroundColor = paramInt;
  }

  private void setHeaderBackgroundResourceId(int paramInt)
  {
    this.headerBackgroundResourceId = paramInt;
  }

  private void setHideTitleBar(boolean paramBoolean)
  {
    this.hideTitleBar = paramBoolean;
  }

  private void setSectionHeaderBackgroundResourceId(int paramInt)
  {
    this.sectionHeaderBackgroundResourceId = paramInt;
  }

  private void setSectionHeaderFontColor(int paramInt)
  {
    this.sectionHeaderFontColor = paramInt;
  }

  public int getBackgroundColor()
  {
    return this.backgroundColor;
  }

  public int getHeaderBackgroundResourceId()
  {
    if (this.headerBackgroundResourceId != 0)
      return this.headerBackgroundResourceId;
    return R.color.gf_header_background;
  }

  public boolean getHideTitleBar()
  {
    return this.hideTitleBar;
  }

  public int getSectionHeaderBackgroundResourceId()
  {
    if (this.sectionHeaderBackgroundResourceId != 0)
      return this.sectionHeaderBackgroundResourceId;
    return 17301669;
  }

  public int getSectionHeaderFontColor()
  {
    return this.sectionHeaderFontColor;
  }

  public static class Builder
  {
    private int backgroundColor = 0;
    private int headerBackgroundResourceId = 0;
    private int sectionHeaderBackgroundResourceId = 0;
    private int sectionHeaderFontColor = 0;
    private boolean shouldHideTitleBar = false;

    public UiConfigurationOptions build()
    {
      UiConfigurationOptions localUiConfigurationOptions = new UiConfigurationOptions(null);
      localUiConfigurationOptions.setHideTitleBar(this.shouldHideTitleBar);
      localUiConfigurationOptions.setHeaderBackgroundResourceId(this.headerBackgroundResourceId);
      localUiConfigurationOptions.setSectionHeaderBackgroundResourceId(this.sectionHeaderBackgroundResourceId);
      localUiConfigurationOptions.setSectionHeaderFontColor(this.sectionHeaderFontColor);
      localUiConfigurationOptions.setBackgroundColor(this.backgroundColor);
      return localUiConfigurationOptions;
    }

    public Builder hideTitleBar(boolean paramBoolean)
    {
      this.shouldHideTitleBar = paramBoolean;
      return this;
    }

    public Builder setBackgroundColor(int paramInt)
    {
      this.backgroundColor = paramInt;
      return this;
    }

    public Builder setHeaderBackground(int paramInt)
    {
      this.headerBackgroundResourceId = paramInt;
      return this;
    }

    public Builder setSectionHeaderBackground(int paramInt)
    {
      this.sectionHeaderBackgroundResourceId = paramInt;
      return this;
    }

    public Builder setSectionHeaderFontColor(int paramInt)
    {
      this.sectionHeaderFontColor = paramInt;
      return this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UiConfigurationOptions
 * JD-Core Version:    0.6.2
 */