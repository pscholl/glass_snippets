.class public final Lcom/google/common/reflect/MutableTypeToInstanceMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "MutableTypeToInstanceMap.java"

# interfaces
.implements Lcom/google/common/reflect/TypeToInstanceMap;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<",
        "Lcom/google/common/reflect/TypeToken",
        "<+TB;>;TB;>;",
        "Lcom/google/common/reflect/TypeToInstanceMap",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    return-void
.end method

.method private trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private trustedPut(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/MutableTypeToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;TB;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    iget-object v0, p0, Lcom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public getInstance(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->rejectTypeVariables()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/MutableTypeToInstanceMap;->trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/MutableTypeToInstanceMap;->trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;TB;)TB;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, key:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<+TB;>;"
    .local p2, value:Ljava/lang/Object;,"TB;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use putInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/reflect/MutableTypeToInstanceMap;->put(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;+TB;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+Lcom/google/common/reflect/TypeToken<+TB;>;+TB;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use putInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putInstance(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->rejectTypeVariables()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/common/reflect/MutableTypeToInstanceMap;->trustedPut(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/reflect/MutableTypeToInstanceMap;,"Lcom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/common/reflect/MutableTypeToInstanceMap;->trustedPut(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
