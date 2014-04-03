package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

class ComputingConcurrentHashMap<K, V> extends MapMakerInternalMap<K, V>
{
  private static final long serialVersionUID = 4L;
  final Function<? super K, ? extends V> computingFunction;

  ComputingConcurrentHashMap(MapMaker paramMapMaker, Function<? super K, ? extends V> paramFunction)
  {
    super(paramMapMaker);
    this.computingFunction = ((Function)Preconditions.checkNotNull(paramFunction));
  }

  MapMakerInternalMap.Segment<K, V> createSegment(int paramInt1, int paramInt2)
  {
    return new ComputingSegment(this, paramInt1, paramInt2);
  }

  V getOrCompute(K paramK)
    throws ExecutionException
  {
    int i = hash(Preconditions.checkNotNull(paramK));
    return segmentFor(i).getOrCompute(paramK, i, this.computingFunction);
  }

  ComputingSegment<K, V> segmentFor(int paramInt)
  {
    return (ComputingSegment)super.segmentFor(paramInt);
  }

  Object writeReplace()
  {
    return new ComputingSerializationProxy(this.keyStrength, this.valueStrength, this.keyEquivalence, this.valueEquivalence, this.expireAfterWriteNanos, this.expireAfterAccessNanos, this.maximumSize, this.concurrencyLevel, this.removalListener, this, this.computingFunction);
  }

