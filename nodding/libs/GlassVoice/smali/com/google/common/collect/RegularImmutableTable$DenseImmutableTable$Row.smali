.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;
.super Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field private final rowIndex:I

.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V
    .locals 1
    .parameter
    .parameter "rowIndex"

    .prologue
    .line 489
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.Row;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    .line 490
    #getter for: Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowCounts:[I
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$600(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 491
    iput p2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->rowIndex:I

    .line 492
    return-void
.end method


# virtual methods
.method getValue(I)Ljava/lang/Object;
    .locals 2
    .parameter "keyIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$800(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->rowIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 506
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.Row;"
    const/4 v0, 0x1

    return v0
.end method

.method keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$700(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
