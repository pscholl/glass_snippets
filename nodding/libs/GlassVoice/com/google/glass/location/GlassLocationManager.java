package com.google.glass.location;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.ArrayList;
import java.util.HashMap;

public class GlassLocationManager
{
  public static final String EXTRA_LEVEL_ID = "levelId";
  public static final String EXTRA_LEVEL_NUMBER_E3 = "levelNumberE3";
  public static final String EXTRA_RECEIVER = "receiver";
  public static final String EXTRA_SATELLITES_USED_IN_FIX = "satellites";
  public static final String EXTRA_VISIBLE_SATELLITES = "visible_satellites";
  public static final String REMOTE_GPS_PROVIDER = "remote_gps";
  public static final String REMOTE_NETWORK_PROVIDER = "remote_network";
  private static GlassLocationManager instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      GlassLocationManager.this.handleConnection(paramAnonymousComponentName, paramAnonymousIBinder);
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      GlassLocationManager.this.handleDisconnection();
    }
  };
  private ConnectionState connectionState = ConnectionState.DISCONNECTED;
  private final Context context;
  private final Messenger incoming = new Messenger(new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      GlassLocationManager.this.handleIncomingMessage(paramAnonymousMessage);
    }
  });
  private final HashMap<String, Location> lastKnownLocations = new HashMap();
  private final ArrayList<ListenerRecord> listeners = new ArrayList();
  private int nextListenerId = 1;
  private Messenger outgoing = null;
  private final LocationManager systemLocationManager;

  private GlassLocationManager(Context paramContext)
  {
    this.context = paramContext;
    this.systemLocationManager = ((LocationManager)paramContext.getSystemService("location"));
  }

  private void connectIfNecessary()
  {
    try
    {
      if (this.connectionState == ConnectionState.DISCONNECTED)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.context.getPackageName();
        localFormattingLogger.i("Opening connection to LocationService from: %s", arrayOfObject);
        Intent localIntent = new Intent();
        localIntent.setComponent(LocationConstants.SERVICE_COMPONENT);
        if (!this.context.bindService(localIntent, this.connection, 1))
          break label85;
        this.connectionState = ConnectionState.CONNECTING;
      }
      while (true)
      {
        return;
        label85: logger.w("bindService() failed. Remaining disconnected.", new Object[0]);
      }
    }
    finally
    {
    }
  }

  public static GlassLocationManager getInstance()
  {
    try
    {
      if (instance == null)
        throw new IllegalAccessError("GlassLocationManager was not initialised.");
    }
    finally
    {
    }
    instance.connectIfNecessary();
    return instance;
  }

  private void handleConnection(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      Assert.assertUiThread();
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramComponentName.getClassName();
      localFormattingLogger.d("Connected to %s", arrayOfObject);
      this.outgoing = new Messenger(paramIBinder);
      this.connectionState = ConnectionState.CONNECTED;
      Message localMessage = Message.obtain(null, 1);
      localMessage.replyTo = this.incoming;
      Bundle localBundle = new Bundle();
      localBundle.putString("name", this.context.getPackageName());
      localMessage.setData(localBundle);
      sendMessage(localMessage);
      for (int i = 0; i < this.listeners.size(); i++)
        sendMessage(2, ((ListenerRecord)this.listeners.get(i)).request.toBundle());
      return;
    }
    finally
    {
    }
  }

  private void handleDisconnection()
  {
    try
    {
      Assert.assertUiThread();
      logger.d("Disconnected from LocationService!", new Object[0]);
      this.connectionState = ConnectionState.DISCONNECTED;
      this.outgoing = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void handleIncomingMessage(Message paramMessage)
  {
    int i = paramMessage.arg1;
    switch (paramMessage.what)
    {
    default:
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramMessage.what);
      localFormattingLogger.e("Unhandled message type: %s", arrayOfObject);
    case 101:
    }
    while (true)
    {
      return;
      Location localLocation = (Location)paramMessage.obj;
      try
      {
        this.lastKnownLocations.put(localLocation.getProvider(), localLocation);
        for (ListenerRecord localListenerRecord : snapshotListeners())
          if (localListenerRecord.request.getListenerId() == i)
            localListenerRecord.listener.onLocationChanged(localLocation);
      }
      finally
      {
      }
    }
  }

  public static void init(Context paramContext)
  {
    Assert.assertUiThread();
    if (instance == null)
      instance = new GlassLocationManager(paramContext.getApplicationContext());
  }

  private void sendMessage(int paramInt, Bundle paramBundle)
  {
    Message localMessage = Message.obtain(null, paramInt);
    localMessage.setData(paramBundle);
    sendMessage(localMessage);
  }

  private void sendMessage(Message paramMessage)
  {
    if (this.connectionState != ConnectionState.CONNECTED)
    {
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = LocationConstants.messageTypeToString(paramMessage.what);
      arrayOfObject3[1] = this.connectionState;
      localFormattingLogger3.w("Dropping message: %s, state: %s", arrayOfObject3);
      connectIfNecessary();
      return;
    }
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = LocationConstants.messageTypeToString(paramMessage.what);
    localFormattingLogger1.d("Sending message: %s", arrayOfObject1);
    try
    {
      paramMessage.arg1 = Process.myPid();
      this.outgoing.send(paramMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = LocationConstants.messageTypeToString(paramMessage.what);
      localFormattingLogger2.e("RemoteException sending message: %s", arrayOfObject2);
      handleDisconnection();
      connectIfNecessary();
    }
  }

  public static void setInstanceForTest(GlassLocationManager paramGlassLocationManager)
  {
    Assert.assertIsTest();
    instance = paramGlassLocationManager;
  }

  private ListenerRecord[] snapshotListeners()
  {
    try
    {
      ListenerRecord[] arrayOfListenerRecord = (ListenerRecord[])this.listeners.toArray(new ListenerRecord[this.listeners.size()]);
      return arrayOfListenerRecord;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void disconnect()
  {
    try
    {
      if (this.connectionState == ConnectionState.CONNECTED)
      {
        logger.i("Disconnecting...", new Object[0]);
        this.context.unbindService(this.connection);
        this.connectionState = ConnectionState.DISCONNECTING;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Location getLastKnownLocation(String paramString)
  {
    try
    {
      Location localLocation1 = (Location)this.lastKnownLocations.get(paramString);
      Location localLocation2 = this.systemLocationManager.getLastKnownLocation(paramString);
      Location localLocation3;
      if (localLocation1 != null)
      {
        if (localLocation2 != null)
        {
          long l1 = localLocation2.getTime();
          long l2 = localLocation1.getTime();
          if (l1 <= l2);
        }
      }
      else
      {
        localLocation3 = localLocation2;
        if (localLocation3 != null)
          break label77;
      }
      label77: for (Location localLocation4 = null; ; localLocation4 = new Location(localLocation3))
      {
        return localLocation4;
        localLocation3 = localLocation1;
        break;
      }
    }
    finally
    {
    }
  }

  public void removeUpdates(LocationListener paramLocationListener)
  {
    try
    {
      for (int i = -1 + this.listeners.size(); i >= 0; i--)
        if (((ListenerRecord)this.listeners.get(i)).listener == paramLocationListener)
          sendMessage(3, ((ListenerRecord)this.listeners.remove(i)).request.toBundle());
      return;
    }
    finally
    {
    }
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, LocationListener paramLocationListener)
  {
    try
    {
      int i = Process.myPid();
      int j = this.nextListenerId;
      this.nextListenerId = (j + 1);
      ListenerRecord localListenerRecord = new ListenerRecord(new LocationRequest(i, j, paramString, paramLong, paramFloat), paramLocationListener);
      this.listeners.add(localListenerRecord);
      sendMessage(2, localListenerRecord.request.toBundle());
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  @VisibleForTesting
  public void setLastKnownLocation(String paramString, Location paramLocation)
  {
    Assert.assertIsTest();
    this.lastKnownLocations.put(paramString, paramLocation);
  }

  private static enum ConnectionState
  {
    static
    {
      CONNECTING = new ConnectionState("CONNECTING", 1);
      CONNECTED = new ConnectionState("CONNECTED", 2);
      DISCONNECTING = new ConnectionState("DISCONNECTING", 3);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[4];
      arrayOfConnectionState[0] = DISCONNECTED;
      arrayOfConnectionState[1] = CONNECTING;
      arrayOfConnectionState[2] = CONNECTED;
      arrayOfConnectionState[3] = DISCONNECTING;
    }
  }

  private static class ListenerRecord
  {
    final LocationListener listener;
    final LocationRequest request;

    ListenerRecord(LocationRequest paramLocationRequest, LocationListener paramLocationListener)
    {
      this.request = paramLocationRequest;
      this.listener = paramLocationListener;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.location.GlassLocationManager
 * JD-Core Version:    0.6.2
 */