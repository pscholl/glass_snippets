.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1236
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->this$2:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1240
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1236
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;,"Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->this$2:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->this$1:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
