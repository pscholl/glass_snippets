package com.x.google.debug;

import com.x.google.common.util.text.TextUtil;

public abstract class SimpleLogger
  implements Logger
{
  protected static final String FORBIDDEN_KEYWORDS = "${LOG_FORBIDDEN_KEY}";
  protected static final String MASK_KEYWORDS = "${LOG_MASK_KEY}";
  private int activationLevel = Log.parseLogLevel(5);
  private StringBuffer buffer = new StringBuffer(256);
  private final String[] forbiddenKeys = getKeywords("${LOG_FORBIDDEN_KEY}");
  private final boolean logThreads = Log.logThreads();
  private final boolean logTime = Log.logTime();
  private final String[] maskKeys = getKeywords("${LOG_MASK_KEY}");
  private final long startTime = System.currentTimeMillis();

  private String censure(String paramString)
  {
    int k;
    if (this.forbiddenKeys != null)
    {
      k = 0;
      if (k < this.forbiddenKeys.length)
        if (paramString.indexOf(this.forbiddenKeys[k]) != -1)
          paramString = this.forbiddenKeys[k];
    }
    while (true)
    {
      return paramString;
      k++;
      break;
      if (this.maskKeys != null)
        for (int i = 0; i < this.maskKeys.length; i++)
          while (true)
          {
            int j = paramString.indexOf(this.maskKeys[i]);
            if (j == -1)
              break;
            paramString = paramString.substring(0, j) + "XXX" + paramString.substring(j + this.maskKeys[i].length(), paramString.length());
          }
    }
  }

  public void flush()
  {
  }

  protected String[] getKeywords(String paramString)
  {
    if (DebugUtil.isAntPropertyExpanded(paramString))
      return TextUtil.split(paramString, ",");
    return null;
  }

  public int getLogTime()
  {
    return (int)(System.currentTimeMillis() - this.startTime);
  }

  public String getThreadId()
  {
    return Thread.currentThread().toString();
  }

  public boolean isLoggable(int paramInt, String paramString1, String paramString2)
  {
    return this.activationLevel <= paramInt;
  }

  // ERROR //
  public void log(Object paramObject, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	com/x/google/debug/SimpleLogger:activationLevel	I
    //   4: iload_2
    //   5: if_icmpgt +177 -> 182
    //   8: aload_0
    //   9: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   12: astore 6
    //   14: aload 6
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   21: bipush 91
    //   23: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   26: iload_2
    //   27: invokestatic 133	com/x/google/debug/Log:getLevelName	(I)Ljava/lang/String;
    //   30: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   33: pop
    //   34: aload_0
    //   35: getfield 49	com/x/google/debug/SimpleLogger:logThreads	Z
    //   38: ifeq +20 -> 58
    //   41: aload_0
    //   42: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   45: bipush 58
    //   47: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   50: aload_0
    //   51: invokevirtual 138	com/x/google/debug/SimpleLogger:getThreadId	()Ljava/lang/String;
    //   54: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   57: pop
    //   58: aload_0
    //   59: getfield 53	com/x/google/debug/SimpleLogger:logTime	Z
    //   62: ifeq +20 -> 82
    //   65: aload_0
    //   66: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   69: bipush 58
    //   71: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   74: aload_0
    //   75: invokevirtual 140	com/x/google/debug/SimpleLogger:getLogTime	()I
    //   78: invokevirtual 143	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   81: pop
    //   82: aload_0
    //   83: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   86: bipush 93
    //   88: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   91: pop
    //   92: aload_3
    //   93: ifnull +42 -> 135
    //   96: aload_0
    //   97: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   100: bipush 32
    //   102: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   105: aload_3
    //   106: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   109: bipush 35
    //   111: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   114: aload 4
    //   116: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   119: pop
    //   120: aload_0
    //   121: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   124: bipush 64
    //   126: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   129: iload 5
    //   131: invokevirtual 143	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   134: pop
    //   135: aload_0
    //   136: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   139: ldc 145
    //   141: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   144: aload_0
    //   145: aload_1
    //   146: invokevirtual 146	java/lang/Object:toString	()Ljava/lang/String;
    //   149: invokespecial 148	com/x/google/debug/SimpleLogger:censure	(Ljava/lang/String;)Ljava/lang/String;
    //   152: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   155: pop
    //   156: aload_0
    //   157: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   160: invokevirtual 149	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   163: astore 14
    //   165: aload_0
    //   166: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   169: iconst_0
    //   170: invokevirtual 152	java/lang/StringBuffer:setLength	(I)V
    //   173: aload 6
    //   175: monitorexit
    //   176: aload_0
    //   177: aload 14
    //   179: invokevirtual 155	com/x/google/debug/SimpleLogger:log	(Ljava/lang/String;)V
    //   182: return
    //   183: astore 7
    //   185: aload_0
    //   186: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   189: iconst_0
    //   190: invokevirtual 152	java/lang/StringBuffer:setLength	(I)V
    //   193: aload 7
    //   195: athrow
    //   196: astore 8
    //   198: aload 6
    //   200: monitorexit
    //   201: aload 8
    //   203: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   17	58	183	finally
    //   58	82	183	finally
    //   82	92	183	finally
    //   96	135	183	finally
    //   135	165	183	finally
    //   165	176	196	finally
    //   185	196	196	finally
    //   198	201	196	finally
  }

  public abstract void log(String paramString);

  // ERROR //
  public void logThrowable(Object paramObject, java.lang.Throwable paramThrowable, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	com/x/google/debug/SimpleLogger:activationLevel	I
    //   4: iload_3
    //   5: if_icmpgt +159 -> 164
    //   8: aload_0
    //   9: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   12: astore 7
    //   14: aload 7
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   21: bipush 91
    //   23: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   26: iload_3
    //   27: invokestatic 133	com/x/google/debug/Log:getLevelName	(I)Ljava/lang/String;
    //   30: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   33: pop
    //   34: aload_0
    //   35: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   38: ldc 159
    //   40: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   43: pop
    //   44: aload 4
    //   46: ifnull +43 -> 89
    //   49: aload_0
    //   50: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   53: bipush 32
    //   55: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   58: aload 4
    //   60: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   63: bipush 35
    //   65: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   68: aload 5
    //   70: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   73: pop
    //   74: aload_0
    //   75: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   78: bipush 64
    //   80: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   83: iload 6
    //   85: invokevirtual 143	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   88: pop
    //   89: aload_0
    //   90: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   93: ldc 145
    //   95: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   98: aload_1
    //   99: invokevirtual 162	java/lang/StringBuffer:append	(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   102: pop
    //   103: aload_0
    //   104: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   107: ldc 145
    //   109: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   112: aload_2
    //   113: invokevirtual 162	java/lang/StringBuffer:append	(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   116: pop
    //   117: aload_2
    //   118: ifnull +20 -> 138
    //   121: aload_0
    //   122: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   125: ldc 145
    //   127: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   130: aload_2
    //   131: invokestatic 168	com/x/google/debug/StackTraceUtil:getCallStack	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   134: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   137: pop
    //   138: aload_0
    //   139: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   142: invokevirtual 149	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   145: astore 17
    //   147: aload_0
    //   148: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   151: iconst_0
    //   152: invokevirtual 152	java/lang/StringBuffer:setLength	(I)V
    //   155: aload 7
    //   157: monitorexit
    //   158: aload_0
    //   159: aload 17
    //   161: invokevirtual 155	com/x/google/debug/SimpleLogger:log	(Ljava/lang/String;)V
    //   164: return
    //   165: astore 8
    //   167: aload_0
    //   168: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   171: iconst_0
    //   172: invokevirtual 152	java/lang/StringBuffer:setLength	(I)V
    //   175: aload 8
    //   177: athrow
    //   178: astore 9
    //   180: aload 7
    //   182: monitorexit
    //   183: aload 9
    //   185: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   17	44	165	finally
    //   49	89	165	finally
    //   89	117	165	finally
    //   121	138	165	finally
    //   138	147	165	finally
    //   147	158	178	finally
    //   167	178	178	finally
    //   180	183	178	finally
  }

  // ERROR //
  public void logTimer(String paramString1, long paramLong, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	com/x/google/debug/SimpleLogger:activationLevel	I
    //   4: iload 4
    //   6: if_icmpgt +151 -> 157
    //   9: aload_0
    //   10: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   13: astore 8
    //   15: aload 8
    //   17: monitorenter
    //   18: aload_0
    //   19: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   22: bipush 91
    //   24: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   27: iload 4
    //   29: invokestatic 133	com/x/google/debug/Log:getLevelName	(I)Ljava/lang/String;
    //   32: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   35: pop
    //   36: aload_0
    //   37: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   40: ldc 172
    //   42: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   45: pop
    //   46: aload 5
    //   48: ifnull +43 -> 91
    //   51: aload_0
    //   52: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   55: bipush 32
    //   57: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   60: aload 5
    //   62: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   65: bipush 35
    //   67: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   70: aload 6
    //   72: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   75: pop
    //   76: aload_0
    //   77: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   80: bipush 64
    //   82: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   85: iload 7
    //   87: invokevirtual 143	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   90: pop
    //   91: aload_0
    //   92: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   95: ldc 145
    //   97: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   100: aload_1
    //   101: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   104: bipush 61
    //   106: invokevirtual 129	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   109: astore 15
    //   111: lload_2
    //   112: lconst_0
    //   113: lcmp
    //   114: iflt +44 -> 158
    //   117: lload_2
    //   118: invokestatic 176	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   121: astore 16
    //   123: aload 15
    //   125: aload 16
    //   127: invokevirtual 136	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   130: pop
    //   131: aload_0
    //   132: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   135: invokevirtual 149	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   138: astore 18
    //   140: aload_0
    //   141: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   144: iconst_0
    //   145: invokevirtual 152	java/lang/StringBuffer:setLength	(I)V
    //   148: aload 8
    //   150: monitorexit
    //   151: aload_0
    //   152: aload 18
    //   154: invokevirtual 155	com/x/google/debug/SimpleLogger:log	(Ljava/lang/String;)V
    //   157: return
    //   158: ldc 178
    //   160: astore 16
    //   162: goto -39 -> 123
    //   165: astore 9
    //   167: aload_0
    //   168: getfield 36	com/x/google/debug/SimpleLogger:buffer	Ljava/lang/StringBuffer;
    //   171: iconst_0
    //   172: invokevirtual 152	java/lang/StringBuffer:setLength	(I)V
    //   175: aload 9
    //   177: athrow
    //   178: astore 10
    //   180: aload 8
    //   182: monitorexit
    //   183: aload 10
    //   185: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   18	46	165	finally
    //   51	91	165	finally
    //   91	111	165	finally
    //   117	123	165	finally
    //   123	140	165	finally
    //   140	151	178	finally
    //   167	178	178	finally
    //   180	183	178	finally
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.SimpleLogger
 * JD-Core Version:    0.6.2
 */