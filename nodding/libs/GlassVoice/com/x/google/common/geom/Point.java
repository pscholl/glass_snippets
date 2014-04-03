package com.x.google.common.geom;

public final class Point
{
  public int x;
  public int y;

  public Point()
  {
  }

  public Point(int paramInt1, int paramInt2)
  {
    this.x = paramInt1;
    this.y = paramInt2;
  }

  public Point(Point paramPoint)
  {
    this.x = paramPoint.x;
    this.y = paramPoint.y;
  }

  public static boolean isSamePointWithinError(Point paramPoint1, Point paramPoint2, int paramInt)
  {
    if ((paramPoint1 == null) || (paramPoint2 == null));
    while ((Math.abs(paramPoint1.x - paramPoint2.x) > paramInt) || (Math.abs(paramPoint1.y - paramPoint2.y) > paramInt))
      return false;
    return true;
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
        Point localPoint = (Point)paramObject;
        int i = this.x;
        int j = localPoint.x;
        bool1 = false;
        if (i == j)
        {
          int k = this.y;
          int m = localPoint.y;
          bool1 = false;
          if (k == m)
            bool1 = true;
        }
      }
    }
    return bool1;
  }

  public int getX()
  {
    return this.x;
  }

  public int getY()
  {
    return this.y;
  }

  public int hashCode()
  {
    return this.x + this.y;
  }

  public void setLocation(int paramInt1, int paramInt2)
  {
    this.x = paramInt1;
    this.y = paramInt2;
  }

  public String toString()
  {
    return getClass().getName() + "[" + this.x + "," + this.y + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.geom.Point
 * JD-Core Version:    0.6.2
 */