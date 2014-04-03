package com.google.glass.camera;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.view.Surface;
import com.google.glass.util.remote.ParcelableException;

public abstract interface ISharedCameraClient extends IInterface
{
  public abstract void dispatchCameraAcquired()
    throws RemoteException;

  public abstract void dispatchCameraReleased()
    throws RemoteException;

  public abstract void dispatchCameraShutter()
    throws RemoteException;

  public abstract void dispatchError(ParcelableException paramParcelableException)
    throws RemoteException;

  public abstract void dispatchMomentRecorded(Video paramVideo)
    throws RemoteException;

  public abstract void dispatchPictureSaved(Picture paramPicture)
    throws RemoteException;

  public abstract void dispatchPictureTaken(Picture paramPicture)
    throws RemoteException;

  public abstract void dispatchPreviewFrame(byte[] paramArrayOfByte, long paramLong)
    throws RemoteException;

  public abstract void dispatchStartPreview()
    throws RemoteException;

  public abstract void dispatchStartRecording(Video paramVideo)
    throws RemoteException;

  public abstract void dispatchStopPreview()
    throws RemoteException;

  public abstract void dispatchStopRecording(Video paramVideo)
    throws RemoteException;

  public abstract Surface getPreviewSurface()
    throws RemoteException;

  public abstract String getTag()
    throws RemoteException;

  public abstract boolean isViewfinderValid()
    throws RemoteException;

  public abstract void onPreviewFrame(byte[] paramArrayOfByte, long paramLong)
    throws RemoteException;

  public abstract void onStartRecording(Video paramVideo)
    throws RemoteException;

  public abstract void onStopRecording(Video paramVideo)
    throws RemoteException;

  public abstract boolean shouldUseInvisiblePreview()
    throws RemoteException;

  public abstract void startUsingViewfinder()
    throws RemoteException;

  public abstract void stopUsingViewfinder()
    throws RemoteException;

