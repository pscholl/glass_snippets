package com.google.glass.voice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IVoiceServiceListener extends IInterface
{
  public abstract String getTag()
    throws RemoteException;

  public abstract void onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws RemoteException;

  public abstract void onVoiceAmplitudeChanged(double paramDouble)
    throws RemoteException;

  public abstract VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand)
    throws RemoteException;

  public abstract void onVoiceConfigChanged(VoiceConfig paramVoiceConfig)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IVoiceServiceListener
  {
    private static final String DESCRIPTOR = "com.google.glass.voice.IVoiceServiceListener";
    static final int TRANSACTION_getTag = 5;
    static final int TRANSACTION_onResampledAudioData = 2;
    static final int TRANSACTION_onVoiceAmplitudeChanged = 3;
    static final int TRANSACTION_onVoiceCommand = 1;
    static final int TRANSACTION_onVoiceConfigChanged = 4;

    public Stub()
    {
      attachInterface(this, "com.google.glass.voice.IVoiceServiceListener");
    }

    public static IVoiceServiceListener asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.voice.IVoiceServiceListener");
      if ((localIInterface != null) && ((localIInterface instanceof IVoiceServiceListener)))
        return (IVoiceServiceListener)localIInterface;
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
        paramParcel2.writeString("com.google.glass.voice.IVoiceServiceListener");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceServiceListener");
        if (paramParcel1.readInt() != 0);
        for (VoiceCommand localVoiceCommand = (VoiceCommand)VoiceCommand.CREATOR.createFromParcel(paramParcel1); ; localVoiceCommand = null)
        {
          VoiceConfig localVoiceConfig2 = onVoiceCommand(localVoiceCommand);
          paramParcel2.writeNoException();
          if (localVoiceConfig2 == null)
            break;
          paramParcel2.writeInt(1);
          localVoiceConfig2.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceServiceListener");
        onResampledAudioData(paramParcel1.createByteArray(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceServiceListener");
        onVoiceAmplitudeChanged(paramParcel1.readDouble());
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceServiceListener");
        if (paramParcel1.readInt() != 0);
        for (VoiceConfig localVoiceConfig1 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1); ; localVoiceConfig1 = null)
        {
          onVoiceConfigChanged(localVoiceConfig1);
          paramParcel2.writeNoException();
          return true;
        }
      case 5:
      }
      paramParcel1.enforceInterface("com.google.glass.voice.IVoiceServiceListener");
      String str = getTag();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    }

    private static class Proxy
      implements IVoiceServiceListener
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
        return "com.google.glass.voice.IVoiceServiceListener";
      }

      public String getTag()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceServiceListener");
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceServiceListener");
          localParcel1.writeByteArray(paramArrayOfByte);
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
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

      public void onVoiceAmplitudeChanged(double paramDouble)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceServiceListener");
          localParcel1.writeDouble(paramDouble);
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

      public VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        while (true)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceServiceListener");
            if (paramVoiceCommand != null)
            {
              localParcel1.writeInt(1);
              paramVoiceCommand.writeToParcel(localParcel1, 0);
              this.mRemote.transact(1, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                localVoiceConfig = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(localParcel2);
                return localVoiceConfig;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          VoiceConfig localVoiceConfig = null;
        }
      }

      public void onVoiceConfigChanged(VoiceConfig paramVoiceConfig)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceServiceListener");
          if (paramVoiceConfig != null)
          {
            localParcel1.writeInt(1);
            paramVoiceConfig.writeToParcel(localParcel1, 0);
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
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.IVoiceServiceListener
 * JD-Core Version:    0.6.2
 */