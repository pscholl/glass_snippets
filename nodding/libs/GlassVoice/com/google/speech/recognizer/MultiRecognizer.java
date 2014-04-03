package com.google.speech.recognizer;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.speech.recognizer.api.NativeRecognizer.NativeRecognitionResult;
import com.google.speech.recognizer.api.RecognizerProtos.AudioLevelEvent;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MultiRecognizer
  implements Recognizer
{
  private static final String TAG = MultiRecognizer.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private List<RecognizerCallback> callbacks = new ArrayList(1);
  private long nativeObj = nativeConstruct();
  private InputStream reader;
  private ResourceManager rm;

  public static int loadResourcesFromFile(ResourceManager paramResourceManager, String paramString, String[] paramArrayOfString)
  {
    return nativeLoadResourcesFromFile(paramResourceManager.getNativeObject(), paramString, paramArrayOfString);
  }

  public static int loadResourcesFromProto(ResourceManager paramResourceManager, byte[] paramArrayOfByte, String[] paramArrayOfString)
  {
    return nativeLoadResourcesFromProto(paramResourceManager.getNativeObject(), paramArrayOfByte, paramArrayOfString);
  }

  private native int nativeCancel(long paramLong);

  private native long nativeConstruct();

  private native void nativeDelete(long paramLong);

  protected static native void nativeInit();

  private native int nativeInitFromFile(long paramLong1, long paramLong2, String paramString);

  private native int nativeInitFromProto(long paramLong1, long paramLong2, byte[] paramArrayOfByte);

  private static native int nativeLoadResourcesFromFile(long paramLong, String paramString, String[] paramArrayOfString);

  private static native int nativeLoadResourcesFromProto(long paramLong, byte[] paramArrayOfByte, String[] paramArrayOfString);

  private native byte[] nativeRun(long paramLong, byte[] paramArrayOfByte);

  private native int nativeSetConfig(long paramLong, String paramString);

  private void validate()
  {
    if (this.nativeObj == 0L)
      throw new IllegalStateException("recognizer is not initialized");
  }

  public int addCallback(RecognizerCallback paramRecognizerCallback)
  {
    this.callbacks.add(paramRecognizerCallback);
    return 0;
  }

  public int cancel()
  {
    validate();
    return nativeCancel(this.nativeObj);
  }

  public void delete()
  {
    try
    {
      if (this.nativeObj != 0L)
      {
        nativeDelete(this.nativeObj);
        this.nativeObj = 0L;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void finalize()
  {
    delete();
  }

  protected void handleAudioLevelEvent(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferMicroException
  {
    RecognizerProtos.AudioLevelEvent localAudioLevelEvent = RecognizerProtos.AudioLevelEvent.parseFrom(paramArrayOfByte);
    Iterator localIterator = this.callbacks.iterator();
    while (localIterator.hasNext())
      ((RecognizerCallback)localIterator.next()).handleAudioLevelEvent(localAudioLevelEvent);
  }

  protected void handleEndpointerEvent(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferMicroException
  {
    RecognizerProtos.EndpointerEvent localEndpointerEvent = RecognizerProtos.EndpointerEvent.parseFrom(paramArrayOfByte);
    Iterator localIterator = this.callbacks.iterator();
    while (localIterator.hasNext())
      ((RecognizerCallback)localIterator.next()).handleEndpointerEvent(localEndpointerEvent);
  }

  protected void handleRecognitionEvent(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferMicroException
  {
    RecognizerProtos.RecognitionEvent localRecognitionEvent = RecognizerProtos.RecognitionEvent.parseFrom(paramArrayOfByte);
    Iterator localIterator = this.callbacks.iterator();
    while (localIterator.hasNext())
      ((RecognizerCallback)localIterator.next()).handleRecognitionEvent(localRecognitionEvent);
  }

  public int initFromFile(String paramString, ResourceManager paramResourceManager)
  {
    validate();
    this.rm = paramResourceManager;
    return nativeInitFromFile(this.nativeObj, paramResourceManager.getNativeObject(), paramString);
  }

  public int initFromProto(byte[] paramArrayOfByte, ResourceManager paramResourceManager)
  {
    validate();
    this.rm = paramResourceManager;
    return nativeInitFromProto(this.nativeObj, paramResourceManager.getNativeObject(), paramArrayOfByte);
  }

  protected int read(byte[] paramArrayOfByte)
    throws IOException
  {
    if (paramArrayOfByte.length == 0)
      throw new IOException("illegal zero length buffer");
    int i = this.reader.read(paramArrayOfByte);
    if (i == -1)
      i = 0;
    return i;
  }

  public NativeRecognizer.NativeRecognitionResult run(RecognizerSessionParamsProto.RecognizerSessionParams paramRecognizerSessionParams)
  {
    validate();
    byte[] arrayOfByte = nativeRun(this.nativeObj, paramRecognizerSessionParams.toByteArray());
    try
    {
      NativeRecognizer.NativeRecognitionResult localNativeRecognitionResult2 = NativeRecognizer.NativeRecognitionResult.parseFrom(arrayOfByte);
      return localNativeRecognitionResult2;
    }
    catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
    {
      logger.e("bad protocol buffer from recognizer jni", new Object[0]);
      NativeRecognizer.NativeRecognitionResult localNativeRecognitionResult1 = new NativeRecognizer.NativeRecognitionResult();
      localNativeRecognitionResult1.setStatus(2);
      return localNativeRecognitionResult1;
    }
  }

  public int setAudioReader(InputStream paramInputStream)
  {
    this.reader = paramInputStream;
    return 0;
  }

  public int setConfig(String paramString)
  {
    validate();
    return nativeSetConfig(this.nativeObj, paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.MultiRecognizer
 * JD-Core Version:    0.6.2
 */