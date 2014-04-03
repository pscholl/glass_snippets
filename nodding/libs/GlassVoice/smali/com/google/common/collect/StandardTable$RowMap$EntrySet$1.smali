.class Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<TR;",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 991
    .local p0, this:Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;,"Lcom/google/common/collect/StandardTable$RowMap$EntrySet.1;"
    .local p2, x0:Ljava/util/Iterator;,"Ljava/util/Iterator<+TR;>;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 991
    .local p0, this:Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;,"Lcom/google/common/collect/StandardTable$RowMap$EntrySet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, this:Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;,"Lcom/google/common/collect/StandardTable$RowMap$EntrySet.1;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lcom/google/common/collect/StandardTable$RowMap$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$RowMap;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
