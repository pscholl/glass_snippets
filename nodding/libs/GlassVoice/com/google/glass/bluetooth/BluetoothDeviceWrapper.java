package com.google.glass.bluetooth;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.glass.hidden.HiddenBluetoothDevice;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

public class BluetoothDeviceWrapper
  implements Parcelable
{
  public static final String ACTION_BOND_STATE_CHANGED = "android.bluetooth.device.action.BOND_STATE_CHANGED";
  public static final String ACTION_UUID = "android.bluetooth.device.action.UUID";
  public static final int BOND_BONDED = 12;
  public static final int BOND_BONDING = 11;
  public static final int BOND_NONE = 10;
  public static final Parcelable.Creator<BluetoothDeviceWrapper> CREATOR = new Parcelable.Creator()
  {
    public BluetoothDeviceWrapper createFromParcel(Parcel paramAnonymousParcel)
    {
      return new BluetoothDeviceWrapper(paramAnonymousParcel, null);
    }

    public BluetoothDeviceWrapper[] newArray(int paramAnonymousInt)
    {
      return new BluetoothDeviceWrapper[paramAnonymousInt];
    }
  };
  public static final int DISCOVERABLE_TIMEOUT_IN_SECONDS = 0;
  public static final String EXTRA_BOND_STATE = "android.bluetooth.device.extra.BOND_STATE";
  public static final String EXTRA_DEVICE = "android.bluetooth.device.extra.DEVICE";
  private static final String GOOGLE_BLUETOOTH_VENDOR_PREFIX_1 = "00:1A:11";
  private static final String GOOGLE_BLUETOOTH_VENDOR_PREFIX_2 = "F8:8F:CA";
  private static final ParcelUuid IDENTITY_PARCEL_UUID;
  public static final int MYGLASS_CONNECTION_TYPE_MULTICAST = 2;
  public static final int MYGLASS_CONNECTION_TYPE_RFCOMM = 1;
  public static final int MYGLASS_CONNECTION_TYPE_UNKNOWN = 0;
  private static final int WEARABLE_GLASSES_DEVICE_CLASS = 1812;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final BluetoothDevice device;
  private int myGlassConnectionType = 0;

  static
  {
    IDENTITY_PARCEL_UUID = new ParcelUuid(BluetoothUuids.IDENTITY_UUID);
  }

  public BluetoothDeviceWrapper(BluetoothDevice paramBluetoothDevice)
  {
    if (!Assert.isTest())
      Assert.assertNotNull(paramBluetoothDevice);
    this.device = paramBluetoothDevice;
  }

  private BluetoothDeviceWrapper(Parcel paramParcel)
  {
    this.device = ((BluetoothDevice)paramParcel.readParcelable(null));
    this.myGlassConnectionType = paramParcel.readInt();
  }

  public static BluetoothDeviceWrapper from(BluetoothDevice paramBluetoothDevice)
  {
    if (paramBluetoothDevice != null)
      return new BluetoothDeviceWrapper(paramBluetoothDevice);
    return null;
  }

  public static BluetoothDeviceWrapper readFromBundle(Bundle paramBundle, String paramString)
  {
    paramBundle.setClassLoader(BluetoothDeviceWrapper.class.getClassLoader());
    return (BluetoothDeviceWrapper)paramBundle.get(paramString);
  }

  public boolean addMyGlassConnectionType(int paramInt)
  {
    if ((paramInt & this.myGlassConnectionType) != 0)
      return true;
    this.myGlassConnectionType = (paramInt | this.myGlassConnectionType);
    return false;
  }

  public boolean createBond()
  {
    return HiddenBluetoothDevice.createBond(this.device);
  }

  public BluetoothSocket createInsecureRfcommSocketToServiceRecord(UUID paramUUID)
    throws IOException
  {
    return new BluetoothSocket(this.device.createInsecureRfcommSocketToServiceRecord(paramUUID));
  }

  public BluetoothSocket createRfcommSocketToServiceRecord(UUID paramUUID)
    throws IOException
  {
    return new BluetoothSocket(this.device.createRfcommSocketToServiceRecord(paramUUID));
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    do
    {
      return true;
      if ((paramObject == null) || (this.device == null))
        return false;
      if (paramObject.getClass() == BluetoothDevice.class)
        return this.device.equals(paramObject);
    }
    while ((paramObject.getClass() == getClass()) && (this.device.equals(((BluetoothDeviceWrapper)paramObject).getDevice())));
    return false;
  }

  public void fetchUuidsWithSdp()
  {
    this.device.fetchUuidsWithSdp();
  }

  public String getAddress()
  {
    return this.device.getAddress();
  }

  public BluetoothClass getBluetoothClass()
  {
    return this.device.getBluetoothClass();
  }

  public int getBondState()
  {
    return this.device.getBondState();
  }

  public BluetoothDevice getDevice()
  {
    return this.device;
  }

  public int getMyGlassConnectionType()
  {
    return this.myGlassConnectionType;
  }

  public String getName()
  {
    return this.device.getName();
  }

  public ParcelUuid[] getUuids()
  {
    return this.device.getUuids();
  }

  public boolean hasMyGlassMulticastConnection()
  {
    return (0x2 & this.myGlassConnectionType) != 0;
  }

  public boolean hasNap()
  {
    boolean bool = true;
    ParcelUuid[] arrayOfParcelUuid = getUuids();
    if (arrayOfParcelUuid == null)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[bool];
      arrayOfObject[0] = toString();
      localFormattingLogger.w("Don't have SDP records for %s", arrayOfObject);
    }
    label78: 
    while (true)
    {
      bool = false;
      return bool;
      int i = arrayOfParcelUuid.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label78;
        ParcelUuid localParcelUuid = arrayOfParcelUuid[j];
        if (BluetoothUuids.BLUETOOTH_NAP_UUID.equals(localParcelUuid))
          break;
      }
    }
  }

  public int hashCode()
  {
    return this.device.hashCode();
  }

  public boolean isKnownAsGlassDevice()
  {
    ParcelUuid[] arrayOfParcelUuid = getUuids();
    return (arrayOfParcelUuid != null) && (Arrays.asList(arrayOfParcelUuid).contains(IDENTITY_PARCEL_UUID));
  }

  public boolean isPhone()
  {
    BluetoothClass localBluetoothClass = getBluetoothClass();
    return (localBluetoothClass != null) && (localBluetoothClass.getMajorDeviceClass() == 512);
  }

  public boolean isProbablyKnownAsGlassDevice()
  {
    ParcelUuid[] arrayOfParcelUuid = getUuids();
    String str = getAddress();
    if ((arrayOfParcelUuid != null) && (Arrays.asList(arrayOfParcelUuid).contains(IDENTITY_PARCEL_UUID)));
    BluetoothClass localBluetoothClass;
    do
    {
      return true;
      if (str == null)
        break;
      localBluetoothClass = getBluetoothClass();
      if (localBluetoothClass == null)
        return false;
    }
    while (((0x714 & localBluetoothClass.getDeviceClass()) == 1812) && ((str.startsWith("00:1A:11")) || (str.startsWith("F8:8F:CA"))));
    return false;
    return false;
  }

  public void removeBond()
  {
    HiddenBluetoothDevice.removeBond(this.device);
  }

  public String toString()
  {
    String str = this.device.getName() + " @ [" + this.device.getAddress() + "]";
    switch (this.device.getBondState())
    {
    default:
      return str;
    case 12:
      return str + " BONDED";
    case 11:
      return str + " BONDING";
    case 10:
    }
    return str + " NONE";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.device, paramInt);
    paramParcel.writeInt(this.myGlassConnectionType);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothDeviceWrapper
 * JD-Core Version:    0.6.2
 */