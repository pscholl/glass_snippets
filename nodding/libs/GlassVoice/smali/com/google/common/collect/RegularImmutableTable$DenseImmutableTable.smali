.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "RegularImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DenseImmutableTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;,
        Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;,
        Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;,
        Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;,
        Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final columnCounts:[I

.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final iterationOrderColumn:[I

.field private final iterationOrderRow:[I

.field private final rowCounts:[I

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    .local p1, cellList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    .local p2, rowSpace:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TR;>;"
    .local p3, columnSpace:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TC;>;"
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/google/common/collect/RegularImmutableTable;-><init>(Lcom/google/common/collect/RegularImmutableTable$1;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v11

    filled-new-array {v10, v11}, [I

    move-result-object v10

    const-class v11, Ljava/lang/Object;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [[Ljava/lang/Object;

    .line 459
    .local v0, array:[[Ljava/lang/Object;,"[[TV;"
    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 460
    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 461
    invoke-static/range {p3 .. p3}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    .line 462
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowCounts:[I

    .line 463
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnCounts:[I

    .line 464
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 465
    .local v7, iterationOrderRow:[I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 466
    .local v6, iterationOrderColumn:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 467
    invoke-virtual {p1, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 468
    .local v1, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v9

    .line 469
    .local v9, rowKey:Ljava/lang/Object;,"TR;"
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    .line 470
    .local v3, columnKey:Ljava/lang/Object;,"TC;"
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 471
    .local v8, rowIndex:I
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 472
    .local v2, columnIndex:I
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v10, v10, v8

    aget-object v4, v10, v2

    .line 473
    .local v4, existingValue:Ljava/lang/Object;,"TV;"
    if-nez v4, :cond_0

    const/4 v10, 0x1

    :goto_1
    const-string v11, "duplicate key: (%s, %s)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v10, v10, v8

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v2

    .line 475
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowCounts:[I

    aget v11, v10, v8

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v8

    .line 476
    iget-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnCounts:[I

    aget v11, v10, v2

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v2

    .line 477
    aput v8, v7, v5

    .line 478
    aput v2, v6, v5

    .line 466
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 473
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 480
    .end local v1           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .end local v2           #columnIndex:I
    .end local v3           #columnKey:Ljava/lang/Object;,"TC;"
    .end local v4           #existingValue:Ljava/lang/Object;,"TV;"
    .end local v8           #rowIndex:I
    .end local v9           #rowKey:Ljava/lang/Object;,"TR;"
    :cond_1
    iput-object v7, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderRow:[I

    .line 481
    iput-object v6, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderColumn:[I

    .line 482
    new-instance v10, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$RowMap;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 483
    new-instance v10, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$ColumnMap;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V

    iput-object v10, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 484
    return-void
.end method

.method static synthetic access$1000(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderRow:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderColumn:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowCounts:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnCounts:[I

    return-object v0
.end method

.method private static makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 447
    .local v2, indexBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 448
    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 449
    .local v3, key:Ljava/lang/Object;,"TE;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v3           #key:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    .local p1, columnKey:Ljava/lang/Object;,"TC;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 579
    .local v0, columnIndex:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    goto :goto_0
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 597
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 601
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 605
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createCellSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-object v0
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 610
    .local v1, rowIndex:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 611
    .local v0, columnIndex:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public row(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 618
    .local v0, rowIndex:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 619
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 621
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    goto :goto_0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->row(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 657
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderRow:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
