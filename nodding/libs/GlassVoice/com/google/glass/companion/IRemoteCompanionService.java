package com.google.glass.companion;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IRemoteCompanionService extends IInterface
{
  public abstract void ping()
    throws RemoteException;

  public abstract void send(Bundle paramBundle)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IRemoteCompanionService
  {
    private static final String DESCRIPTOR = "com.google.glass.companion.IRemoteCompanionService";
    static final int TRANSACTION_ping = 2;
    static final int TRANSACTION_send = 1;

    public Stub()
    {
      attachInterface(this, "com.google.glass.companion.IRemoteCompanionService");
    }

    public static IRemoteCompanionService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.companion.IRemoteCompanionService");
      if ((localIInterface != null) && ((localIInterface instanceof IRemoteCompanionService)))
        return (IRemoteCompanionService)localIInterface;
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
        paramParcel2.writeString("com.google.glass.companion.IRemoteCompanionService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.companion.IRemoteCompanionService");
        if (paramParcel1.readInt() != 0);
        for (Bundle localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle = null)
        {
          send(localBundle);
          paramParcel2.writeNoException();
          return true;
        }
      case 2:
      }
      paramParcel1.enforceInterface("com.google.glass.companion.IRemoteCompanionService");
      ping();
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements IRemoteCompanionService
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
        return "com.google.glass.companion.IRemoteCompanionService";
      }

      public void ping()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.companion.IRemoteCompanionService");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void send(Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.companion.IRemoteCompanionService");
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
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
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.IRemoteCompanionService
 * JD-Core Version:    0.6.2
 */