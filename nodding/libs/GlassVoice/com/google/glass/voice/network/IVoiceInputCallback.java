package com.google.glass.voice.network;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.text.TextUtils;

public abstract interface IVoiceInputCallback extends IInterface
{
  public abstract String getTag()
    throws RemoteException;

  public abstract void onActionResponse(byte[] paramArrayOfByte)
    throws RemoteException;

  public abstract void onError(SpeechException paramSpeechException)
    throws RemoteException;

  public abstract void onHtmlAnswerCardResult(String paramString)
    throws RemoteException;

  public abstract void onRecognitionResult(CharSequence paramCharSequence, float paramFloat)
    throws RemoteException;

  public abstract void onSoundSearchResult(byte[] paramArrayOfByte)
    throws RemoteException;

  public abstract void setSpeechLevelSource(ISpeechLevelSource paramISpeechLevelSource)
    throws RemoteException;

  public abstract void showDone()
    throws RemoteException;

  public abstract void showListening()
    throws RemoteException;

  public abstract void showMusicDetected()
    throws RemoteException;

  public abstract void showNoSpeechDetected()
    throws RemoteException;

  public abstract void showRecognizing()
    throws RemoteException;

  public abstract void showRecording()
    throws RemoteException;

  public abstract void updateRecognizedText(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IVoiceInputCallback
  {
    private static final String DESCRIPTOR = "com.google.glass.voice.network.IVoiceInputCallback";
    static final int TRANSACTION_getTag = 14;
    static final int TRANSACTION_onActionResponse = 12;
    static final int TRANSACTION_onError = 13;
    static final int TRANSACTION_onHtmlAnswerCardResult = 10;
    static final int TRANSACTION_onRecognitionResult = 9;
    static final int TRANSACTION_onSoundSearchResult = 11;
    static final int TRANSACTION_setSpeechLevelSource = 7;
    static final int TRANSACTION_showDone = 6;
    static final int TRANSACTION_showListening = 1;
    static final int TRANSACTION_showMusicDetected = 5;
    static final int TRANSACTION_showNoSpeechDetected = 4;
    static final int TRANSACTION_showRecognizing = 3;
    static final int TRANSACTION_showRecording = 2;
    static final int TRANSACTION_updateRecognizedText = 8;

    public Stub()
    {
      attachInterface(this, "com.google.glass.voice.network.IVoiceInputCallback");
    }

    public static IVoiceInputCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.voice.network.IVoiceInputCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IVoiceInputCallback)))
        return (IVoiceInputCallback)localIInterface;
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
        paramParcel2.writeString("com.google.glass.voice.network.IVoiceInputCallback");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        showListening();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        showRecording();
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        showRecognizing();
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        showNoSpeechDetected();
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        showMusicDetected();
        paramParcel2.writeNoException();
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        showDone();
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        setSpeechLevelSource(ISpeechLevelSource.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 8:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        CharSequence localCharSequence2;
        if (paramParcel1.readInt() != 0)
        {
          localCharSequence2 = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0)
            break label337;
        }
        for (CharSequence localCharSequence3 = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1); ; localCharSequence3 = null)
        {
          updateRecognizedText(localCharSequence2, localCharSequence3);
          paramParcel2.writeNoException();
          return true;
          localCharSequence2 = null;
          break;
        }
      case 9:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        if (paramParcel1.readInt() != 0);
        for (CharSequence localCharSequence1 = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1); ; localCharSequence1 = null)
        {
          onRecognitionResult(localCharSequence1, paramParcel1.readFloat());
          paramParcel2.writeNoException();
          return true;
        }
      case 10:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        onHtmlAnswerCardResult(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 11:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        onSoundSearchResult(paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        return true;
      case 12:
        paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        onActionResponse(paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        return true;
      case 13:
        label337: paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
        if (paramParcel1.readInt() != 0);
        for (SpeechException localSpeechException = (SpeechException)SpeechException.CREATOR.createFromParcel(paramParcel1); ; localSpeechException = null)
        {
          onError(localSpeechException);
          paramParcel2.writeNoException();
          return true;
        }
      case 14:
      }
      paramParcel1.enforceInterface("com.google.glass.voice.network.IVoiceInputCallback");
      String str = getTag();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    }

    private static class Proxy
      implements IVoiceInputCallback
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
        return "com.google.glass.voice.network.IVoiceInputCallback";
      }

      public String getTag()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          this.mRemote.transact(14, localParcel1, localParcel2, 0);
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

      public void onActionResponse(byte[] paramArrayOfByte)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          localParcel1.writeByteArray(paramArrayOfByte);
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

      public void onError(SpeechException paramSpeechException)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          if (paramSpeechException != null)
          {
            localParcel1.writeInt(1);
            paramSpeechException.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(13, localParcel1, localParcel2, 0);
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

      public void onHtmlAnswerCardResult(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          localParcel1.writeString(paramString);
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void onRecognitionResult(CharSequence paramCharSequence, float paramFloat)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          if (paramCharSequence != null)
          {
            localParcel1.writeInt(1);
            TextUtils.writeToParcel(paramCharSequence, localParcel1, 0);
          }
          while (true)
          {
            localParcel1.writeFloat(paramFloat);
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

      public void onSoundSearchResult(byte[] paramArrayOfByte)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          localParcel1.writeByteArray(paramArrayOfByte);
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

      public void setSpeechLevelSource(ISpeechLevelSource paramISpeechLevelSource)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          if (paramISpeechLevelSource != null);
          for (IBinder localIBinder = paramISpeechLevelSource.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(7, localParcel1, localParcel2, 0);
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

      public void showDone()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
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

      public void showListening()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void showMusicDetected()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void showNoSpeechDetected()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
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

      public void showRecognizing()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
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

      public void showRecording()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
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

      public void updateRecognizedText(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        while (true)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.glass.voice.network.IVoiceInputCallback");
            if (paramCharSequence1 != null)
            {
              localParcel1.writeInt(1);
              TextUtils.writeToParcel(paramCharSequence1, localParcel1, 0);
              if (paramCharSequence2 != null)
              {
                localParcel1.writeInt(1);
                TextUtils.writeToParcel(paramCharSequence2, localParcel1, 0);
                this.mRemote.transact(8, localParcel1, localParcel2, 0);
                localParcel2.readException();
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
          localParcel1.writeInt(0);
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.IVoiceInputCallback
 * JD-Core Version:    0.6.2
 */