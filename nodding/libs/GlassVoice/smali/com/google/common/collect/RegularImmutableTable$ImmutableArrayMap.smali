.class abstract Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImmutableArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 345
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 346
    iput p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->size:I

    .line 347
    return-void
.end method

.method private isFull()Z
    .locals 2

    .prologue
    .line 353
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->size:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;)V

    .line 399
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;-><init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;)V

    goto :goto_0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->createKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 375
    .local v0, keyIndex:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method abstract keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 369
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->size:I

    return v0
.end method
