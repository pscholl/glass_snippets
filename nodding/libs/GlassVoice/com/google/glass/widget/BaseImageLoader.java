package com.google.glass.widget;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class BaseImageLoader<T>
  implements ImageLoader
{
  private final List<T> allImageSources;
  private List<T> drawImageSources;
  private MosaicView.GroupCountType groupCountType;
  private int height;
  private int width;

  public BaseImageLoader(List<T> paramList, int paramInt1, int paramInt2)
  {
    if (paramList == null)
      paramList = Collections.emptyList();
    this.allImageSources = paramList;
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public int drawListSize()
  {
    return this.drawImageSources.size();
  }

  protected T get(int paramInt)
  {
    return this.drawImageSources.get(paramInt);
  }

  public String getBackoffText(int paramInt)
  {
    return null;
  }

  protected List<T> getDrawImageSources()
  {
    return this.drawImageSources;
  }

  public MosaicView.GroupCountType getGroupCountType()
  {
    return this.groupCountType;
  }

  public int getHeight()
  {
    return this.height;
  }

  protected abstract String getImageSourceKey(T paramT);

  protected List<T> getImageSources()
  {
    return this.allImageSources;
  }

  public String getKey()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Integer.toString(this.width));
    localStringBuilder.append(":");
    localStringBuilder.append(Integer.toString(this.height));
    Iterator localIterator = this.drawImageSources.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      localStringBuilder.append(":");
      localStringBuilder.append(getImageSourceKey(localObject));
    }
    return localStringBuilder.toString();
  }

  public int getWidth()
  {
    return this.width;
  }

  protected void setDrawImageSources(List<T> paramList)
  {
    this.drawImageSources = paramList;
  }

  protected void setGroupCountType(MosaicView.GroupCountType paramGroupCountType)
  {
    this.groupCountType = paramGroupCountType;
  }

  public int sourceListSize()
  {
    return this.allImageSources.size();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.BaseImageLoader
 * JD-Core Version:    0.6.2
 */