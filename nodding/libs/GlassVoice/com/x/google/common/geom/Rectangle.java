package com.x.google.common.geom;

public final class Rectangle
  implements Bounds
{
  public int h;
  public int w;
  public int x;
  public int y;

  public Rectangle()
  {
    this(0, 0, 0, 0);
  }

  public Rectangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.x = paramInt1;
    this.y = paramInt2;
    this.w = paramInt3;
    this.h = paramInt4;
  }

  public Rectangle(Bounds paramBounds)
  {
    setBounds(paramBounds);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = paramObject.getClass().equals(getClass());
      bool1 = false;
      if (bool2)
      {
        Rectangle localRectangle = (Rectangle)paramObject;
        int i = this.x;
        int j = localRectangle.x;
        bool1 = false;
        if (i == j)
        {
          int k = this.y;
          int m = localRectangle.y;
          bool1 = false;
          if (k == m)
          {
            int n = this.w;
            int i1 = localRectangle.w;
            bool1 = false;
            if (n == i1)
            {
              int i2 = this.h;
              int i3 = localRectangle.h;
              bool1 = false;
              if (i2 == i3)
                bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }

  public int getBottom()
  {
    return this.y + this.h;
  }

  public int getHeight()
  {
    return this.h;
  }

  public int getLeft()
  {
    return this.x;
  }

  public int getRight()
  {
    return this.x + this.w;
  }

  public int getTop()
  {
    return this.y;
  }

  public int getWidth()
  {
    return this.w;
  }

  public int hashCode()
  {
    return this.x + this.y + this.w + this.h;
  }

  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.x = paramInt1;
    this.y = paramInt2;
    this.w = paramInt3;
    this.h = paramInt4;
  }

  public void setBounds(Bounds paramBounds)
  {
    this.x = paramBounds.getLeft();
    this.y = paramBounds.getTop();
    this.w = paramBounds.getWidth();
    this.h = paramBounds.getHeight();
  }

  public String toString()
  {
    return getClass().getName() + "[" + this.x + "," + this.y + "," + this.w + "," + this.h + "]";
  }

  public void union(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.x + this.w;
    int j = this.y + this.h;
    this.x = Math.min(this.x, paramInt1);
    this.y = Math.min(this.y, paramInt2);
    this.w = (Math.max(i, paramInt1 + paramInt3) - this.x);
    this.h = (Math.max(j, paramInt2 + paramInt4) - this.y);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.geom.Rectangle
 * JD-Core Version:    0.6.2
 */