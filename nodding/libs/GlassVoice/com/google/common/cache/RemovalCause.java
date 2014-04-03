package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public enum RemovalCause
{
  static
  {
    // Byte code:
    //   0: new 19	com/google/common/cache/RemovalCause$1
    //   3: dup
    //   4: ldc 20
    //   6: iconst_0
    //   7: invokespecial 24	com/google/common/cache/RemovalCause$1:<init>	(Ljava/lang/String;I)V
    //   10: putstatic 26	com/google/common/cache/RemovalCause:EXPLICIT	Lcom/google/common/cache/RemovalCause;
    //   13: new 28	com/google/common/cache/RemovalCause$2
    //   16: dup
    //   17: ldc 29
    //   19: iconst_1
    //   20: invokespecial 30	com/google/common/cache/RemovalCause$2:<init>	(Ljava/lang/String;I)V
    //   23: putstatic 32	com/google/common/cache/RemovalCause:REPLACED	Lcom/google/common/cache/RemovalCause;
    //   26: new 34	com/google/common/cache/RemovalCause$3
    //   29: dup
    //   30: ldc 35
    //   32: iconst_2
    //   33: invokespecial 36	com/google/common/cache/RemovalCause$3:<init>	(Ljava/lang/String;I)V
    //   36: putstatic 38	com/google/common/cache/RemovalCause:COLLECTED	Lcom/google/common/cache/RemovalCause;
    //   39: new 40	com/google/common/cache/RemovalCause$4
    //   42: dup
    //   43: ldc 41
    //   45: iconst_3
    //   46: invokespecial 42	com/google/common/cache/RemovalCause$4:<init>	(Ljava/lang/String;I)V
    //   49: putstatic 44	com/google/common/cache/RemovalCause:EXPIRED	Lcom/google/common/cache/RemovalCause;
    //   52: new 46	com/google/common/cache/RemovalCause$5
    //   55: dup
    //   56: ldc 47
    //   58: iconst_4
    //   59: invokespecial 48	com/google/common/cache/RemovalCause$5:<init>	(Ljava/lang/String;I)V
    //   62: putstatic 50	com/google/common/cache/RemovalCause:SIZE	Lcom/google/common/cache/RemovalCause;
    //   65: iconst_5
    //   66: anewarray 2	com/google/common/cache/RemovalCause
    //   69: astore_0
    //   70: aload_0
    //   71: iconst_0
    //   72: getstatic 26	com/google/common/cache/RemovalCause:EXPLICIT	Lcom/google/common/cache/RemovalCause;
    //   75: aastore
    //   76: aload_0
    //   77: iconst_1
    //   78: getstatic 32	com/google/common/cache/RemovalCause:REPLACED	Lcom/google/common/cache/RemovalCause;
    //   81: aastore
    //   82: aload_0
    //   83: iconst_2
    //   84: getstatic 38	com/google/common/cache/RemovalCause:COLLECTED	Lcom/google/common/cache/RemovalCause;
    //   87: aastore
    //   88: aload_0
    //   89: iconst_3
    //   90: getstatic 44	com/google/common/cache/RemovalCause:EXPIRED	Lcom/google/common/cache/RemovalCause;
    //   93: aastore
    //   94: aload_0
    //   95: iconst_4
    //   96: getstatic 50	com/google/common/cache/RemovalCause:SIZE	Lcom/google/common/cache/RemovalCause;
    //   99: aastore
    //   100: aload_0
    //   101: putstatic 52	com/google/common/cache/RemovalCause:$VALUES	[Lcom/google/common/cache/RemovalCause;
    //   104: return
  }

  abstract boolean wasEvicted();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.RemovalCause
 * JD-Core Version:    0.6.2
 */