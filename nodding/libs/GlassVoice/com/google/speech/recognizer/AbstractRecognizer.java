package com.google.speech.recognizer;

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
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class AbstractRecognizer
  implements Recognizer
{
  private static final Logger logger = Logger.getLogger(AbstractRecognizer.class.getName());
  private List<RecognizerCallback> callbacks = new ArrayList(1);
  private long nativeObj = nativeConstruct();
  private InputStream reader;
  private ResourceManager rm;

  private native int nativeCancel(long paramLong);

  private native long nativeConstruct();

  private native void nativeDelete(long paramLong);

  protected static native void nativeInit();

  private native int nativeInitFromFile(long paramLong1, long paramLong2, String paramString);

  private native int nativeInitFromProto(long paramLong1, long paramLong2, byte[] paramArrayOfByte);

  private native byte[] nativeRun(long paramLong, byte[] paramArrayOfByte);

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
    RecognizerProtos.AudioLevelEvent localAudioLevelEvent = new RecognizerProtos.AudioLevelEvent();
    localAudioLevelEvent.mergeFrom(paramArrayOfByte);
    Iterator localIterator = this.callbacks.iterator();
    while (localIterator.hasNext())
      ((RecognizerCallback)localIterator.next()).handleAudioLevelEvent(localAudioLevelEvent);
  }

  protected void handleEndpointerEvent(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferMicroException
  {
    RecognizerProtos.EndpointerEvent localEndpointerEvent = new RecognizerProtos.EndpointerEvent();
    localEndpointerEvent.mergeFrom(paramArrayOfByte);
    Iterator localIterator = this.callbacks.iterator();
    while (localIterator.hasNext())
      ((RecognizerCallback)localIterator.next()).handleEndpointerEvent(localEndpointerEvent);
  }

  protected void handleRecognitionEvent(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferMicroException
  {
    RecognizerProtos.RecognitionEvent localRecognitionEvent = new RecognizerProtos.RecognitionEvent();
    localRecognitionEvent.mergeFrom(paramArrayOfByte);
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
      NativeRecognizer.NativeRecognitionResult localNativeRecognitionResult = NativeRecognizer.NativeRecognitionResult.parseFrom(arrayOfByte);
      return localNativeRecognitionResult;
    }
    catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
    {
      logger.log(Level.SEVERE, "bad protocol buffer from recognizer jni");
    }
    return new NativeRecognizer.NativeRecognitionResult().setStatus(2);
  }

  public int setAudioReader(InputStream paramInputStream)
  {
    this.reader = paramInputStream;
    return 0;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.AbstractRecognizer
 * JD-Core Version:    0.6.2
 */