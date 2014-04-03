package com.google.android.speech.message;

import com.google.common.annotations.VisibleForTesting;
import com.google.protobuf.micro.ByteStringMicro;
import com.google.speech.recognizer.api.RecognizerProtos.Hypothesis;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionResult;
import com.google.speech.s3.S3.S3Response;
import com.google.speech.speech.s3.Recognizer.RecognizerEvent;
import com.google.speech.speech.s3.Synthesis.TtsServiceEvent;

@VisibleForTesting
public class S3ResponseParser
{
  public static RecognizerProtos.RecognitionEvent getRecognizerEvent(S3.S3Response paramS3Response)
  {
    return paramS3Response.getRecognizerEventExtension().getRecognitionEvent();
  }

  public static boolean hasRecognitionEvent(S3.S3Response paramS3Response)
  {
    return (paramS3Response.hasRecognizerEventExtension()) && (paramS3Response.getRecognizerEventExtension().hasRecognitionEvent());
  }

  public static String toShortString(S3.S3Response paramS3Response)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("S3Response[");
    localStringBuffer.append("status=" + paramS3Response.getStatus());
    if (paramS3Response.getStatus() == 2)
    {
      localStringBuffer.append(",errorCode=" + paramS3Response.getErrorCode());
      localStringBuffer.append(",errorDescription=" + paramS3Response.getErrorDescription());
    }
    localStringBuffer.append(",");
    if (paramS3Response.hasTtsServiceEventExtension())
    {
      Synthesis.TtsServiceEvent localTtsServiceEvent = paramS3Response.getTtsServiceEventExtension();
      localStringBuffer.append("TtsServiceEvent[");
      localStringBuffer.append("audio size:").append(localTtsServiceEvent.getAudio().size());
      localStringBuffer.append("]");
    }
    if (paramS3Response.hasRecognizerEventExtension())
    {
      Recognizer.RecognizerEvent localRecognizerEvent = paramS3Response.getRecognizerEventExtension();
      localStringBuffer.append("RecognitionEvent[");
      if (localRecognizerEvent.hasRecognitionEvent())
      {
        RecognizerProtos.RecognitionEvent localRecognitionEvent = localRecognizerEvent.getRecognitionEvent();
        long l1 = 0L;
        long l2 = 0L;
        localStringBuffer.append("RecognitionEvent[");
        localStringBuffer.append("status=");
        localStringBuffer.append(localRecognitionEvent.getStatus());
        localStringBuffer.append(",");
        localStringBuffer.append("event_type=");
        localStringBuffer.append(localRecognitionEvent.getEventType());
        localStringBuffer.append(",");
        if (localRecognitionEvent.hasPartialResult())
        {
          int i = localRecognitionEvent.getPartialResult().getPartCount();
          localStringBuffer.append("partialResult[#");
          localStringBuffer.append(i);
          localStringBuffer.append(",");
          for (int j = 0; j < i; j++)
            localStringBuffer.append(localRecognitionEvent.getPartialResult().getPart(j).getText());
          localStringBuffer.append("]");
          localStringBuffer.append(",");
          l1 = localRecognitionEvent.getPartialResult().getStartTimeUsec();
          l2 = localRecognitionEvent.getPartialResult().getEndTimeUsec();
        }
        if (localRecognitionEvent.hasResult())
        {
          localStringBuffer.append("result[#");
          localStringBuffer.append(localRecognitionEvent.getResult().getHypothesisCount());
          localStringBuffer.append(",");
          if (localRecognitionEvent.getResult().getHypothesisCount() > 0)
            localStringBuffer.append(localRecognitionEvent.getResult().getHypothesis(0).getText());
          localStringBuffer.append("]");
          localStringBuffer.append(",");
          l1 = localRecognitionEvent.getResult().getStartTimeUsec();
          l2 = localRecognitionEvent.getResult().getEndTimeUsec();
        }
        localStringBuffer.append("{").append(l1).append("}{").append(l2).append("}");
        localStringBuffer.append("]");
      }
      localStringBuffer.append("]");
    }
    localStringBuffer.append("]\n");
    return localStringBuffer.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3ResponseParser
 * JD-Core Version:    0.6.2
 */