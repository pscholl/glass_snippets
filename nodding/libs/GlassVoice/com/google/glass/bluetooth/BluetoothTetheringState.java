package com.google.glass.bluetooth;

import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;
import android.content.Context;
import android.content.Intent;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.SafeBroadcastReceiver;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class BluetoothTetheringState
  implements Closeable
{
  private static final FormattingLogger logger;
  private static final FormattingLogger stateChangeReceiverLogger;
  private final Context context;
  private final Set<Listener> listeners;
  private BluetoothProfile profile;
  private final BluetoothProfile.ServiceListener serviceListener = new BluetoothProfile.ServiceListener()
  {
    public void onServiceConnected(int paramAnonymousInt, BluetoothProfile paramAnonymousBluetoothProfile)
    {
      BluetoothTetheringState.access$302(BluetoothTetheringState.this, paramAnonymousBluetoothProfile);
      int i = BluetoothTetheringState.this.getState();
      Iterator localIterator = BluetoothTetheringState.this.waitingListeners.iterator();
      while (localIterator.hasNext())
        ((BluetoothTetheringState.Listener)localIterator.next()).onBluetoothTetheringStateChanged(i);
      BluetoothTetheringState.this.listeners.addAll(BluetoothTetheringState.this.waitingListeners);
      BluetoothTetheringState.this.waitingListeners.clear();
    }

    public void onServiceDisconnected(int paramAnonymousInt)
    {
      BluetoothTetheringState.access$302(BluetoothTetheringState.this, null);
    }
  };
  private final SafeBroadcastReceiver stateChangeReceiver = new SafeBroadcastReceiver()
  {
    public FormattingLogger getLogger()
    {
      return BluetoothTetheringState.stateChangeReceiverLogger;
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (!"android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED".equals(paramAnonymousIntent.getAction()));
      while (true)
      {
        return;
        int i = paramAnonymousIntent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
        if (i != 2)
          i = 0;
        BluetoothTetheringState.this.listeners.addAll(BluetoothTetheringState.this.waitingListeners);
        BluetoothTetheringState.this.waitingListeners.clear();
        Iterator localIterator = BluetoothTetheringState.this.listeners.iterator();
        while (localIterator.hasNext())
          ((BluetoothTetheringState.Listener)localIterator.next()).onBluetoothTetheringStateChanged(i);
      }
    }
  };
  private final Set<Listener> waitingListeners;

  static
  {
    if (!BluetoothTetheringState.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      logger = FormattingLoggers.getContextLogger();
      stateChangeReceiverLogger = FormattingLoggers.getLogger(logger, "stateChangeReceiver");
      return;
    }
  }

  public BluetoothTetheringState(Context paramContext)
  {
    this.context = paramContext;
    this.listeners = new HashSet();
    this.waitingListeners = new HashSet();
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter == null)
      return;
    localBluetoothAdapter.getProfileProxy(paramContext, this.serviceListener, 5);
  }

  private int getState()
  {
    assert (this.profile != null);
    if (!this.profile.getConnectedDevices().isEmpty());
    for (int i = 2; ; i = 0)
    {
      if (i != 2)
        i = 0;
      return i;
    }
  }

  public void addListener(Listener paramListener)
  {
    if ((this.listeners.contains(paramListener)) || (this.waitingListeners.contains(paramListener)));
    while (true)
    {
      return;
      if (this.profile == null)
        this.waitingListeners.add(paramListener);
      while (this.listeners.size() + this.waitingListeners.size() == 1)
      {
        this.stateChangeReceiver.register(this.context, new String[] { "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED" });
        return;
        this.listeners.add(paramListener);
        paramListener.onBluetoothTetheringStateChanged(getState());
      }
    }
  }

  public void close()
    throws IOException
  {
    if (this.profile == null);
    BluetoothAdapter localBluetoothAdapter;
    do
    {
      return;
      localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    }
    while (localBluetoothAdapter == null);
    localBluetoothAdapter.closeProfileProxy(5, this.profile);
  }

  public void removeListener(Listener paramListener)
  {
    this.listeners.remove(paramListener);
    this.waitingListeners.remove(paramListener);
    if (this.listeners.size() + this.waitingListeners.size() == 0)
      this.stateChangeReceiver.unregister(this.context);
  }

  public static abstract interface Listener
  {
    public abstract void onBluetoothTetheringStateChanged(int paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothTetheringState
 * JD-Core Version:    0.6.2
 */