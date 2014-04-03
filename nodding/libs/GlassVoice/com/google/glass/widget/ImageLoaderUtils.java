package com.google.glass.widget;

import android.util.Pair;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Predicate;
import com.google.common.collect.Lists;
import com.google.glass.entity.EntityHelper;
import com.google.glass.util.ArrayUtils;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ImageLoaderUtils
{
  private static final Predicate<TimelineNano.Entity> hasImagePredicate = new Predicate()
  {
    public boolean apply(TimelineNano.Entity paramAnonymousEntity)
    {
      return !ArrayUtils.isEmpty(paramAnonymousEntity.imageUrl);
    }
  };

  @VisibleForTesting
  static Pair<List<TimelineNano.Entity>, MosaicView.GroupCountType> getDrawingEntities(List<TimelineNano.Entity> paramList, int paramInt)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      return Pair.create(Collections.emptyList(), MosaicView.GroupCountType.NONE);
    List localList = getEntitiesWithImages(paramList, paramInt);
    TimelineNano.Entity localEntity1 = (TimelineNano.Entity)paramList.get(0);
    if (!localList.contains(localEntity1))
      localList.add(0, localEntity1);
    int i = localList.size();
    if (localList.size() == 0)
      localList.addAll(paramList.subList(0, Math.min(2, paramList.size())));
    while (true)
    {
      if (localList.size() <= paramInt)
        break label193;
      return Pair.create(trimToSize(localList, paramInt - 1), MosaicView.GroupCountType.ADD_CELL);
      if (localList.size() == 1)
      {
        Iterator localIterator = paramList.iterator();
        if (localIterator.hasNext())
        {
          TimelineNano.Entity localEntity2 = (TimelineNano.Entity)localIterator.next();
          if (EntityHelper.doEntitiesMatch((TimelineNano.Entity)localList.get(0), localEntity2))
            break;
          localList.add(localEntity2);
        }
      }
    }
    label193: if ((localList.size() == 2) && (paramList.size() > 2) && (i < 2))
      return Pair.create(localList, MosaicView.GroupCountType.IN_LAST_CELL);
    if (paramList.size() > localList.size())
      return Pair.create(trimToSize(localList, paramInt - 1), MosaicView.GroupCountType.ADD_CELL);
    return Pair.create(localList, MosaicView.GroupCountType.NONE);
  }

  static Pair<List<TimelineNano.Entity>, MosaicView.GroupCountType> getDrawingEntities(List<TimelineNano.Entity> paramList, int paramInt1, int paramInt2)
  {
    return getDrawingEntities(paramList, MosaicView.getMaxNumSupportedEntities(paramInt1, paramInt2));
  }

  @VisibleForTesting
  static Pair<List<byte[]>, MosaicView.GroupCountType> getDrawingImages(List<byte[]> paramList, int paramInt)
  {
    List localList = trimToSize(paramList, paramInt);
    if (paramList.size() > localList.size())
      return Pair.create(trimToSize(localList, paramInt - 1), MosaicView.GroupCountType.ADD_CELL);
    return Pair.create(localList, MosaicView.GroupCountType.NONE);
  }

  static Pair<List<byte[]>, MosaicView.GroupCountType> getDrawingImages(List<byte[]> paramList, int paramInt1, int paramInt2)
  {
    return getDrawingImages(paramList, MosaicView.getMaxNumSupportedEntities(paramInt1, paramInt2));
  }

  @VisibleForTesting
  static List<TimelineNano.Entity> getEntitiesWithImages(List<TimelineNano.Entity> paramList, int paramInt)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    Iterator localIterator = paramList.iterator();
    do
    {
      TimelineNano.Entity localEntity;
      do
      {
        if (!localIterator.hasNext())
          break;
        localEntity = (TimelineNano.Entity)localIterator.next();
      }
      while (!hasImagePredicate.apply(localEntity));
      localLinkedList.add(localEntity);
    }
    while (localLinkedList.size() != paramInt);
    return localLinkedList;
  }

  @VisibleForTesting
  static <T> List<T> trimToSize(List<T> paramList, int paramInt)
  {
    if (paramList.size() > paramInt)
      paramList = paramList.subList(0, paramInt);
    return paramList;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ImageLoaderUtils
 * JD-Core Version:    0.6.2
 */