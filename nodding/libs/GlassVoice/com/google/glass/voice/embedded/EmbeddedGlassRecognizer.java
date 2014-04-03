package com.google.glass.voice.embedded;

import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.voice.HotwordRecognizer;
import com.google.glass.voice.HotwordResult;
import com.google.glass.voice.VoiceCommand;
import com.google.speech.recognizer.api.HotwordCompileParamsProto.HotwordCompileParams;
import com.google.speech.recognizer.api.Network.PathParams;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public abstract class EmbeddedGlassRecognizer
  implements HotwordRecognizer
{
  private static final String TAG = EmbeddedGlassRecognizer.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private boolean acceptingAudio = true;
  private final EmbeddedRecognizerController controller;
  private EmbeddedRecognizerController.Decoder decoder;

  public EmbeddedGlassRecognizer(Context paramContext, EmbeddedRecognizerController.Decoder paramDecoder)
  {
    this.decoder = paramDecoder;
    this.controller = EmbeddedRecognizerController.getEmbeddedRecognizerController(paramContext);
    if (this.controller == null)
    {
      this.acceptingAudio = false;
      logger.e("The recognizer controller could not be created.", new Object[0]);
    }
  }

  public EmbeddedGlassRecognizer(Context paramContext, EmbeddedRecognizerController.Decoder paramDecoder, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    this.decoder = paramDecoder;
    this.controller = EmbeddedRecognizerController.getEmbeddedRecognizerController(paramContext);
    if (this.controller == null)
    {
      this.acceptingAudio = false;
      logger.e("The recognizer controller could not be created.", new Object[0]);
    }
    HotwordCompileParamsProto.HotwordCompileParams localHotwordCompileParams;
    do
    {
      return;
      if (paramArrayOfString1.length == 0)
      {
        this.acceptingAudio = false;
        logger.w("The dynamic recognizer is empty.", new Object[0]);
        return;
      }
      localHotwordCompileParams = new HotwordCompileParamsProto.HotwordCompileParams();
      localHotwordCompileParams.setOutputFilenamePrefix(paramDecoder.name().toLowerCase(Locale.ENGLISH) + "_");
      int i = paramArrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String str = paramArrayOfString1[j];
        Network.PathParams localPathParams = new Network.PathParams();
        localPathParams.setLastPhoneOptional(false);
        localPathParams.setReference(str.trim());
        localPathParams.setSymbol("[hotword_" + str.trim().replaceAll("\\s", "_") + "]");
        localHotwordCompileParams.addPath(localPathParams);
      }
      Log.logPii(3, TAG, "Compiling custom recognizer " + paramDecoder + " phrases: " + Arrays.toString(paramArrayOfString1));
      Log.logPii(3, TAG, "Compiling custom recognizer " + paramDecoder + " tags: " + Arrays.toString(paramArrayOfString2));
    }
    while (this.controller.compileHotwordGraph(paramContext, localHotwordCompileParams));
    this.acceptingAudio = false;
    logger.d("Failed to compile: '" + paramDecoder + "'", new Object[0]);
  }

  public void activate()
  {
    if ((this.acceptingAudio) && (!this.controller.switchDecoders(this.decoder)))
    {
      logger.e("Switching decoders failed.", new Object[0]);
      this.acceptingAudio = false;
    }
  }

  public void deactivate()
  {
    try
    {
      if (this.acceptingAudio)
        this.controller.resetAlignment();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void destroy()
  {
    logger.d("Destroy", new Object[0]);
  }

  public HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    try
    {
      boolean bool = this.acceptingAudio;
      HotwordResult localHotwordResult = null;
      if (!bool);
      while (true)
      {
        return localHotwordResult;
        RecognizerProtos.PartialResult localPartialResult = this.controller.writeAudio(paramByteBuffer, paramLong);
        localHotwordResult = null;
        if (localPartialResult != null)
        {
          String str = localPartialResult.getPart(0).getText();
          VoiceCommand localVoiceCommand = stringToCommand(str);
          List localList = this.controller.getAlignmentInfos(localPartialResult, str);
          localHotwordResult = null;
          if (localVoiceCommand != null)
            localHotwordResult = new HotwordResult(localVoiceCommand, localPartialResult.getHotwordConfidence(), localList);
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.EmbeddedGlassRecognizer
 * JD-Core Version:    0.6.2
 */