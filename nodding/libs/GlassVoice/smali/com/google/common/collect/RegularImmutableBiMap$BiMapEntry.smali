.class Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableEntry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method
