.class Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet",
        "<TK;",
        "Lcom/google/common/collect/ImmutableSet",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;,"Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;,"Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets.1;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 462
    .local v0, backingIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1$1;-><init>(Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 453
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;,"Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, this:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;,"Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;

    return-object v0
.end method
