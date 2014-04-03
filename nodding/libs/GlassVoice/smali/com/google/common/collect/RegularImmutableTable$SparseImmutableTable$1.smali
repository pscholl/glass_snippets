.class Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->createValues()Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable.1;"
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->iterationOrderRow:[I
    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$100(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v3

    aget v2, v3, p1

    .line 288
    .local v2, rowIndex:I
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$200(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableMap;

    .line 289
    .local v1, row:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TC;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->iterationOrderColumn:[I
    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$300(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v3

    aget v0, v3, p1

    .line 290
    .local v0, columnIndex:I
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 295
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable.1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 282
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->iterationOrderRow:[I
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$100(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method
