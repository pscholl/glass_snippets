package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
public enum BoundType
{
  static
  {
    // Byte code:
    //   0: new 15	com/google/common/collect/BoundType$1
    //   3: dup
    //   4: ldc 16
    //   6: iconst_0
    //   7: invokespecial 20	com/google/common/collect/BoundType$1:<init>	(Ljava/lang/String;I)V
    //   10: putstatic 22	com/google/common/collect/BoundType:OPEN	Lcom/google/common/collect/BoundType;
    //   13: new 24	com/google/common/collect/BoundType$2
    //   16: dup
    //   17: ldc 25
    //   19: iconst_1
    //   20: invokespecial 26	com/google/common/collect/BoundType$2:<init>	(Ljava/lang/String;I)V
    //   23: putstatic 28	com/google/common/collect/BoundType:CLOSED	Lcom/google/common/collect/BoundType;
    //   26: iconst_2
    //   27: anewarray 2	com/google/common/collect/BoundType
    //   30: astore_0
    //   31: aload_0
    //   32: iconst_0
    //   33: getstatic 22	com/google/common/collect/BoundType:OPEN	Lcom/google/common/collect/BoundType;
    //   36: aastore
    //   37: aload_0
    //   38: iconst_1
    //   39: getstatic 28	com/google/common/collect/BoundType:CLOSED	Lcom/google/common/collect/BoundType;
    //   42: aastore
    //   43: aload_0
    //   44: putstatic 30	com/google/common/collect/BoundType:$VALUES	[Lcom/google/common/collect/BoundType;
    //   47: return
  }

  static BoundType forBoolean(boolean paramBoolean)
  {
    if (paramBoolean)
      return CLOSED;
    return OPEN;
  }

  abstract BoundType flip();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BoundType
 * JD-Core Version:    0.6.2
 */