  public abstract boolean waitForPreviewSurface(long paramLong)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ISharedCameraClient
  {
    private static final String DESCRIPTOR = "com.google.glass.camera.ISharedCameraClient";
    static final int TRANSACTION_dispatchCameraAcquired = 11;
    static final int TRANSACTION_dispatchCameraReleased = 12;
    static final int TRANSACTION_dispatchCameraShutter = 7;
    static final int TRANSACTION_dispatchError = 17;
    static final int TRANSACTION_dispatchMomentRecorded = 10;
    static final int TRANSACTION_dispatchPictureSaved = 9;
    static final int TRANSACTION_dispatchPictureTaken = 8;
    static final int TRANSACTION_dispatchPreviewFrame = 6;
    static final int TRANSACTION_dispatchStartPreview = 13;
    static final int TRANSACTION_dispatchStartRecording = 15;
    static final int TRANSACTION_dispatchStopPreview = 14;
    static final int TRANSACTION_dispatchStopRecording = 16;
    static final int TRANSACTION_getPreviewSurface = 21;
    static final int TRANSACTION_getTag = 22;
    static final int TRANSACTION_isViewfinderValid = 5;
    static final int TRANSACTION_onPreviewFrame = 20;
    static final int TRANSACTION_onStartRecording = 18;
    static final int TRANSACTION_onStopRecording = 19;
    static final int TRANSACTION_shouldUseInvisiblePreview = 1;
    static final int TRANSACTION_startUsingViewfinder = 3;
    static final int TRANSACTION_stopUsingViewfinder = 4;
    static final int TRANSACTION_waitForPreviewSurface = 2;

    public Stub()
    {
      attachInterface(this, "com.google.glass.camera.ISharedCameraClient");
    }

    public static ISharedCameraClient asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.camera.ISharedCameraClient");
      if ((localIInterface != null) && ((localIInterface instanceof ISharedCameraClient)))
        return (ISharedCameraClient)localIInterface;
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
        paramParcel2.writeString("com.google.glass.camera.ISharedCameraClient");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        boolean bool3 = shouldUseInvisiblePreview();
        paramParcel2.writeNoException();
        int k = 0;
        if (bool3)
          k = 1;
        paramParcel2.writeInt(k);
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        boolean bool2 = waitForPreviewSurface(paramParcel1.readLong());
        paramParcel2.writeNoException();
        int j = 0;
        if (bool2)
          j = 1;
        paramParcel2.writeInt(j);
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        startUsingViewfinder();
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        stopUsingViewfinder();
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        boolean bool1 = isViewfinderValid();
        paramParcel2.writeNoException();
        int i = 0;
        if (bool1)
          i = 1;
        paramParcel2.writeInt(i);
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        dispatchPreviewFrame(paramParcel1.createByteArray(), paramParcel1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        dispatchCameraShutter();
        paramParcel2.writeNoException();
        return true;
      case 8:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Picture localPicture2 = (Picture)Picture.CREATOR.createFromParcel(paramParcel1); ; localPicture2 = null)
        {
          dispatchPictureTaken(localPicture2);
          paramParcel2.writeNoException();
          return true;
        }
      case 9:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Picture localPicture1 = (Picture)Picture.CREATOR.createFromParcel(paramParcel1); ; localPicture1 = null)
        {
          dispatchPictureSaved(localPicture1);
          paramParcel2.writeNoException();
          return true;
        }
      case 10:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Video localVideo5 = (Video)Video.CREATOR.createFromParcel(paramParcel1); ; localVideo5 = null)
        {
          dispatchMomentRecorded(localVideo5);
          paramParcel2.writeNoException();
          return true;
        }
      case 11:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        dispatchCameraAcquired();
        paramParcel2.writeNoException();
        return true;
      case 12:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        dispatchCameraReleased();
        paramParcel2.writeNoException();
        return true;
      case 13:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        dispatchStartPreview();
        paramParcel2.writeNoException();
        return true;
      case 14:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        dispatchStopPreview();
        paramParcel2.writeNoException();
        return true;
      case 15:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Video localVideo4 = (Video)Video.CREATOR.createFromParcel(paramParcel1); ; localVideo4 = null)
        {
          dispatchStartRecording(localVideo4);
          paramParcel2.writeNoException();
          return true;
        }
      case 16:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Video localVideo3 = (Video)Video.CREATOR.createFromParcel(paramParcel1); ; localVideo3 = null)
        {
          dispatchStopRecording(localVideo3);
          paramParcel2.writeNoException();
          return true;
        }
      case 17:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (ParcelableException localParcelableException = (ParcelableException)ParcelableException.CREATOR.createFromParcel(paramParcel1); ; localParcelableException = null)
        {
          dispatchError(localParcelableException);
          paramParcel2.writeNoException();
          return true;
        }
      case 18:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Video localVideo2 = (Video)Video.CREATOR.createFromParcel(paramParcel1); ; localVideo2 = null)
        {
          onStartRecording(localVideo2);
          paramParcel2.writeNoException();
          return true;
        }
      case 19:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        if (paramParcel1.readInt() != 0);
        for (Video localVideo1 = (Video)Video.CREATOR.createFromParcel(paramParcel1); ; localVideo1 = null)
        {
          onStopRecording(localVideo1);
          paramParcel2.writeNoException();
          return true;
        }
      case 20:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        onPreviewFrame(paramParcel1.createByteArray(), paramParcel1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 21:
        paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
        Surface localSurface = getPreviewSurface();
        paramParcel2.writeNoException();
        if (localSurface != null)
        {
          paramParcel2.writeInt(1);
          localSurface.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 22:
      }
      paramParcel1.enforceInterface("com.google.glass.camera.ISharedCameraClient");
      String str = getTag();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    }

    private static class Proxy
      implements ISharedCameraClient
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

      public void dispatchCameraAcquired()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void dispatchCameraReleased()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void dispatchCameraShutter()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
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

      public void dispatchError(ParcelableException paramParcelableException)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramParcelableException != null)
          {
            localParcel1.writeInt(1);
            paramParcelableException.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(17, localParcel1, localParcel2, 0);
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

      public void dispatchMomentRecorded(Video paramVideo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramVideo != null)
          {
            localParcel1.writeInt(1);
            paramVideo.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(10, localParcel1, localParcel2, 0);
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

      public void dispatchPictureSaved(Picture paramPicture)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramPicture != null)
          {
            localParcel1.writeInt(1);
            paramPicture.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
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

      public void dispatchPictureTaken(Picture paramPicture)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramPicture != null)
          {
            localParcel1.writeInt(1);
            paramPicture.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
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

      public void dispatchPreviewFrame(byte[] paramArrayOfByte, long paramLong)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          localParcel1.writeByteArray(paramArrayOfByte);
          localParcel1.writeLong(paramLong);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void dispatchStartPreview()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void dispatchStartRecording(Video paramVideo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramVideo != null)
          {
            localParcel1.writeInt(1);
            paramVideo.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(15, localParcel1, localParcel2, 0);
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

      public void dispatchStopPreview()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(14, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void dispatchStopRecording(Video paramVideo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramVideo != null)
          {
            localParcel1.writeInt(1);
            paramVideo.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(16, localParcel1, localParcel2, 0);
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

      public String getInterfaceDescriptor()
      {
        return "com.google.glass.camera.ISharedCameraClient";
      }

      public Surface getPreviewSurface()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            localSurface = (Surface)Surface.CREATOR.createFromParcel(localParcel2);
            return localSurface;
          }
          Surface localSurface = null;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getTag()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(22, localParcel1, localParcel2, 0);
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

      public boolean isViewfinderValid()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
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

      public void onPreviewFrame(byte[] paramArrayOfByte, long paramLong)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          localParcel1.writeByteArray(paramArrayOfByte);
          localParcel1.writeLong(paramLong);
          this.mRemote.transact(20, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onStartRecording(Video paramVideo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramVideo != null)
          {
            localParcel1.writeInt(1);
            paramVideo.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(18, localParcel1, localParcel2, 0);
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

      public void onStopRecording(Video paramVideo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          if (paramVideo != null)
          {
            localParcel1.writeInt(1);
            paramVideo.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(19, localParcel1, localParcel2, 0);
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

      public boolean shouldUseInvisiblePreview()
        throws RemoteException
      {
        boolean bool = true;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0)
            return bool;
          bool = false;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void startUsingViewfinder()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
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

      public void stopUsingViewfinder()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean waitForPreviewSurface(long paramLong)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.camera.ISharedCameraClient");
          localParcel1.writeLong(paramLong);
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
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
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.ISharedCameraClient
 * JD-Core Version:    0.6.2
 */