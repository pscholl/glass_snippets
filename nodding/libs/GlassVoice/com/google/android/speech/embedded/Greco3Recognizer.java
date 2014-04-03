package com.google.android.speech.embedded;

import android.util.Log;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.common.io.Files;
import com.google.speech.recognizer.AbstractRecognizer;
import com.google.speech.recognizer.RecognizerCallback;
import com.google.speech.recognizer.api.RecognizerProtos.AudioLevelEvent;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import java.io.File;
import java.io.IOException;

public class Greco3Recognizer extends AbstractRecognizer
{
  private static final String TAG = "Vs.G3Recognizer";
  private static boolean sSharedLibraryLoaded = false;
  private final int mBytesPerSample;
  private final RecognizerCallbackWrapper mCallback = new RecognizerCallbackWrapper(null);
  private long mProgressMs;
  private final int mSamplingRate;

  public Greco3Recognizer(int paramInt1, int paramInt2)
  {
    this.mSamplingRate = paramInt1;
    this.mBytesPerSample = paramInt2;
    addCallback(this.mCallback);
  }

  public static Greco3Recognizer create(Greco3EngineManager.Resources paramResources, int paramInt1, int paramInt2)
  {
    Greco3Recognizer localGreco3Recognizer = new Greco3Recognizer(paramInt1, paramInt2);
    File localFile = new File(paramResources.configFile);
    if (Greco3Mode.isAsciiConfiguration(localFile));
    byte[] arrayOfByte;
    for (int i = localGreco3Recognizer.initFromFile(paramResources.configFile, paramResources.resources); i == 0; i = localGreco3Recognizer.initFromProto(arrayOfByte, paramResources.resources))
    {
      return localGreco3Recognizer;
      arrayOfByte = getFileBytes(localFile);
      if (arrayOfByte == null)
      {
        Log.e("Vs.G3Recognizer", "Error reading g3 config file: " + paramResources.configFile);
        return null;
      }
    }
    Log.e("Vs.G3Recognizer", "Failed to bring up g3, Status code: " + i);
    return null;
  }

  private static byte[] getFileBytes(File paramFile)
  {
    try
    {
      byte[] arrayOfByte = Files.toByteArray(paramFile);
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  // ERROR //
  public static void maybeLoadSharedLibrary()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 21	com/google/android/speech/embedded/Greco3Recognizer:sSharedLibraryLoaded	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: ldc 112
    //   17: invokestatic 117	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   20: invokestatic 120	com/google/android/speech/embedded/Greco3Recognizer:nativeInit	()V
    //   23: iconst_1
    //   24: putstatic 21	com/google/android/speech/embedded/Greco3Recognizer:sSharedLibraryLoaded	Z
    //   27: goto -16 -> 11
    //   30: astore_0
    //   31: ldc 2
    //   33: monitorexit
    //   34: aload_0
    //   35: athrow
    //   36: astore_2
    //   37: ldc 122
    //   39: invokestatic 117	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   42: goto -22 -> 20
    //
    // Exception table:
    //   from	to	target	type
    //   3	7	30	finally
    //   15	20	30	finally
    //   20	27	30	finally
    //   37	42	30	finally
    //   15	20	36	java/lang/UnsatisfiedLinkError
  }

  public int cancel()
  {
    this.mCallback.invalidate();
    return super.cancel();
  }

  protected int read(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      int i = super.read(paramArrayOfByte);
      if (i > 0)
      {
        this.mProgressMs += i * 1000 / (this.mBytesPerSample * this.mSamplingRate);
        this.mCallback.updateProgress(this.mProgressMs);
      }
      return i;
    }
    catch (IOException localIOException)
    {
      this.mCallback.notifyError(new AudioRecognizeException("Audio error", localIOException));
      throw localIOException;
    }
  }

  public void setCallback(Greco3Callback paramGreco3Callback)
  {
    RecognizerCallbackWrapper.access$102(this.mCallback, paramGreco3Callback);
    this.mProgressMs = 0L;
  }

  private static class RecognizerCallbackWrapper
    implements RecognizerCallback
  {
    private Greco3Callback mDelegate;

    public void handleAudioLevelEvent(RecognizerProtos.AudioLevelEvent paramAudioLevelEvent)
    {
      if (this.mDelegate != null)
        this.mDelegate.handleAudioLevelEvent(paramAudioLevelEvent);
    }

    public void handleEndpointerEvent(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
    {
      if (this.mDelegate != null)
        this.mDelegate.handleEndpointerEvent(paramEndpointerEvent);
    }

    public void handleRecognitionEvent(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      if (this.mDelegate != null)
        this.mDelegate.handleRecognitionEvent(paramRecognitionEvent);
    }

    public void invalidate()
    {
      this.mDelegate = null;
    }

    public void notifyError(RecognizeException paramRecognizeException)
    {
      if (this.mDelegate != null)
        this.mDelegate.handleError(paramRecognizeException);
    }

    public void updateProgress(long paramLong)
    {
      if (this.mDelegate != null)
        this.mDelegate.handleProgressUpdate(paramLong);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3Recognizer
 * JD-Core Version:    0.6.2
 */