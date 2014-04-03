package com.x.google.common.graphics;

public abstract class InterpolatedFontFactory
  implements FontFactory
{
  private IconProvider iconProvider;
  private IconProviderFactory iconProviderFactory;

  private IconProvider getIconProvider()
  {
    if ((this.iconProvider == null) && (this.iconProviderFactory != null))
      this.iconProvider = this.iconProviderFactory.getIconProvider();
    return this.iconProvider;
  }

  protected GoogleFont createWrappedFont(GoogleFont paramGoogleFont)
  {
    if (getIconProvider() == null)
      return paramGoogleFont;
    return new InterpolatedGoogleFont(paramGoogleFont, getIconProvider());
  }

  public void setIconProviderFactory(IconProviderFactory paramIconProviderFactory)
  {
    this.iconProviderFactory = paramIconProviderFactory;
  }

  public static abstract interface IconProviderFactory
  {
    public abstract IconProvider getIconProvider();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.InterpolatedFontFactory
 * JD-Core Version:    0.6.2
 */