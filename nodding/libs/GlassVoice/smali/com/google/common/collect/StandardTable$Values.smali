.class Lcom/google/common/collect/StandardTable$Values;
.super Lcom/google/common/collect/StandardTable$TableCollection;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableCollection<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1
    .parameter

    .prologue
    .line 935
    .local p0, this:Lcom/google/common/collect/StandardTable$Values;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Values;->this$0:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/StandardTable$TableCollection;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 935
    .local p0, this:Lcom/google/common/collect/StandardTable$Values;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Values;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Values;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, this:Lcom/google/common/collect/StandardTable$Values;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Values;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Values$1;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Values;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$Values$1;-><init>(Lcom/google/common/collect/StandardTable$Values;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 949
    .local p0, this:Lcom/google/common/collect/StandardTable$Values;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Values;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method
