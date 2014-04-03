package com.google.glass.companion;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.bluetooth.BluetoothDeviceWrapper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.HashSet;
import java.util.Set;

public class UuidFetcher
{
  private static final IntentFilter BT_UUID_RECEIVER_INTENT = new IntentFilter("android.bluetooth.device.action.UUID");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final BroadcastReceiver btUuidReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      BluetoothDevice localBluetoothDevice;
      if (("android.bluetooth.device.action.UUID".equals(paramAnonymousIntent.getAction())) && (!UuidFetcher.this.pendingAddresses.isEmpty()))
      {
        localBluetoothDevice = (BluetoothDevice)paramAnonymousIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        if (localBluetoothDevice == null)
        {
          FormattingLogger localFormattingLogger = UuidFetcher.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = UuidFetcher.this.pendingAddresses;
          localFormattingLogger.d("looking for addresses %s but got null", arrayOfObject);
        }
      }
      else
      {
        return;
      }
      UuidFetcher.this.onUuidReceived(new BluetoothDeviceWrapper(localBluetoothDevice));
    }
  };
  private final Callback callback;
  private Context context;
  private final Set<String> pendingAddresses = new HashSet();
  private boolean uuidReceiverRegistered = false;

  public UuidFetcher(Context paramContext, Callback paramCallback)
  {
    this.context = paramContext;
    this.callback = paramCallback;
  }

  public void clearPendingFetch()
  {
    Assert.assertUiThread();
    this.pendingAddresses.clear();
  }

  public boolean fetch(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    Assert.assertUiThread();
    if (paramBluetoothDeviceWrapper == null);
    while (this.pendingAddresses.contains(paramBluetoothDeviceWrapper.getAddress()))
      return false;
    this.pendingAddresses.add(paramBluetoothDeviceWrapper.getAddress());
    internalFetch(paramBluetoothDeviceWrapper);
    return true;
  }

  public boolean hasPendingFetch()
  {
    Assert.assertUiThread();
    return !this.pendingAddresses.isEmpty();
  }

  @VisibleForTesting
  void internalFetch(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    paramBluetoothDeviceWrapper.fetchUuidsWithSdp();
  }

  @VisibleForTesting
  public void onUuidReceived(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    if (!this.pendingAddresses.contains(paramBluetoothDeviceWrapper.getAddress()))
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.pendingAddresses;
      arrayOfObject[1] = paramBluetoothDeviceWrapper;
      localFormattingLogger.d("looking for addresses %s but it got %s", arrayOfObject);
      return;
    }
    this.pendingAddresses.remove(paramBluetoothDeviceWrapper.getAddress());
    this.callback.onUuidFetchCallback(paramBluetoothDeviceWrapper);
  }

  public void register()
  {
    synchronized (this.btUuidReceiver)
    {
      if (this.uuidReceiverRegistered)
        return;
      this.context.registerReceiver(this.btUuidReceiver, BT_UUID_RECEIVER_INTENT);
      this.uuidReceiverRegistered = true;
      return;
    }
  }

  public void unregister()
  {
    synchronized (this.btUuidReceiver)
    {
      if (!this.uuidReceiverRegistered)
        return;
      this.context.unregisterReceiver(this.btUuidReceiver);
      this.uuidReceiverRegistered = false;
      return;
    }
  }

  public static abstract interface Callback
  {
    public abstract void onUuidFetchCallback(BluetoothDeviceWrapper paramBluetoothDeviceWrapper);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.UuidFetcher
 * JD-Core Version:    0.6.2
 */