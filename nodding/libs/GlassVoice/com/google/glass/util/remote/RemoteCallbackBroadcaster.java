package com.google.glass.util.remote;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.concurrent.atomic.AtomicLong;

public abstract class RemoteCallbackBroadcaster<Callback extends IInterface>
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final RemoteCallbackList<Callback> callbacks = new RemoteCallbackList();
  private final AtomicLong registrationCount = new AtomicLong(0L);

  private void broadcastToAll(RemoteCallbackOperation<Callback> paramRemoteCallbackOperation)
  {
    int i = beginBroadcast();
    int j = 0;
    while (true)
      if (j < i)
        try
        {
          paramRemoteCallbackOperation.doOperation(this.callbacks.getBroadcastItem(j));
          j++;
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            logger.e(localRemoteException, "Remote callback exception", new Object[0]);
        }
    finishBroadcast();
  }

  private void broadcastToTopOfStack(RemoteCallbackOperation<Callback> paramRemoteCallbackOperation)
  {
    int i = beginBroadcast();
    long l1;
    IInterface localIInterface;
    int j;
    if (i > 0)
    {
      l1 = -9223372036854775808L;
      localIInterface = null;
      j = 0;
    }
    while (true)
    {
      if (j < i);
      try
      {
        long l2 = ((Long)this.callbacks.getBroadcastCookie(j)).longValue();
        if (l2 > l1)
        {
          l1 = l2;
          localIInterface = this.callbacks.getBroadcastItem(j);
          break label100;
          paramRemoteCallbackOperation.doOperation(localIInterface);
          finishBroadcast();
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          logger.e(localRemoteException, "Remote callback exception", new Object[0]);
        label100: j++;
      }
    }
  }

  protected final int beginBroadcast()
  {
    return this.callbacks.beginBroadcast();
  }

  public final void close()
  {
    this.callbacks.kill();
  }

  // ERROR //
  public final void doOperation(BroadcastTo paramBroadcastTo, RemoteCallbackOperation<Callback> paramRemoteCallbackOperation)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 91	com/google/glass/util/remote/RemoteCallbackBroadcaster$1:$SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo	[I
    //   5: aload_1
    //   6: invokevirtual 96	com/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo:ordinal	()I
    //   9: iaload
    //   10: tableswitch	default:+22 -> 32, 1:+54->64, 2:+62->72
    //   33: nop
    //   34: fadd
    //   35: dup
    //   36: new 100	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   43: ldc 103
    //   45: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_1
    //   49: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 117	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   58: athrow
    //   59: astore_3
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_3
    //   63: athrow
    //   64: aload_0
    //   65: aload_2
    //   66: invokespecial 119	com/google/glass/util/remote/RemoteCallbackBroadcaster:broadcastToAll	(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    //   69: aload_0
    //   70: monitorexit
    //   71: return
    //   72: aload_0
    //   73: aload_2
    //   74: invokespecial 121	com/google/glass/util/remote/RemoteCallbackBroadcaster:broadcastToTopOfStack	(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    //   77: goto -8 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   2	32	59	finally
    //   32	59	59	finally
    //   64	69	59	finally
    //   72	77	59	finally
  }

  public final void doOperation(RemoteCallbackOperation<Callback> paramRemoteCallbackOperation)
  {
    try
    {
      doOperation(BroadcastTo.ALL, paramRemoteCallbackOperation);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected final void finishBroadcast()
  {
    this.callbacks.finishBroadcast();
  }

  public abstract String getTag();

  protected void onRegister(Callback paramCallback)
  {
  }

  protected void onUnregister(Callback paramCallback)
  {
  }

  public final boolean register(Callback paramCallback)
  {
    boolean bool = this.callbacks.register(paramCallback, Long.valueOf(this.registrationCount.getAndIncrement()));
    if (bool)
    {
      logger.d("Registered callback", new Object[0]);
      onRegister(paramCallback);
      return bool;
    }
    logger.d("Failed to register callback", new Object[0]);
    return bool;
  }

  public final boolean unregister(Callback paramCallback)
  {
    boolean bool = this.callbacks.unregister(paramCallback);
    if (bool)
    {
      logger.d("Unregistered callback", new Object[0]);
      onUnregister(paramCallback);
      return bool;
    }
    logger.d("Failed to unregister callback", new Object[0]);
    return bool;
  }

  protected static enum BroadcastTo
  {
    static
    {
      BroadcastTo[] arrayOfBroadcastTo = new BroadcastTo[2];
      arrayOfBroadcastTo[0] = ALL;
      arrayOfBroadcastTo[1] = TOP_OF_STACK;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.remote.RemoteCallbackBroadcaster
 * JD-Core Version:    0.6.2
 */