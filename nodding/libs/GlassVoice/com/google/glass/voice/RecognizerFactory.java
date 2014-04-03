package com.google.glass.voice;

import android.content.Context;
import com.google.common.collect.Lists;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class RecognizerFactory
{
  private static final long GET_QUALIFIED_ENTITY_NAME_TIMEOUT_MS = 250L;
  public static final HotwordRecognizer NO_OP_RECOGNIZER = new NoOpRecognizer(null);
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  protected static final List<TimelineNano.Entity> prependNames(Context paramContext, Collection<TimelineNano.Entity> paramCollection)
  {
    ArrayList localArrayList = Lists.newArrayListWithCapacity(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      TimelineNano.Entity localEntity1 = (TimelineNano.Entity)localIterator.next();
      String str = EntityUtils.getQualifiedName(paramContext, localEntity1, 250L);
      TimelineNano.Entity localEntity2 = EntityHelper.clone(localEntity1);
      localEntity2.displayName = str;
      localArrayList.add(localEntity2);
    }
    return localArrayList;
  }

  protected HotwordRecognizer createCustomRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    return createCustomRecognizer(paramContext, paramVoiceConfig, Collections.emptySet());
  }

  protected abstract HotwordRecognizer createCustomRecognizer(Context paramContext, VoiceConfig paramVoiceConfig, Collection<TimelineNano.Entity> paramCollection);

  protected final HotwordRecognizer createEntityRecognizer(Context paramContext, String paramString, Collection<TimelineNano.Entity> paramCollection)
  {
    if (paramCollection.isEmpty())
      return NO_OP_RECOGNIZER;
    String[] arrayOfString1 = new String[paramCollection.size()];
    String[] arrayOfString2 = new String[paramCollection.size()];
    Iterator localIterator = paramCollection.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
    {
      TimelineNano.Entity localEntity = (TimelineNano.Entity)localIterator.next();
      arrayOfString1[i] = EntityHelper.getDisplayName(localEntity);
      arrayOfString2[i] = EntityUtils.getSemanticTag(localEntity);
    }
    return createCustomRecognizer(paramContext, new VoiceConfig(paramString, arrayOfString1, arrayOfString2), paramCollection);
  }

  public HotwordRecognizer createRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    return createRecognizer(paramContext, paramVoiceConfig, Collections.emptySet());
  }

  public HotwordRecognizer createRecognizer(Context paramContext, VoiceConfig paramVoiceConfig, Collection<TimelineNano.Entity> paramCollection)
  {
    if (!paramVoiceConfig.isValid())
      throw new AssertionError("Invalid voice config: " + paramVoiceConfig);
    if (VoiceConfig.isSystemConfig(paramVoiceConfig))
      return createSystemRecognizer(paramContext, paramVoiceConfig);
    return createCustomRecognizer(paramContext, paramVoiceConfig, paramCollection);
  }

  protected abstract HotwordRecognizer createSystemRecognizer(Context paramContext, VoiceConfig paramVoiceConfig);

  private static final class NoOpRecognizer
    implements HotwordRecognizer
  {
    private boolean writeAudioWarningLogged = false;

    public void activate()
    {
      RecognizerFactory.logger.i("activate() called on no-op recognizer, nothing to do.", new Object[0]);
      this.writeAudioWarningLogged = false;
    }

    public void deactivate()
    {
      RecognizerFactory.logger.i("deactivate() called on no-op recognizer, nothing to do.", new Object[0]);
    }

    public void destroy()
    {
      RecognizerFactory.logger.i("destroy() called on no-op recognizer, nothing to do.", new Object[0]);
    }

    public VoiceCommand stringToCommand(String paramString)
    {
      throw new UnsupportedOperationException("No op recognizer should not generate results");
    }

    public String toString()
    {
      return "NO_OP_RECOGNIZER";
    }

    public HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
    {
      if (!this.writeAudioWarningLogged)
      {
        RecognizerFactory.logger.w("Feeding audio to a no-op recognizer!", new Object[0]);
        this.writeAudioWarningLogged = true;
      }
      return null;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.RecognizerFactory
 * JD-Core Version:    0.6.2
 */