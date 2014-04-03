package com.google.glass.voice.network;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ISpeechLevelSource extends IInterface
{
  public abstract int getSpeechLevel()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ISpeechLevelSource
  {
    private static final String DESCRIPTOR = "com.google.glass.voice.network.ISpeechLevelSource";
    static final int TRANSACTION_getSpeechLevel = 1;

    public Stub()
    {
      attachInterface(this, "com.google.glass.voice.network.ISpeechLevelSource");
    }

    public static ISpeechLevelSource asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.voice.network.ISpeechLevelSource");
      if ((localIInterface != null) && ((localIInterface instanceof ISpeechLevelSource)))
        return (ISpeechLevelSource)localIInterface;
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
        paramParcel2.writeString("com.google.glass.voice.network.ISpeechLevelSource");
        return true;
      case 1:
      }
      paramParcel1.enforceInterface("com.google.glass.voice.network.ISpeechLevelSource");
      int i = getSpeechLevel();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i);
      return true;
    }

    private static class Proxy
      implements ISpeechLevelSource
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
        return "com.google.glass.voice.network.ISpeechLevelSource";
      }

      public int getSpeechLevel()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.ISpeechLevelSource");
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
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.ISpeechLevelSource
 * JD-Core Version:    0.6.2
 */