package com.google.glass.voice;

import android.content.ContentResolver;
import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.FileHelper;
import java.nio.ByteBuffer;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public abstract class Sensory
  implements HotwordRecognizer
{
  public static final String LTS_RULES_FILE_GENERIC = "lts_en_us_9.5.2b.raw";
  public static final String LTS_RULES_FILE_NAMES = "lts_en_us_cid_9.3.1.1.raw";
  public static final String RECOG_FILE_GENERIC = "nn_en_us_mfcc_16k_15_big_250_v4.7.raw";
  public static final String SVSID_FILE = "svsid_1_1.raw";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final Map<Integer, String> resIdToFilename = new HashMap();
  private static ContentResolver resolver;
  private ByteBuffer audioBuffer = null;
  protected long sensoryContext;
  private State state = State.INACTIVE;

  static
  {
    for (StaticRecognizerFiles localStaticRecognizerFiles : StaticRecognizerFiles.values())
    {
      resIdToFilename.put(Integer.valueOf(localStaticRecognizerFiles.recogFileResId), localStaticRecognizerFiles.recogFile);
      resIdToFilename.put(Integer.valueOf(localStaticRecognizerFiles.searchFileResId), localStaticRecognizerFiles.searchFile);
    }
    resIdToFilename.put(Integer.valueOf(R.raw.nn_en_us_mfcc_16k_15_big_250_v4_7), "nn_en_us_mfcc_16k_15_big_250_v4.7.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.lts_en_us_9_5_2b), "lts_en_us_9.5.2b.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.lts_en_us_cid_9_3_1_1), "lts_en_us_cid_9.3.1.1.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.svsid_1_1), "svsid_1_1.raw");
    System.loadLibrary("fssdk");
  }

  protected Sensory(Context paramContext)
  {
    initialize(paramContext);
  }

  private HotwordResult doWriteAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    if ((this.audioBuffer == null) || (this.audioBuffer.capacity() != paramByteBuffer.remaining()))
      this.audioBuffer = ByteBuffer.allocateDirect(paramByteBuffer.remaining());
    this.audioBuffer.clear();
    this.audioBuffer.put(paramByteBuffer);
    SensoryResult localSensoryResult = nativePipePhrasespot(this.sensoryContext, this.audioBuffer, paramLong);
    if (localSensoryResult != null)
      return new HotwordResult(stringToCommand(localSensoryResult.literal), localSensoryResult.score, HotwordResult.parseAlignments(localSensoryResult.wordAlignment));
    return null;
  }

  private static String getBasePath(Context paramContext)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramContext.getPackageName();
    return String.format("/data/data/%s/files/", arrayOfObject);
  }

  protected static String getPath(Context paramContext, String paramString)
  {
    return getBasePath(paramContext) + paramString;
  }

  private static void initialize(Context paramContext)
  {
    try
    {
      if (resolver == null)
      {
        FileHelper.copyResourcesToFiles(paramContext, getBasePath(paramContext), resIdToFilename);
        resolver = paramContext.getContentResolver();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private native void nativeClosePhrasespot(long paramLong);

  private native SensoryResult nativePipePhrasespot(long paramLong1, ByteBuffer paramByteBuffer, long paramLong2);

  private native void nativeResetPhrasespot(long paramLong);

  private void setState(State paramState)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.state;
    arrayOfObject[1] = paramState;
    localFormattingLogger.d("Changing state from %s to %s", arrayOfObject);
    State.checkTransition(this.state, paramState);
    this.state = paramState;
  }

  public final void activate()
  {
    while (true)
    {
      try
      {
        if (this.sensoryContext == 0L)
        {
          logger.w("Not setting active state because we don't have a valid Sensory native context", new Object[0]);
          return;
        }
        if (this.state != State.INACTIVE)
        {
          FormattingLogger localFormattingLogger = logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.state;
          localFormattingLogger.w("Ignoring activate call outside of inactive state: %s", arrayOfObject);
          continue;
        }
      }
      finally
      {
      }
      setState(State.ACTIVE);
    }
  }

  public final void deactivate()
  {
    try
    {
      if (this.state != State.ACTIVE)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.state;
        localFormattingLogger.i("Ignoring deactivate call outside of active state: %s", arrayOfObject);
      }
      while (true)
      {
        return;
        setState(State.INACTIVE);
        resetPhrasespot();
      }
    }
    finally
    {
    }
  }

  public final void destroy()
  {
    try
    {
      if ((this.state == State.DESTROYING) || (this.state == State.DESTROYED))
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.state;
        localFormattingLogger.w("Ignoring destroy call because we are already destroying or destroyed: %s", arrayOfObject);
      }
      while (true)
      {
        return;
        setState(State.DESTROYING);
        nativeClosePhrasespot(this.sensoryContext);
        setState(State.DESTROYED);
      }
    }
    finally
    {
    }
  }

  @VisibleForTesting
  State getState()
  {
    return this.state;
  }

  protected native long nativeCompileGrammar(long paramLong, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString);

  protected native long nativeInitPhrasespot(String[] paramArrayOfString1, String[] paramArrayOfString2);

  protected native long nativeInitPhrasespotDynamic();

  protected native String[] nativeNormalizeText(long paramLong, String paramString, String[] paramArrayOfString);

  protected void resetPhrasespot()
  {
    nativeResetPhrasespot(this.sensoryContext);
  }

  public abstract VoiceCommand stringToCommand(String paramString);

  public final HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    try
    {
      if (this.state != State.ACTIVE)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.state;
        localFormattingLogger.w("Ignoring audio outside of initialized state. Current state: %s", arrayOfObject);
      }
      HotwordResult localHotwordResult;
      for (Object localObject2 = null; ; localObject2 = localHotwordResult)
      {
        return localObject2;
        localHotwordResult = doWriteAudio(paramByteBuffer, paramLong);
      }
    }
    finally
    {
    }
  }

  protected static class SensoryResult
  {
    final String literal;
    final float score;
    final String wordAlignment;

    public SensoryResult(String paramString1, float paramFloat, String paramString2)
    {
      this.literal = paramString1;
      this.score = paramFloat;
      this.wordAlignment = paramString2;
    }
  }

  static enum State
  {
    private static final EnumMap<State, EnumSet<State>> allowedTransitions;

    static
    {
      ACTIVE = new State("ACTIVE", 1);
      DESTROYING = new State("DESTROYING", 2);
      DESTROYED = new State("DESTROYED", 3);
      State[] arrayOfState = new State[4];
      arrayOfState[0] = INACTIVE;
      arrayOfState[1] = ACTIVE;
      arrayOfState[2] = DESTROYING;
      arrayOfState[3] = DESTROYED;
      $VALUES = arrayOfState;
      allowedTransitions = new EnumMap(State.class);
      allowedTransitions.put(INACTIVE, EnumSet.of(ACTIVE, DESTROYING));
      allowedTransitions.put(ACTIVE, EnumSet.of(INACTIVE, DESTROYING));
      allowedTransitions.put(DESTROYING, EnumSet.of(DESTROYED));
    }

    static void checkTransition(State paramState1, State paramState2)
    {
      if (!allowedTransitions.containsKey(paramState1))
        throw new AssertionError("Unexpected from state: " + paramState1);
      if (!((EnumSet)allowedTransitions.get(paramState1)).contains(paramState2))
        throw new AssertionError(String.format("Unexpected transition from %s to %s", new Object[] { paramState1, paramState2 }));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.Sensory
 * JD-Core Version:    0.6.2
 */