package com.google.glass.sound;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ISoundManagerService extends IInterface
{
  public abstract boolean isMuted()
    throws RemoteException;

  public abstract int playSound(String paramString)
    throws RemoteException;

  public abstract void setMuted(boolean paramBoolean)
    throws RemoteException;

  public abstract void stopSound(int paramInt)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ISoundManagerService
  {
    private static final String DESCRIPTOR = "com.google.glass.sound.ISoundManagerService";
    static final int TRANSACTION_isMuted = 4;
    static final int TRANSACTION_playSound = 1;
    static final int TRANSACTION_setMuted = 3;
    static final int TRANSACTION_stopSound = 2;

    public Stub()
    {
      attachInterface(this, "com.google.glass.sound.ISoundManagerService");
    }

    public static ISoundManagerService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.sound.ISoundManagerService");
      if ((localIInterface != null) && ((localIInterface instanceof ISoundManagerService)))
        return (ISoundManagerService)localIInterface;
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
        paramParcel2.writeString("com.google.glass.sound.ISoundManagerService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.sound.ISoundManagerService");
        int k = playSound(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(k);
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.sound.ISoundManagerService");
        stopSound(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.sound.ISoundManagerService");
        int j = paramParcel1.readInt();
        boolean bool2 = false;
        if (j != 0)
          bool2 = true;
        setMuted(bool2);
        paramParcel2.writeNoException();
        return true;
      case 4:
      }
      paramParcel1.enforceInterface("com.google.glass.sound.ISoundManagerService");
      boolean bool1 = isMuted();
      paramParcel2.writeNoException();
      int i = 0;
      if (bool1)
        i = 1;
      paramParcel2.writeInt(i);
      return true;
    }

    private static class Proxy
      implements ISoundManagerService
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
        return "com.google.glass.sound.ISoundManagerService";
      }

      public boolean isMuted()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.sound.ISoundManagerService");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0)
            bool = true;
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int playSound(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.sound.ISoundManagerService");
          localParcel1.writeString(paramString);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void setMuted(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.sound.ISoundManagerService");
          int i = 0;
          if (paramBoolean)
            i = 1;
          localParcel1.writeInt(i);
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void stopSound(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.sound.ISoundManagerService");
          localParcel1.writeInt(paramInt);
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
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.sound.ISoundManagerService
 * JD-Core Version:    0.6.2
 */