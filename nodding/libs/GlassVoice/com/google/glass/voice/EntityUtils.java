package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ListMultimap;
import com.google.glass.entity.EntityCache;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.GlasswareMessagesLoadingTask;
import com.google.glass.util.SettingsHelper;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

public class EntityUtils
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final QualificationHelper qualificationHelper = new QualificationHelper();

  public static Collection<TimelineNano.Entity> getContactEntities(Context paramContext)
  {
    if (isGuestModeEnabled(paramContext))
      return getGuestModeEntities(paramContext, false);
    return EntityCache.getSharedInstance().getSpeakableCommunicationTargets();
  }

  public static Collection<TimelineNano.Entity> getGuestModeEntities(Context paramContext, boolean paramBoolean)
  {
    if (0 != 0);
    for (TimelineNano.Entity localEntity = EntityCache.getSharedInstance().getPlusEntityForUser(paramContext); localEntity != null; localEntity = EntityHelper.getSharedInstance().getSelfEntity())
      return Collections.singleton(localEntity);
    return Collections.emptyList();
  }

  public static ListMultimap<Integer, TimelineNano.Entity> getMirrorCommandEntities(Context paramContext)
  {
    ArrayListMultimap localArrayListMultimap = ArrayListMultimap.create();
    if (isGuestModeEnabled(paramContext))
      return localArrayListMultimap;
    return EntityCache.getSharedInstance().getSpeakableMirrorCommandEntities();
  }

  public static Collection<TimelineNano.Entity> getPlusShareTargetEntities(Context paramContext)
  {
    if (isGuestModeEnabled(paramContext))
      return getGuestModeEntities(paramContext, true);
    return EntityCache.getSharedInstance().getSpeakablePlusShareTargets();
  }

  public static String getQualifiedName(Context paramContext, TimelineNano.Entity paramEntity, long paramLong)
  {
    return qualificationHelper.getQualifiedName(paramContext, paramEntity, paramLong);
  }

  public static String getQualifiedNameImmediately(Context paramContext, TimelineNano.Entity paramEntity)
  {
    return qualificationHelper.getQualifiedNameImmediately(paramContext, paramEntity);
  }

  public static String getSemanticTag(TimelineNano.Entity paramEntity)
  {
    return VoiceCommand.normalizeSemanticTag(paramEntity.id);
  }

  public static Collection<TimelineNano.Entity> getShareTargetEntities(Context paramContext, String paramString)
  {
    if (isGuestModeEnabled(paramContext))
      return getGuestModeEntities(paramContext, true);
    return EntityCache.getSharedInstance().getSpeakableShareTargets(paramString).values();
  }

  public static boolean hasContacts(Context paramContext)
  {
    return !getContactEntities(paramContext).isEmpty();
  }

  public static boolean hasOnlyFocusEntities(Collection<TimelineNano.Entity> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      return false;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      if (!EntityHelper.isFocusEntity((TimelineNano.Entity)localIterator.next()))
        return false;
    return true;
  }

  public static boolean hasPlusShareTargets(Context paramContext)
  {
    return !getPlusShareTargetEntities(paramContext).isEmpty();
  }

  public static boolean hasShareTargets(Context paramContext, String paramString)
  {
    return !getShareTargetEntities(paramContext, paramString).isEmpty();
  }

  static boolean isGuestModeEnabled(Context paramContext)
  {
    return new SettingsHelper(paramContext).isGuestModeEnabled();
  }

  public static void preloadQualifiedNames(Context paramContext, Collection<TimelineNano.Entity> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      TimelineNano.Entity localEntity = (TimelineNano.Entity)localIterator.next();
      qualificationHelper.getQualifiedNameImmediately(paramContext, localEntity);
    }
  }

  @VisibleForTesting
  static class QualificationHelper
  {
    String getGlasswareName(Context paramContext, TimelineNano.Entity paramEntity, long paramLong)
      throws InterruptedException
    {
      return GlasswareMessagesLoadingTask.getGlasswareName(paramContext, paramEntity, paramLong);
    }

    final String getQualifiedName(Context paramContext, TimelineNano.Entity paramEntity, long paramLong)
    {
      String str1 = EntityHelper.getDisplayName(paramEntity);
      if (TextUtils.isEmpty(str1))
      {
        EntityUtils.logger.w("No name to display for entity; cannot qualify.", new Object[0]);
        str1 = "";
      }
      while (true)
      {
        return str1;
        if ((paramEntity.type == 1) && ((EntityHelper.isPlusEntity(paramEntity)) || (EntityHelper.isFocusEntity(paramEntity))))
          continue;
        try
        {
          String str3 = getGlasswareName(paramContext, paramEntity, paramLong);
          str2 = str3;
          if ((TextUtils.isEmpty(str2)) || (str1.toLowerCase().contains(str2.toLowerCase())))
            continue;
          return str2 + " " + str1;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            String str2 = "";
        }
      }
    }

    final String getQualifiedNameImmediately(Context paramContext, TimelineNano.Entity paramEntity)
    {
      return getQualifiedName(paramContext, paramEntity, 0L);
    }

    final void preloadQualifiedNames(Context paramContext, Collection<TimelineNano.Entity> paramCollection)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        getQualifiedNameImmediately(paramContext, (TimelineNano.Entity)localIterator.next());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.EntityUtils
 * JD-Core Version:    0.6.2
 */