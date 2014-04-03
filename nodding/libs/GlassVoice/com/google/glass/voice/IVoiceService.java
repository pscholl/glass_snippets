package com.google.glass.voice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.glass.voice.network.IVoiceInputCallback;
import com.google.glass.voice.network.IVoiceInputCallback.Stub;

public abstract interface IVoiceService extends IInterface
{
  public abstract void addListener(IVoiceServiceListener paramIVoiceServiceListener)
    throws RemoteException;

  public abstract void addVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
    throws RemoteException;

  public abstract void endpointNetworkRecognizer()
    throws RemoteException;

  public abstract VoiceConfig getConfig()
    throws RemoteException;

  public abstract void removeListener(IVoiceServiceListener paramIVoiceServiceListener)
    throws RemoteException;

  public abstract void removeVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
    throws RemoteException;

  public abstract void setConfig(VoiceConfig paramVoiceConfig, boolean paramBoolean)
    throws RemoteException;

  public abstract void setWantAudioData(boolean paramBoolean)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IVoiceService
  {
    private static final String DESCRIPTOR = "com.google.glass.voice.IVoiceService";
    static final int TRANSACTION_addListener = 1;
    static final int TRANSACTION_addVoiceInputCallback = 5;
    static final int TRANSACTION_endpointNetworkRecognizer = 7;
    static final int TRANSACTION_getConfig = 4;
    static final int TRANSACTION_removeListener = 2;
    static final int TRANSACTION_removeVoiceInputCallback = 6;
    static final int TRANSACTION_setConfig = 3;
    static final int TRANSACTION_setWantAudioData = 8;

    public Stub()
    {
      attachInterface(this, "com.google.glass.voice.IVoiceService");
    }

    public static IVoiceService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.voice.IVoiceService");
      if ((localIInterface != null) && ((localIInterface instanceof IVoiceService)))
        return (IVoiceService)localIInterface;
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
        paramParcel2.writeString("com.google.glass.voice.IVoiceService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        addListener(IVoiceServiceListener.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        removeListener(IVoiceServiceListener.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        if (paramParcel1.readInt() != 0);
        for (VoiceConfig localVoiceConfig2 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1); ; localVoiceConfig2 = null)
        {
          int i = paramParcel1.readInt();
          boolean bool2 = false;
          if (i != 0)
            bool2 = true;
          setConfig(localVoiceConfig2, bool2);
          paramParcel2.writeNoException();
          return true;
        }
      case 4:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        VoiceConfig localVoiceConfig1 = getConfig();
        paramParcel2.writeNoException();
        if (localVoiceConfig1 != null)
        {
          paramParcel2.writeInt(1);
          localVoiceConfig1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        addVoiceInputCallback(IVoiceInputCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        removeVoiceInputCallback(IVoiceInputCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        endpointNetworkRecognizer();
        paramParcel2.writeNoException();
        return true;
      case 8:
      }
      paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
      if (paramParcel1.readInt() != 0);
      for (boolean bool1 = true; ; bool1 = false)
      {
        setWantAudioData(bool1);
        paramParcel2.writeNoException();
        return true;
      }
    }

    private static class Proxy
      implements IVoiceService
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public void addListener(IVoiceServiceListener paramIVoiceServiceListener)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceServiceListener != null);
          for (IBinder localIBinder = paramIVoiceServiceListener.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void addVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceInputCallback != null);
          for (IBinder localIBinder = paramIVoiceInputCallback.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(5, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public void endpointNetworkRecognizer()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public VoiceConfig getConfig()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            localVoiceConfig = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(localParcel2);
            return localVoiceConfig;
          }
          VoiceConfig localVoiceConfig = null;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getInterfaceDescriptor()
      {
        return "com.google.glass.voice.IVoiceService";
      }

      public void removeListener(IVoiceServiceListener paramIVoiceServiceListener)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceServiceListener != null);
          for (IBinder localIBinder = paramIVoiceServiceListener.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void removeVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceInputCallback != null);
          for (IBinder localIBinder = paramIVoiceInputCallback.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(6, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void setConfig(VoiceConfig paramVoiceConfig, boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        while (true)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
            if (paramVoiceConfig != null)
            {
              localParcel1.writeInt(1);
              paramVoiceConfig.writeToParcel(localParcel1, 0);
              break label106;
              localParcel1.writeInt(i);
              this.mRemote.transact(3, localParcel1, localParcel2, 0);
              localParcel2.readException();
            }
            else
            {
              localParcel1.writeInt(0);
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          label106: 
          while (!paramBoolean)
          {
            i = 0;
            break;
          }
        }
      }

      public void setWantAudioData(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          int i = 0;
          if (paramBoolean)
            i = 1;
          localParcel1.writeInt(i);
          this.mRemote.transact(8, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.glass.voice.IVoiceService
 * JD-Core Version:    0.6.2
 */