.class public interface abstract Lcom/google/common/cache/d;
.super Ljava/lang/Object;


# virtual methods
.method public abstract asMap()Ljava/util/concurrent/ConcurrentMap;
.end method

.method public abstract cleanUp()V
.end method

.method public abstract get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end method

.method public abstract getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
.end method

.method public abstract getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract invalidate(Ljava/lang/Object;)V
.end method

.method public abstract invalidateAll()V
.end method

.method public abstract invalidateAll(Ljava/lang/Iterable;)V
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract putAll(Ljava/util/Map;)V
.end method

.method public abstract size()J
.end method

.method public abstract stats()Lcom/google/common/cache/h;
.end method
