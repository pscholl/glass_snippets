.class public Lcom/google/common/collect/HashBasedTable;
.super Lcom/google/common/collect/StandardTable;
.source "HashBasedTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBasedTable$Factory;
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
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$Factory;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/collect/HashBasedTable$Factory",
            "<TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    .local p1, backingMap:Ljava/util/Map;,"Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p2, factory:Lcom/google/common/collect/HashBasedTable$Factory;,"Lcom/google/common/collect/HashBasedTable$Factory<TC;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 110
    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBasedTable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/google/common/collect/HashBasedTable;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/common/collect/HashBasedTable$Factory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/collect/HashBasedTable$Factory;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/HashBasedTable;-><init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$Factory;)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/HashBasedTable;
    .locals 3
    .parameter "expectedRows"
    .parameter "expectedCellsPerRow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/HashBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    invoke-static {p0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 90
    .local v0, backingMap:Ljava/util/Map;,"Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/HashBasedTable;

    new-instance v2, Lcom/google/common/collect/HashBasedTable$Factory;

    invoke-direct {v2, p1}, Lcom/google/common/collect/HashBasedTable$Factory;-><init>(I)V

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/HashBasedTable;-><init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$Factory;)V

    return-object v1

    .line 88
    .end local v0           #backingMap:Ljava/util/Map;,"Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static create(Lcom/google/common/collect/Table;)Lcom/google/common/collect/HashBasedTable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/HashBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, table:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    .line 104
    .local v0, result:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBasedTable;->putAll(Lcom/google/common/collect/Table;)V

    .line 105
    return-object v0
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->clear()V

    return-void
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->columnMap()Ljava/util/Map;

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
    .line 116
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 121
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

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
    .line 126
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 131
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 141
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 136
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Table;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->putAll(Lcom/google/common/collect/Table;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 146
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/HashBasedTable;,"Lcom/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
