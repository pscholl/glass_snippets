.class public final Lcom/google/common/reflect/ImmutableTypeToInstanceMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ImmutableTypeToInstanceMap.java"

# interfaces
.implements Lcom/google/common/reflect/TypeToInstanceMap;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;,
        Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    }
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
.field private final delegate:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, delegate:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Lcom/google/common/reflect/TypeToken<+TB;>;TB;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public static builder()Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;-><init>(Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/reflect/ImmutableTypeToInstanceMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
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

    .prologue
    .line 138
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate()Ljava/util/Map;

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
    .line 132
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    iget-object v0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

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

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->rejectTypeVariables()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

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

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putInstance(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, type:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
