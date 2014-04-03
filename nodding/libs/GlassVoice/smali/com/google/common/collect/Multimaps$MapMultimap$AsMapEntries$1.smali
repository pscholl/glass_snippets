.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<TK;",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1232
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries.1;"
    .local p2, x0:Ljava/util/Iterator;,"Ljava/util/Iterator<+TK;>;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->this$1:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1232
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries.1;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;Ljava/lang/Object;)V

    return-object v0
.end method
