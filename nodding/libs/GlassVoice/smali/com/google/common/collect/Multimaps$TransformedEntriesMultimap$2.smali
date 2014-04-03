.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1494
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap.2;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;->this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1494
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap.2;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;->apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap.2;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV1;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;Ljava/util/Map$Entry;)V

    return-object v0
.end method
