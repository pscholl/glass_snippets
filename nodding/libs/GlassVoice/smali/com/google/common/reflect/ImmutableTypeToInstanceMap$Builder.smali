.class public final Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableTypeToInstanceMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ImmutableTypeToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/reflect/ImmutableTypeToInstanceMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;"
    new-instance v0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;

    iget-object v1, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V

    return-object v0
.end method

.method public put(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;TT;)",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;"
    .local p1, key:Lcom/google/common/reflect/TypeToken;,"Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->rejectTypeVariables()Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 84
    return-object p0
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;,"Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<TB;>;"
    .local p1, key:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;->mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 75
    return-object p0
.end method
