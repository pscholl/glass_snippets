.class Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
.super Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonTerminalBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p3, nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    .local p4, nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 63
    iput-object p4, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 64
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
    .line 69
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

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
    .line 75
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method
