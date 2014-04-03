package com.google.glass.phone;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IPhoneCallListener extends IInterface
{
  public abstract void onCallConnected(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onCallConnecting(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onCallDisconnected(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onCallDisconnecting(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onCallError(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onCallerIdentified(PhoneCall paramPhoneCall, byte[] paramArrayOfByte)
    throws RemoteException;

  public abstract void onIncomingCallInitiated(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onOutgoingCallInitiated(PhoneCall paramPhoneCall)
    throws RemoteException;

  public abstract void onPhoneNumberSet(PhoneCall paramPhoneCall, String paramString)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IPhoneCallListener
  {
    private static final String DESCRIPTOR = "com.google.glass.phone.IPhoneCallListener";
    static final int TRANSACTION_onCallConnected = 4;
    static final int TRANSACTION_onCallConnecting = 3;
    static final int TRANSACTION_onCallDisconnected = 6;
    static final int TRANSACTION_onCallDisconnecting = 5;
    static final int TRANSACTION_onCallError = 7;
    static final int TRANSACTION_onCallerIdentified = 9;
    static final int TRANSACTION_onIncomingCallInitiated = 1;
    static final int TRANSACTION_onOutgoingCallInitiated = 2;
    static final int TRANSACTION_onPhoneNumberSet = 8;

    public Stub()
    {
      attachInterface(this, "com.google.glass.phone.IPhoneCallListener");
    }

    public static IPhoneCallListener asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.phone.IPhoneCallListener");
      if ((localIInterface != null) && ((localIInterface instanceof IPhoneCallListener)))
        return (IPhoneCallListener)localIInterface;
      return new Proxy(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.glass.phone.IPhoneCallListener");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall9 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall9 = null)
        {
          onIncomingCallInitiated(localPhoneCall9);
          paramParcel2.writeNoException();
          return true;
        }
      case 2:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall8 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall8 = null)
        {
          onOutgoingCallInitiated(localPhoneCall8);
          paramParcel2.writeNoException();
          return true;
        }
      case 3:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall7 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall7 = null)
        {
          onCallConnecting(localPhoneCall7);
          paramParcel2.writeNoException();
          return true;
        }
      case 4:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall6 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall6 = null)
        {
          onCallConnected(localPhoneCall6);
          paramParcel2.writeNoException();
          return true;
        }
      case 5:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall5 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall5 = null)
        {
          onCallDisconnecting(localPhoneCall5);
          paramParcel2.writeNoException();
          return true;
        }
      case 6:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall4 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall4 = null)
        {
          onCallDisconnected(localPhoneCall4);
          paramParcel2.writeNoException();
          return true;
        }
      case 7:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall3 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall3 = null)
        {
          onCallError(localPhoneCall3);
          paramParcel2.writeNoException();
          return true;
        }
      case 8:
        paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
        if (paramParcel1.readInt() != 0);
        for (PhoneCall localPhoneCall2 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall2 = null)
        {
          onPhoneNumberSet(localPhoneCall2, paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        }
      case 9:
      }
      paramParcel1.enforceInterface("com.google.glass.phone.IPhoneCallListener");
      if (paramParcel1.readInt() != 0);
      for (PhoneCall localPhoneCall1 = (PhoneCall)PhoneCall.CREATOR.createFromParcel(paramParcel1); ; localPhoneCall1 = null)
      {
        onCallerIdentified(localPhoneCall1, paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        return true;
      }
    }

    private static class Proxy
      implements IPhoneCallListener
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public String getInterfaceDescriptor()
      {
        return "com.google.glass.phone.IPhoneCallListener";
      }

      public void onCallConnected(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(4, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onCallConnecting(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(3, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onCallDisconnected(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(6, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onCallDisconnecting(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(5, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onCallError(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(7, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onCallerIdentified(PhoneCall paramPhoneCall, byte[] paramArrayOfByte)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            localParcel1.writeByteArray(paramArrayOfByte);
            this.mRemote.transact(9, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onIncomingCallInitiated(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onOutgoingCallInitiated(PhoneCall paramPhoneCall)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onPhoneNumberSet(PhoneCall paramPhoneCall, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.phone.IPhoneCallListener");
          if (paramPhoneCall != null)
          {
            localParcel1.writeInt(1);
            paramPhoneCall.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            localParcel1.writeString(paramString);
            this.mRemote.transact(8, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.IPhoneCallListener
 * JD-Core Version:    0.6.2
 */