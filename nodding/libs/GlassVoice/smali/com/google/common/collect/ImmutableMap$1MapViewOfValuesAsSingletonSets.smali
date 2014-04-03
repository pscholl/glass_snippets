.class Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;
.super Lcom/google/common/collect/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap;->viewMapValuesAsSingletonSets()Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapViewOfValuesAsSingletonSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;",
        "Lcom/google/common/collect/ImmutableSet",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 437
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;-><init>(Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 430
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, outerValue:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 430
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 448
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 430
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 432
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 430
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;,"Lcom/google/common/collect/ImmutableMap.1MapViewOfValuesAsSingletonSets;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
