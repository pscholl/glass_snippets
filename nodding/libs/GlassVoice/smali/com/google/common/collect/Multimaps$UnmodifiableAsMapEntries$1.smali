.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1013
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries.1;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->this$0:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    #calls: Lcom/google/common/collect/Multimaps;->unmodifiableAsMapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->access$300(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
