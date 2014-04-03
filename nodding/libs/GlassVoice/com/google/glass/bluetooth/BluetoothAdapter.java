package com.google.glass.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;
import android.content.Context;
import com.google.glass.predicates.Assert;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;

public class BluetoothAdapter
{
  public static final String ACTION_DISCOVERY_FINISHED = "android.bluetooth.adapter.action.DISCOVERY_FINISHED";
  public static final String ACTION_DISCOVERY_STARTED = "android.bluetooth.adapter.action.DISCOVERY_STARTED";
  public static final String ACTION_STATE_CHANGED = "android.bluetooth.adapter.action.STATE_CHANGED";
  public static final String EXTRA_STATE = "android.bluetooth.adapter.extra.STATE";
  public static final int SCAN_MODE_CONNECTABLE = 21;
  public static final int SCAN_MODE_CONNECTABLE_DISCOVERABLE = 23;
  public static final int SCAN_MODE_NONE = 20;
  public static final int STATE_OFF = 10;
  public static final int STATE_ON = 12;
  private static BluetoothAdapter instance = new BluetoothAdapter();
  private final android.bluetooth.BluetoothAdapter bluetoothAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();

  public static BluetoothAdapter getDefaultAdapter()
  {
    return instance;
  }

  public static void setBluetoothAdapterForTest(BluetoothAdapter paramBluetoothAdapter)
  {
    Assert.assertIsTest();
    instance = paramBluetoothAdapter;
  }

  public boolean cancelDiscovery()
  {
    return this.bluetoothAdapter.cancelDiscovery();
  }

  public void closeProfileProxy(int paramInt, BluetoothProfile paramBluetoothProfile)
  {
    if (this.bluetoothAdapter != null)
      this.bluetoothAdapter.closeProfileProxy(paramInt, paramBluetoothProfile);
  }

  public Set<BluetoothDeviceWrapper> getBondedDevices()
  {
    Set localSet = this.bluetoothAdapter.getBondedDevices();
    HashSet localHashSet = new HashSet(localSet.size());
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
      localHashSet.add(new BluetoothDeviceWrapper((BluetoothDevice)localIterator.next()));
    return localHashSet;
  }

  public String getName()
  {
    return this.bluetoothAdapter.getName();
  }

  public boolean getProfileProxy(Context paramContext, BluetoothProfile.ServiceListener paramServiceListener, int paramInt)
  {
    return (this.bluetoothAdapter != null) && (this.bluetoothAdapter.getProfileProxy(paramContext, paramServiceListener, paramInt));
  }

  public BluetoothDeviceWrapper getRemoteDevice(String paramString)
  {
    return new BluetoothDeviceWrapper(this.bluetoothAdapter.getRemoteDevice(paramString));
  }

  public boolean hasBluetoothAdapter()
  {
    return this.bluetoothAdapter != null;
  }

  public boolean isBluetoothEnabled()
  {
    return (this.bluetoothAdapter != null) && (this.bluetoothAdapter.isEnabled());
  }

  public boolean isDiscovering()
  {
    return this.bluetoothAdapter.isDiscovering();
  }

  public BluetoothServerSocket listenUsingRfcommWithServiceRecord(String paramString, UUID paramUUID)
    throws IOException
  {
    return new BluetoothServerSocket(this.bluetoothAdapter.listenUsingRfcommWithServiceRecord(paramString, paramUUID));
  }

  public boolean startDiscovery()
  {
    return this.bluetoothAdapter.startDiscovery();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothAdapter
 * JD-Core Version:    0.6.2
 */