  private static final class ComputationExceptionReference<K, V>
    implements MapMakerInternalMap.ValueReference<K, V>
  {
    final Throwable t;

    ComputationExceptionReference(Throwable paramThrowable)
    {
      this.t = paramThrowable;
    }

    public void clear(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
    }

    public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public V get()
    {
      return null;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getEntry()
    {
      return null;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public V waitForValue()
      throws ExecutionException
    {
      throw new ExecutionException(this.t);
    }
  }

  private static final class ComputedReference<K, V>
    implements MapMakerInternalMap.ValueReference<K, V>
  {
    final V value;

    ComputedReference(@Nullable V paramV)
    {
      this.value = paramV;
    }

    public void clear(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
    }

    public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public V get()
    {
      return this.value;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getEntry()
    {
      return null;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public V waitForValue()
    {
      return get();
    }
  }

  static final class ComputingSegment<K, V> extends MapMakerInternalMap.Segment<K, V>
  {
    ComputingSegment(MapMakerInternalMap<K, V> paramMapMakerInternalMap, int paramInt1, int paramInt2)
    {
      super(paramInt1, paramInt2);
    }

    V compute(K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, ComputingConcurrentHashMap.ComputingValueReference<K, V> paramComputingValueReference)
      throws ExecutionException
    {
      Object localObject1 = null;
      System.nanoTime();
      long l = 0L;
      try
      {
        try
        {
          localObject1 = paramComputingValueReference.compute(paramK, paramInt);
          l = System.nanoTime();
          if ((localObject1 != null) && (put(paramK, paramInt, localObject1, true) != null))
            enqueueNotification(paramK, paramInt, localObject1, MapMaker.RemovalCause.REPLACED);
          return localObject1;
        }
        finally
        {
        }
      }
      finally
      {
        if (l == 0L)
          System.nanoTime();
        if (localObject1 == null)
          clearValue(paramK, paramInt, paramComputingValueReference);
      }
    }

    // ERROR //
    V getOrCompute(K paramK, int paramInt, Function<? super K, ? extends V> paramFunction)
      throws ExecutionException
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: iload_2
      //   3: invokevirtual 48	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:getEntry	(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
      //   6: astore 5
      //   8: aload 5
      //   10: ifnull +29 -> 39
      //   13: aload_0
      //   14: aload 5
      //   16: invokevirtual 52	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:getLiveValue	(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;
      //   19: astore 6
      //   21: aload 6
      //   23: ifnull +16 -> 39
      //   26: aload_0
      //   27: aload 5
      //   29: invokevirtual 56	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:recordRead	(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
      //   32: aload_0
      //   33: invokevirtual 60	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postReadCleanup	()V
      //   36: aload 6
      //   38: areturn
      //   39: aload 5
      //   41: ifnull +18 -> 59
      //   44: aload 5
      //   46: invokeinterface 66 1 0
      //   51: invokeinterface 72 1 0
      //   56: ifne +382 -> 438
      //   59: iconst_1
      //   60: istore 7
      //   62: aload_0
      //   63: invokevirtual 75	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:lock	()V
      //   66: aload_0
      //   67: invokevirtual 78	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:preWriteCleanup	()V
      //   70: iconst_m1
      //   71: aload_0
      //   72: getfield 82	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:count	I
      //   75: iadd
      //   76: istore 9
      //   78: aload_0
      //   79: getfield 86	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:table	Ljava/util/concurrent/atomic/AtomicReferenceArray;
      //   82: astore 10
      //   84: iload_2
      //   85: iconst_m1
      //   86: aload 10
      //   88: invokevirtual 92	java/util/concurrent/atomic/AtomicReferenceArray:length	()I
      //   91: iadd
      //   92: iand
      //   93: istore 11
      //   95: aload 10
      //   97: iload 11
      //   99: invokevirtual 96	java/util/concurrent/atomic/AtomicReferenceArray:get	(I)Ljava/lang/Object;
      //   102: checkcast 62	com/google/common/collect/MapMakerInternalMap$ReferenceEntry
      //   105: astore 12
      //   107: aload 12
      //   109: astore 5
      //   111: aload 5
      //   113: ifnull +62 -> 175
      //   116: aload 5
      //   118: invokeinterface 100 1 0
      //   123: astore 13
      //   125: aload 5
      //   127: invokeinterface 103 1 0
      //   132: iload_2
      //   133: if_icmpne +273 -> 406
      //   136: aload 13
      //   138: ifnull +268 -> 406
      //   141: aload_0
      //   142: getfield 107	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:map	Lcom/google/common/collect/MapMakerInternalMap;
      //   145: getfield 113	com/google/common/collect/MapMakerInternalMap:keyEquivalence	Lcom/google/common/base/Equivalence;
      //   148: aload_1
      //   149: aload 13
      //   151: invokevirtual 119	com/google/common/base/Equivalence:equivalent	(Ljava/lang/Object;Ljava/lang/Object;)Z
      //   154: ifeq +252 -> 406
      //   157: aload 5
      //   159: invokeinterface 66 1 0
      //   164: invokeinterface 72 1 0
      //   169: ifeq +93 -> 262
      //   172: iconst_0
      //   173: istore 7
      //   175: aconst_null
      //   176: astore 15
      //   178: iload 7
      //   180: ifeq +50 -> 230
      //   183: new 21	com/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference
      //   186: dup
      //   187: aload_3
      //   188: invokespecial 122	com/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference:<init>	(Lcom/google/common/base/Function;)V
      //   191: astore 16
      //   193: aload 5
      //   195: ifnonnull +227 -> 422
      //   198: aload_0
      //   199: aload_1
      //   200: iload_2
      //   201: aload 12
      //   203: invokevirtual 126	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:newEntry	(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
      //   206: astore 5
      //   208: aload 5
      //   210: aload 16
      //   212: invokeinterface 130 2 0
      //   217: aload 10
      //   219: iload 11
      //   221: aload 5
      //   223: invokevirtual 134	java/util/concurrent/atomic/AtomicReferenceArray:set	(ILjava/lang/Object;)V
      //   226: aload 16
      //   228: astore 15
      //   230: aload_0
      //   231: invokevirtual 137	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:unlock	()V
      //   234: aload_0
      //   235: invokevirtual 140	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postWriteCleanup	()V
      //   238: iload 7
      //   240: ifeq +198 -> 438
      //   243: aload_0
      //   244: aload_1
      //   245: iload_2
      //   246: aload 5
      //   248: aload 15
      //   250: invokevirtual 142	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:compute	(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
      //   253: astore 17
      //   255: aload_0
      //   256: invokevirtual 60	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postReadCleanup	()V
      //   259: aload 17
      //   261: areturn
      //   262: aload 5
      //   264: invokeinterface 66 1 0
      //   269: invokeinterface 144 1 0
      //   274: astore 20
      //   276: aload 20
      //   278: ifnonnull +70 -> 348
      //   281: aload_0
      //   282: aload 13
      //   284: iload_2
      //   285: aload 20
      //   287: getstatic 147	com/google/common/collect/MapMaker$RemovalCause:COLLECTED	Lcom/google/common/collect/MapMaker$RemovalCause;
      //   290: invokevirtual 38	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:enqueueNotification	(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
      //   293: aload_0
      //   294: getfield 151	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:evictionQueue	Ljava/util/Queue;
      //   297: aload 5
      //   299: invokeinterface 157 2 0
      //   304: pop
      //   305: aload_0
      //   306: getfield 160	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:expirationQueue	Ljava/util/Queue;
      //   309: aload 5
      //   311: invokeinterface 157 2 0
      //   316: pop
      //   317: aload_0
      //   318: iload 9
      //   320: putfield 82	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:count	I
      //   323: goto -148 -> 175
      //   326: astore 8
      //   328: aload_0
      //   329: invokevirtual 137	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:unlock	()V
      //   332: aload_0
      //   333: invokevirtual 140	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postWriteCleanup	()V
      //   336: aload 8
      //   338: athrow
      //   339: astore 4
      //   341: aload_0
      //   342: invokevirtual 60	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postReadCleanup	()V
      //   345: aload 4
      //   347: athrow
      //   348: aload_0
      //   349: getfield 107	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:map	Lcom/google/common/collect/MapMakerInternalMap;
      //   352: invokevirtual 163	com/google/common/collect/MapMakerInternalMap:expires	()Z
      //   355: ifeq +30 -> 385
      //   358: aload_0
      //   359: getfield 107	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:map	Lcom/google/common/collect/MapMakerInternalMap;
      //   362: aload 5
      //   364: invokevirtual 167	com/google/common/collect/MapMakerInternalMap:isExpired	(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
      //   367: ifeq +18 -> 385
      //   370: aload_0
      //   371: aload 13
      //   373: iload_2
      //   374: aload 20
      //   376: getstatic 170	com/google/common/collect/MapMaker$RemovalCause:EXPIRED	Lcom/google/common/collect/MapMaker$RemovalCause;
      //   379: invokevirtual 38	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:enqueueNotification	(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
      //   382: goto -89 -> 293
      //   385: aload_0
      //   386: aload 5
      //   388: invokevirtual 173	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:recordLockedRead	(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
      //   391: aload_0
      //   392: invokevirtual 137	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:unlock	()V
      //   395: aload_0
      //   396: invokevirtual 140	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postWriteCleanup	()V
      //   399: aload_0
      //   400: invokevirtual 60	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postReadCleanup	()V
      //   403: aload 20
      //   405: areturn
      //   406: aload 5
      //   408: invokeinterface 177 1 0
      //   413: astore 14
      //   415: aload 14
      //   417: astore 5
      //   419: goto -308 -> 111
      //   422: aload 5
      //   424: aload 16
      //   426: invokeinterface 130 2 0
      //   431: aload 16
      //   433: astore 15
      //   435: goto -205 -> 230
      //   438: aload 5
      //   440: invokestatic 182	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
      //   443: ifne +45 -> 488
      //   446: iconst_1
      //   447: istore 18
      //   449: iload 18
      //   451: ldc 184
      //   453: invokestatic 190	com/google/common/base/Preconditions:checkState	(ZLjava/lang/Object;)V
      //   456: aload 5
      //   458: invokeinterface 66 1 0
      //   463: invokeinterface 193 1 0
      //   468: astore 19
      //   470: aload 19
      //   472: ifnull -472 -> 0
      //   475: aload_0
      //   476: aload 5
      //   478: invokevirtual 56	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:recordRead	(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
      //   481: aload_0
      //   482: invokevirtual 60	com/google/common/collect/ComputingConcurrentHashMap$ComputingSegment:postReadCleanup	()V
      //   485: aload 19
      //   487: areturn
      //   488: iconst_0
      //   489: istore 18
      //   491: goto -42 -> 449
      //   494: astore 8
      //   496: goto -168 -> 328
      //
      // Exception table:
      //   from	to	target	type
      //   66	107	326	finally
      //   116	136	326	finally
      //   141	172	326	finally
      //   183	193	326	finally
      //   262	276	326	finally
      //   281	293	326	finally
      //   293	323	326	finally
      //   348	382	326	finally
      //   385	391	326	finally
      //   406	415	326	finally
      //   0	8	339	finally
      //   13	21	339	finally
      //   26	32	339	finally
      //   44	59	339	finally
      //   62	66	339	finally
      //   230	238	339	finally
      //   243	255	339	finally
      //   328	339	339	finally
      //   391	399	339	finally
      //   438	446	339	finally
      //   449	470	339	finally
      //   475	481	339	finally
      //   198	226	494	finally
      //   422	431	494	finally
    }
  }

  static final class ComputingSerializationProxy<K, V> extends MapMakerInternalMap.AbstractSerializationProxy<K, V>
  {
    private static final long serialVersionUID = 4L;
    final Function<? super K, ? extends V> computingFunction;

    ComputingSerializationProxy(MapMakerInternalMap.Strength paramStrength1, MapMakerInternalMap.Strength paramStrength2, Equivalence<Object> paramEquivalence1, Equivalence<Object> paramEquivalence2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, MapMaker.RemovalListener<? super K, ? super V> paramRemovalListener, ConcurrentMap<K, V> paramConcurrentMap, Function<? super K, ? extends V> paramFunction)
    {
      super(paramStrength2, paramEquivalence1, paramEquivalence2, paramLong1, paramLong2, paramInt1, paramInt2, paramRemovalListener, paramConcurrentMap);
      this.computingFunction = paramFunction;
    }

    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.delegate = readMapMaker(paramObjectInputStream).makeComputingMap(this.computingFunction);
      readEntries(paramObjectInputStream);
    }

    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      writeMapTo(paramObjectOutputStream);
    }

    Object readResolve()
    {
      return this.delegate;
    }
  }

  private static final class ComputingValueReference<K, V>
    implements MapMakerInternalMap.ValueReference<K, V>
  {

    @GuardedBy("ComputingValueReference.this")
    volatile MapMakerInternalMap.ValueReference<K, V> computedReference = MapMakerInternalMap.unset();
    final Function<? super K, ? extends V> computingFunction;

    public ComputingValueReference(Function<? super K, ? extends V> paramFunction)
    {
      this.computingFunction = paramFunction;
    }

    public void clear(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      setValueReference(paramValueReference);
    }

    V compute(K paramK, int paramInt)
      throws ExecutionException
    {
      try
      {
        Object localObject = this.computingFunction.apply(paramK);
        setValueReference(new ComputingConcurrentHashMap.ComputedReference(localObject));
        return localObject;
      }
      catch (Throwable localThrowable)
      {
        setValueReference(new ComputingConcurrentHashMap.ComputationExceptionReference(localThrowable));
        throw new ExecutionException(localThrowable);
      }
    }

    public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, @Nullable V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public V get()
    {
      return null;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getEntry()
    {
      return null;
    }

    public boolean isComputingReference()
    {
      return true;
    }

    void setValueReference(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      try
      {
        if (this.computedReference == MapMakerInternalMap.UNSET)
        {
          this.computedReference = paramValueReference;
          notifyAll();
        }
        return;
      }
      finally
      {
      }
    }

    public V waitForValue()
      throws ExecutionException
    {
      int i;
      if (this.computedReference == MapMakerInternalMap.UNSET)
        i = 0;
      try
      {
        try
        {
          while (true)
          {
            MapMakerInternalMap.ValueReference localValueReference1 = this.computedReference;
            MapMakerInternalMap.ValueReference localValueReference2 = MapMakerInternalMap.UNSET;
            if (localValueReference1 != localValueReference2)
              break;
            try
            {
              wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              i = 1;
            }
          }
          return this.computedReference.waitForValue();
        }
        finally
        {
        }
      }
      finally
      {
        if (i != 0)
          Thread.currentThread().interrupt();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ComputingConcurrentHashMap
 * JD-Core Version:    0.6.2
 */