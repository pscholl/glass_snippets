package com.google.glass.ongoing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.HashMap;
import java.util.Map;

public class OngoingActivityManager
{
  static final int MSG_REGISTER = 1;
  static final int MSG_UPDATE = 2;
  static final ComponentName ONGOING_ACTIVITY_SERVICE = new ComponentName("com.google.glass.home", "com.google.glass.ongoing.OngoingActivityService");
  private static OngoingActivityManager instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      OngoingActivityManager.this.handleConnection(paramAnonymousComponentName, paramAnonymousIBinder);
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      OngoingActivityManager.this.handleDisconnection();
    }
  };
  private final Object connectionLock = new Object();
  private ConnectionState connectionState = ConnectionState.DISCONNECTED;
  private final Context context;
  private final Messenger incoming = new Messenger(new Handler());
  private final MessengerFactory messengerFactory;
  private final Map<ActivityType, OngoingActivityMessage> ongoingActivities = new HashMap();
  private Messenger outgoing = null;

  private OngoingActivityManager(Context paramContext, MessengerFactory paramMessengerFactory)
  {
    this.context = paramContext;
    this.messengerFactory = paramMessengerFactory;
  }

  private void connectIfNecessary()
  {
    synchronized (this.connectionLock)
    {
      if (this.connectionState == ConnectionState.DISCONNECTED)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.context.getPackageName();
        localFormattingLogger.i("Opening connection to OngoingActivityService from: %s", arrayOfObject);
        Intent localIntent = new Intent();
        localIntent.setComponent(ONGOING_ACTIVITY_SERVICE);
        if (this.context.bindService(localIntent, this.connection, 1))
          this.connectionState = ConnectionState.CONNECTING;
      }
      else
      {
        return;
      }
      logger.w("bindService() failed.", new Object[0]);
    }
  }

  static OngoingActivityManager createForTest(Context paramContext, MessengerFactory paramMessengerFactory)
  {
    Assert.assertIsTest();
    return new OngoingActivityManager(paramContext, paramMessengerFactory);
  }

  public static OngoingActivityManager getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
        instance = new OngoingActivityManager(paramContext.getApplicationContext(), new MessengerFactory()
        {
          public Messenger create(IBinder paramAnonymousIBinder)
          {
            return new Messenger(paramAnonymousIBinder);
          }
        });
      instance.connectIfNecessary();
      return instance;
    }
    finally
    {
    }
  }

  // ERROR //
  private void handleConnection(ComponentName paramComponentName, IBinder paramIBinder)
  {
    // Byte code:
    //   0: getstatic 41	com/google/glass/ongoing/OngoingActivityManager:logger	Lcom/google/glass/logging/FormattingLogger;
    //   3: astore_3
    //   4: iconst_1
    //   5: anewarray 4	java/lang/Object
    //   8: astore 4
    //   10: aload 4
    //   12: iconst_0
    //   13: aload_1
    //   14: invokevirtual 164	android/content/ComponentName:getClassName	()Ljava/lang/String;
    //   17: aastore
    //   18: aload_3
    //   19: ldc 166
    //   21: aload 4
    //   23: invokeinterface 118 3 0
    //   28: aload_0
    //   29: getfield 77	com/google/glass/ongoing/OngoingActivityManager:connectionLock	Ljava/lang/Object;
    //   32: astore 5
    //   34: aload 5
    //   36: monitorenter
    //   37: aload_0
    //   38: aload_0
    //   39: getfield 93	com/google/glass/ongoing/OngoingActivityManager:messengerFactory	Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;
    //   42: aload_2
    //   43: invokeinterface 172 2 0
    //   48: putfield 65	com/google/glass/ongoing/OngoingActivityManager:outgoing	Landroid/os/Messenger;
    //   51: aload_0
    //   52: getstatic 175	com/google/glass/ongoing/OngoingActivityManager$ConnectionState:CONNECTED	Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    //   55: putfield 63	com/google/glass/ongoing/OngoingActivityManager:connectionState	Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    //   58: aconst_null
    //   59: iconst_1
    //   60: invokestatic 181	android/os/Message:obtain	(Landroid/os/Handler;I)Landroid/os/Message;
    //   63: astore 7
    //   65: aload 7
    //   67: aload_0
    //   68: getfield 75	com/google/glass/ongoing/OngoingActivityManager:incoming	Landroid/os/Messenger;
    //   71: putfield 184	android/os/Message:replyTo	Landroid/os/Messenger;
    //   74: getstatic 41	com/google/glass/ongoing/OngoingActivityManager:logger	Lcom/google/glass/logging/FormattingLogger;
    //   77: ldc 186
    //   79: iconst_0
    //   80: anewarray 4	java/lang/Object
    //   83: invokeinterface 189 3 0
    //   88: aload_0
    //   89: aload 7
    //   91: invokespecial 193	com/google/glass/ongoing/OngoingActivityManager:sendMessage	(Landroid/os/Message;)V
    //   94: aload 5
    //   96: monitorexit
    //   97: aload_0
    //   98: getfield 89	com/google/glass/ongoing/OngoingActivityManager:ongoingActivities	Ljava/util/Map;
    //   101: astore 9
    //   103: aload 9
    //   105: monitorenter
    //   106: aload_0
    //   107: getfield 89	com/google/glass/ongoing/OngoingActivityManager:ongoingActivities	Ljava/util/Map;
    //   110: invokeinterface 199 1 0
    //   115: invokeinterface 205 1 0
    //   120: astore 11
    //   122: aload 11
    //   124: invokeinterface 211 1 0
    //   129: ifeq +26 -> 155
    //   132: aload 11
    //   134: invokeinterface 215 1 0
    //   139: checkcast 217	com/google/glass/ongoing/OngoingActivityMessage
    //   142: astore 12
    //   144: aload_0
    //   145: aload 12
    //   147: invokespecial 221	com/google/glass/ongoing/OngoingActivityManager:sendOngoingActivityMessage	(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    //   150: goto -28 -> 122
    //   153: astore 13
    //   155: aload 9
    //   157: monitorexit
    //   158: return
    //   159: astore 8
    //   161: getstatic 41	com/google/glass/ongoing/OngoingActivityManager:logger	Lcom/google/glass/logging/FormattingLogger;
    //   164: aload 8
    //   166: ldc 223
    //   168: iconst_0
    //   169: anewarray 4	java/lang/Object
    //   172: invokeinterface 227 4 0
    //   177: goto -83 -> 94
    //   180: astore 6
    //   182: aload 5
    //   184: monitorexit
    //   185: aload 6
    //   187: athrow
    //   188: astore 10
    //   190: aload 9
    //   192: monitorexit
    //   193: aload 10
    //   195: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   144	150	153	android/os/RemoteException
    //   74	94	159	android/os/RemoteException
    //   37	74	180	finally
    //   74	94	180	finally
    //   94	97	180	finally
    //   161	177	180	finally
    //   182	185	180	finally
    //   106	122	188	finally
    //   122	144	188	finally
    //   144	150	188	finally
    //   155	158	188	finally
    //   190	193	188	finally
  }

  private void handleDisconnection()
  {
    synchronized (this.connectionLock)
    {
      this.connectionState = ConnectionState.DISCONNECTED;
      this.outgoing = null;
      logger.i("Disconnected from OngoingActivityService!", new Object[0]);
      return;
    }
  }

  private void sendMessage(Message paramMessage)
    throws RemoteException
  {
    try
    {
      paramMessage.arg1 = Process.myPid();
      this.outgoing.send(paramMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      handleDisconnection();
      throw localRemoteException;
    }
  }

  private void sendMessageOrConnect(OngoingActivityMessage paramOngoingActivityMessage)
  {
    synchronized (this.connectionLock)
    {
      ConnectionState localConnectionState1 = this.connectionState;
      ConnectionState localConnectionState2 = ConnectionState.CONNECTED;
      if (localConnectionState1 != localConnectionState2);
    }
    try
    {
      sendOngoingActivityMessage(paramOngoingActivityMessage);
      while (true)
      {
        label30: return;
        connectIfNecessary();
      }
      localObject2 = finally;
      throw localObject2;
    }
    catch (RemoteException localRemoteException)
    {
      break label30;
    }
  }

  private void sendOngoingActivityMessage(OngoingActivityMessage paramOngoingActivityMessage)
    throws RemoteException
  {
    if (ActivityType.MUSIC.equals(paramOngoingActivityMessage.getActivityType()))
      logger.v("Sending message: %s", new Object[] { paramOngoingActivityMessage });
    while (true)
    {
      Message localMessage = Message.obtain(null, 2);
      localMessage.setData(paramOngoingActivityMessage.toBundle());
      sendMessage(localMessage);
      return;
      logger.d("Sending message: %s", new Object[] { paramOngoingActivityMessage });
    }
  }

  public void hideOngoingActivity(ActivityType paramActivityType)
  {
    OngoingActivityMessage localOngoingActivityMessage = new OngoingActivityMessage(paramActivityType, OngoingActivityMessage.Operation.HIDE, null);
    synchronized (this.ongoingActivities)
    {
      this.ongoingActivities.remove(paramActivityType);
      sendMessageOrConnect(localOngoingActivityMessage);
      return;
    }
  }

  public void showOngoingActivity(ActivityType paramActivityType, Bundle paramBundle)
  {
    OngoingActivityMessage localOngoingActivityMessage = new OngoingActivityMessage(paramActivityType, OngoingActivityMessage.Operation.SHOW, paramBundle);
    synchronized (this.ongoingActivities)
    {
      this.ongoingActivities.put(paramActivityType, localOngoingActivityMessage);
      sendMessageOrConnect(localOngoingActivityMessage);
      return;
    }
  }

  public static enum ActivityType
  {
    static
    {
      NAVIGATION = new ActivityType("NAVIGATION", 2);
      HANGOUT = new ActivityType("HANGOUT", 3);
      RELOGIN = new ActivityType("RELOGIN", 4);
      MUSIC = new ActivityType("MUSIC", 5);
      ActivityType[] arrayOfActivityType = new ActivityType[6];
      arrayOfActivityType[0] = HOME;
      arrayOfActivityType[1] = PHONE_CALL;
      arrayOfActivityType[2] = NAVIGATION;
      arrayOfActivityType[3] = HANGOUT;
      arrayOfActivityType[4] = RELOGIN;
      arrayOfActivityType[5] = MUSIC;
    }
  }

  private static enum ConnectionState
  {
    static
    {
      CONNECTING = new ConnectionState("CONNECTING", 1);
      CONNECTED = new ConnectionState("CONNECTED", 2);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[3];
      arrayOfConnectionState[0] = DISCONNECTED;
      arrayOfConnectionState[1] = CONNECTING;
      arrayOfConnectionState[2] = CONNECTED;
    }
  }

  static abstract interface MessengerFactory
  {
    public abstract Messenger create(IBinder paramIBinder);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.ongoing.OngoingActivityManager
 * JD-Core Version:    0.6.2
 */