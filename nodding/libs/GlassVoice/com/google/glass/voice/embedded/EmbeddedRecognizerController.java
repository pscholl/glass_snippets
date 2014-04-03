package com.google.glass.voice.embedded;

import android.content.Context;
import com.google.common.io.Files;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.BytePipe;
import com.google.glass.voice.AlignmentInfo;
import com.google.glass.voice.AudioByteUtils;
import com.google.speech.recognizer.HotwordGraphCompiler;
import com.google.speech.recognizer.MultiRecognizer;
import com.google.speech.recognizer.RecognizerCallback;
import com.google.speech.recognizer.api.HotwordCompileParamsProto.HotwordCompileParams;
import com.google.speech.recognizer.api.NativeRecognizer.NativeRecognitionResult;
import com.google.speech.recognizer.api.RecognizerProtos.AudioLevelEvent;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public class EmbeddedRecognizerController
{
  private static final String COMPILE_CONFIG = "compile.config";
  private static final File GRECO_DIR = new File("/system/usr/srec/en-US/voice/");
  private static final String MULTI_RECOGNIZER_CONFIG = "multi.config";
  private static final int PIPE_SIZE_BYTES = 0;
  private static final int SAMPLE_RATE = 16000;
  private static final String TAG = EmbeddedRecognizerController.class.getSimpleName();
  private static EmbeddedRecognizerController instance = null;
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private BytePipe audioBuffer;
  private long audioLengthMillis;
  private File compileDir;
  private Decoder currentDecoder = Decoder.NONE;
  private long hotwordAlignmentOffsetMillis;
  private RecognizerProtos.PartialResult lastVoiceCommand = null;
  private boolean modelsNeedReloading = false;
  private MultiRecognizer recognizer = null;
  private Thread recognizerThread;
  private GlassResourceManager resourceManager = null;

  private EmbeddedRecognizerController(Context paramContext)
  {
    this.compileDir = paramContext.getDir("greco", 0);
  }

  private boolean cancelRecognition()
  {
    boolean bool = false;
    while (true)
    {
      try
      {
        setDecoder(Decoder.NONE);
        Thread localThread = this.recognizerThread;
        if (localThread == null)
          break label206;
        try
        {
          this.audioBuffer.close();
          logger.d("Cancelling Recognition: " + Thread.currentThread().getName(), new Object[0]);
          int i = this.recognizer.cancel();
          if (i != 0)
          {
            logger.e("cancelRecognition error: " + i, new Object[0]);
            return bool;
          }
        }
        catch (IOException localIOException)
        {
          logger.e("Error closing audio buffer.", new Object[0]);
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      try
      {
        logger.d("Joining recognition thread", new Object[0]);
        this.recognizerThread.join();
        logger.d("Joined", new Object[0]);
        this.recognizerThread = null;
      }
      catch (InterruptedException localInterruptedException)
      {
        logger.e("Error joining recognizerThread", new Object[0]);
        bool = false;
      }
      continue;
      label206: bool = true;
    }
  }

  private RecognizerCallback createRecognizerCallback()
  {
    return new RecognizerCallback()
    {
      public void handleAudioLevelEvent(RecognizerProtos.AudioLevelEvent paramAnonymousAudioLevelEvent)
      {
      }

      public void handleEndpointerEvent(RecognizerProtos.EndpointerEvent paramAnonymousEndpointerEvent)
      {
        EmbeddedRecognizerController.logger.i("Endpointer Event: " + paramAnonymousEndpointerEvent, new Object[0]);
      }

      public void handleRecognitionEvent(RecognizerProtos.RecognitionEvent paramAnonymousRecognitionEvent)
      {
        if ((paramAnonymousRecognitionEvent.hasPartialResult()) && (paramAnonymousRecognitionEvent.getPartialResult().getHotwordFired()) && (paramAnonymousRecognitionEvent.getPartialResult().getPartCount() > 0) && (paramAnonymousRecognitionEvent.getPartialResult().getPart(0).hasText()))
        {
          paramAnonymousRecognitionEvent.getPartialResult().getPart(0).getText();
          EmbeddedRecognizerController.access$202(EmbeddedRecognizerController.this, paramAnonymousRecognitionEvent.getPartialResult());
          EmbeddedRecognizerController.this.setDecoder(EmbeddedRecognizerController.this.currentDecoder);
        }
      }
    };
  }

  public static byte[] getConfigBytes(String paramString)
  {
    try
    {
      logger.d("Loading config: " + paramString, new Object[0]);
      byte[] arrayOfByte = Files.toByteArray(new File(paramString));
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      logger.e("Error reading " + paramString, new Object[0]);
    }
    return null;
  }

  public static EmbeddedRecognizerController getEmbeddedRecognizerController(Context paramContext)
  {
    try
    {
      boolean bool = GRECO_DIR.exists();
      if (!bool);
      for (EmbeddedRecognizerController localEmbeddedRecognizerController = null; ; localEmbeddedRecognizerController = instance)
      {
        return localEmbeddedRecognizerController;
        if (instance == null)
          instance = new EmbeddedRecognizerController(paramContext);
      }
    }
    finally
    {
    }
  }

  private String getPath(String[] paramArrayOfString)
  {
    File localFile1 = GRECO_DIR;
    int i = paramArrayOfString.length;
    int j = 0;
    File localFile2;
    for (Object localObject = localFile1; j < i; localObject = localFile2)
    {
      localFile2 = new File((File)localObject, paramArrayOfString[j]);
      j++;
    }
    return ((File)localObject).toString();
  }

  private String[] getSearchPath()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = this.compileDir.toString();
    arrayOfString[1] = GRECO_DIR.toString();
    return arrayOfString;
  }

  private boolean reinitialize(Decoder paramDecoder)
  {
    while (true)
    {
      boolean bool2;
      byte[] arrayOfByte;
      try
      {
        logger.i("Initializing glass multi recognizer with search path: " + Arrays.toString(getSearchPath()), new Object[0]);
        this.modelsNeedReloading = false;
        boolean bool1 = cancelRecognition();
        bool2 = false;
        if (!bool1)
          return bool2;
        if (this.recognizer != null)
          this.recognizer.delete();
        this.recognizer = new GlassMultiRecognizer();
        this.recognizer.addCallback(createRecognizerCallback());
        if (this.resourceManager != null)
          this.resourceManager.delete();
        this.resourceManager = new GlassResourceManager();
        arrayOfByte = getConfigBytes(getPath(new String[] { "multi.config" }));
        bool2 = false;
        if (arrayOfByte == null)
          continue;
        int i = MultiRecognizer.loadResourcesFromProto(this.resourceManager, arrayOfByte, getSearchPath());
        if (i != 0)
        {
          logger.e("resourceManager.initFromProto error: " + i + " for " + "multi.config", new Object[0]);
          bool2 = false;
          continue;
        }
      }
      finally
      {
      }
      int j = this.recognizer.initFromProto(arrayOfByte, this.resourceManager);
      if (j != 0)
      {
        logger.e("recognizer.initFromProto error: " + j + " for " + "multi.config", new Object[0]);
        bool2 = false;
      }
      else
      {
        startRecognition(paramDecoder);
        bool2 = true;
      }
    }
  }

  private boolean setDecoder(Decoder paramDecoder)
  {
    boolean bool = false;
    try
    {
      this.currentDecoder = paramDecoder;
      if (this.currentDecoder != Decoder.NONE)
      {
        int i = this.recognizer.setConfig(paramDecoder.name().toLowerCase(Locale.ENGLISH));
        if (i != 0)
          logger.e("setDecoder to " + paramDecoder.name() + " error: " + i + "!", new Object[0]);
      }
      while (true)
      {
        return bool;
        bool = true;
      }
    }
    finally
    {
    }
  }

  private boolean startRecognition(Decoder paramDecoder)
  {
    if (this.recognizerThread != null)
      throw new RuntimeException("Starting recognition that is already running.");
    this.audioLengthMillis = 0L;
    this.hotwordAlignmentOffsetMillis = 0L;
    final RecognizerSessionParamsProto.RecognizerSessionParams localRecognizerSessionParams = new RecognizerSessionParamsProto.RecognizerSessionParams();
    localRecognizerSessionParams.setEnablePartialResults(true);
    localRecognizerSessionParams.setSampleRate(16000.0F);
    this.audioBuffer = new BytePipe(PIPE_SIZE_BYTES);
    this.recognizer.setAudioReader(this.audioBuffer);
    if (!setDecoder(paramDecoder))
      return false;
    this.recognizerThread = new Thread("RecognizerThread")
    {
      public void run()
      {
        NativeRecognizer.NativeRecognitionResult localNativeRecognitionResult = EmbeddedRecognizerController.this.recognizer.run(localRecognizerSessionParams);
        if (localNativeRecognitionResult.getStatus() != 0)
          EmbeddedRecognizerController.logger.d("GlassMultiRecognizer exited with status: " + localNativeRecognitionResult.getStatus(), new Object[0]);
        EmbeddedRecognizerController.logger.d("run() finished", new Object[0]);
      }
    };
    this.recognizerThread.start();
    return true;
  }

  public boolean compileHotwordGraph(Context paramContext, HotwordCompileParamsProto.HotwordCompileParams paramHotwordCompileParams)
  {
    boolean bool = false;
    while (true)
    {
      GlassHotwordGraphCompiler localGlassHotwordGraphCompiler;
      try
      {
        File localFile1 = new File(getPath(new String[] { "compile.config" }));
        if (!localFile1.exists())
        {
          logger.e("Cannot find config file: " + localFile1, new Object[0]);
          return bool;
        }
        byte[] arrayOfByte = getConfigBytes(getPath(new String[] { "compile.config" }));
        localGlassHotwordGraphCompiler = new GlassHotwordGraphCompiler();
        if (!localGlassHotwordGraphCompiler.initFromProto(arrayOfByte, getSearchPath()))
        {
          logger.e("Hotword compiler error in initFromProto.", new Object[0]);
          localGlassHotwordGraphCompiler.delete();
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      File localFile2 = this.compileDir;
      if ((!localFile2.exists()) && (!localFile2.mkdirs()))
      {
        logger.e("Failed to create output directory: '" + localFile2.toString() + "'", new Object[0]);
        localGlassHotwordGraphCompiler.delete();
        bool = false;
      }
      else if (!localGlassHotwordGraphCompiler.compile(paramHotwordCompileParams.toByteArray(), localFile2.toString()))
      {
        logger.e("Native compilation error", new Object[0]);
        localGlassHotwordGraphCompiler.delete();
        bool = false;
      }
      else
      {
        this.modelsNeedReloading = true;
        localGlassHotwordGraphCompiler.delete();
        bool = true;
      }
    }
  }

  public List<AlignmentInfo> getAlignmentInfos(RecognizerProtos.PartialResult paramPartialResult, String paramString)
  {
    long l1 = (paramPartialResult.getStartTimeUsec() + paramPartialResult.getHotwordStartTimeUsec()) / 1000L;
    long l2 = this.audioLengthMillis;
    AlignmentInfo localAlignmentInfo = new AlignmentInfo(l1 - this.hotwordAlignmentOffsetMillis, l2 - this.hotwordAlignmentOffsetMillis, paramString, paramPartialResult.getHotwordConfidence());
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localAlignmentInfo);
    return localArrayList;
  }

  public void resetAlignment()
  {
    this.hotwordAlignmentOffsetMillis = this.audioLengthMillis;
  }

  public boolean switchDecoders(Decoder paramDecoder)
  {
    try
    {
      boolean bool2;
      if ((this.recognizer == null) || (this.modelsNeedReloading))
      {
        boolean bool1 = reinitialize(paramDecoder);
        bool2 = bool1;
      }
      while (true)
      {
        return bool2;
        if (paramDecoder == Decoder.NONE)
        {
          bool2 = cancelRecognition();
        }
        else if (this.currentDecoder == Decoder.NONE)
        {
          bool2 = startRecognition(paramDecoder);
        }
        else
        {
          boolean bool3 = setDecoder(paramDecoder);
          bool2 = bool3;
        }
      }
    }
    finally
    {
    }
  }

  public RecognizerProtos.PartialResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    if (this.currentDecoder == Decoder.NONE)
    {
      logger.e("Writing audio to a recognizer without a decoder.", new Object[0]);
      return null;
    }
    if (paramLong != 16000L)
      throw new UnsupportedOperationException("Must have sample rate of 16000");
    this.audioLengthMillis += AudioByteUtils.getMillis(paramByteBuffer.remaining());
    try
    {
      this.audioBuffer.write(paramByteBuffer.asReadOnlyBuffer());
      if (this.lastVoiceCommand != null)
      {
        RecognizerProtos.PartialResult localPartialResult = this.lastVoiceCommand;
        this.lastVoiceCommand = null;
        return localPartialResult;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        logger.e("Error piping audio.", new Object[] { localIOException });
    }
    return null;
  }

  static enum Decoder
  {
    static
    {
      DYN_1 = new Decoder("DYN_1", 2);
      DYN_2 = new Decoder("DYN_2", 3);
      DYN_3 = new Decoder("DYN_3", 4);
      DYN_4 = new Decoder("DYN_4", 5);
      DYN_5 = new Decoder("DYN_5", 6);
      NONE = new Decoder("NONE", 7);
      Decoder[] arrayOfDecoder = new Decoder[8];
      arrayOfDecoder[0] = GUARD;
      arrayOfDecoder[1] = MENU;
      arrayOfDecoder[2] = DYN_1;
      arrayOfDecoder[3] = DYN_2;
      arrayOfDecoder[4] = DYN_3;
      arrayOfDecoder[5] = DYN_4;
      arrayOfDecoder[6] = DYN_5;
      arrayOfDecoder[7] = NONE;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.EmbeddedRecognizerController
 * JD-Core Version:    0.6.2
 */