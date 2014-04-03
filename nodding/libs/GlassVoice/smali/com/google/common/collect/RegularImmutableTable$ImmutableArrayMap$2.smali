.class Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap.2;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 399
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    return-object v0
.end method
