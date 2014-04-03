package com.google.glass.camera;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ISharedCameraService extends IInterface
{
  public abstract void recordMoment(ISharedCameraClient paramISharedCameraClient)
    throws RemoteException;

  public abstract void startPreview(ISharedCameraClient paramISharedCameraClient)
    throws RemoteException;

  public abstract void startRecording(ISharedCameraClient paramISharedCameraClient)
    throws RemoteException;

  public abstract void stopPreview(ISharedCameraClient paramISharedCameraClient)
    throws RemoteException;

  public abstract void stopRecording(ISharedCameraClient paramISharedCameraClient)
    throws RemoteException;

  public abstract void takePicture(ISharedCameraClient paramISharedCameraClient)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ISharedCameraService
  {
    private static final String DESCRIPTOR = "com.google.glass.camera.ISharedCameraService";
    static final int TRANSACTION_recordMoment = 2;
    static final int TRANSACTION_startPreview = 3;
    static final int TRANSACTION_startRecording = 5;
    static final int TRANSACTION_stopPreview = 4;
    static final int TRANSACTION_stopRecording = 6;
    static final int TRANSACTION_takePicture = 1;

    public Stub()
    {
      attachInterface(this, "com.google.glass.camera.ISharedCameraService");
    }

    public static ISharedCameraService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.camera.ISharedCameraService");
      if ((localIInterface != null) && ((localIInterface instanceof ISharedCameraService)))
        return (ISharedCameraService)localIInterface;
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
        paramParcel2.writeString("com.google.glass.camera.ISharedCameraService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraService");
        takePicture(ISharedCameraClient.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraService");
        recordMoment(ISharedCameraClient.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraService");
        startPreview(ISharedCameraClient.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraService");
        stopPreview(ISharedCameraClient.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraService");
        startRecording(ISharedCameraClient.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 6:
      }
      paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraService");
      stopRecording(ISharedCameraClient.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements ISharedCameraService
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
        return "com.google.glass.camera.ISharedCameraService";
      }

      public void recordMoment(ISharedCameraClient paramISharedCameraClient)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraService");
          if (paramISharedCameraClient != null);
          for (IBinder localIBinder = paramISharedCameraClient.asBinder(); ; localIBinder = null)
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

      public void startPreview(ISharedCameraClient paramISharedCameraClient)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraService");
          if (paramISharedCameraClient != null);
          for (IBinder localIBinder = paramISharedCameraClient.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(3, localParcel1, localParcel2, 0);
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

      public void startRecording(ISharedCameraClient paramISharedCameraClient)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraService");
          if (paramISharedCameraClient != null);
          for (IBinder localIBinder = paramISharedCameraClient.asBinder(); ; localIBinder = null)
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

      public void stopPreview(ISharedCameraClient paramISharedCameraClient)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraService");
          if (paramISharedCameraClient != null);
          for (IBinder localIBinder = paramISharedCameraClient.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(4, localParcel1, localParcel2, 0);
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

      public void stopRecording(ISharedCameraClient paramISharedCameraClient)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraService");
          if (paramISharedCameraClient != null);
          for (IBinder localIBinder = paramISharedCameraClient.asBinder(); ; localIBinder = null)
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

      public void takePicture(ISharedCameraClient paramISharedCameraClient)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraService");
          if (paramISharedCameraClient != null);
          for (IBinder localIBinder = paramISharedCameraClient.asBinder(); ; localIBinder = null)
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
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.ISharedCameraService
 * JD-Core Version:    0.6.2
 */