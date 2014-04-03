.class Lcom/google/common/collect/Tables$TransposeTable;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposeTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table",
        "<TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final TRANSPOSE_CELL:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<***>;",
            "Lcom/google/common/collect/Table$Cell",
            "<***>;>;"
        }
    .end annotation
.end field


# instance fields
.field cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Tables$TransposeTable",
            "<TC;TR;TV;>.CellSet;"
        }
    .end annotation
.end field

.field final original:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$1;

    invoke-direct {v0}, Lcom/google/common/collect/Tables$TransposeTable$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Table;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, original:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table;

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    .line 149
    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;

    return-object v0
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TC;TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    .line 257
    .local v0, result:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    .end local v0           #result:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;-><init>(Lcom/google/common/collect/Tables$TransposeTable;)V

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->clear()V

    .line 153
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, columnKey:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

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
    .line 168
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 172
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

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
    .line 176
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

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
    .line 180
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 225
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    if-ne p1, p0, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 232
    :goto_0
    return v1

    .line 228
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Table;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/google/common/collect/Table;

    .line 230
    .local v0, other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 232
    .end local v0           #other:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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
    .line 184
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 237
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 188
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TC;"
    .local p2, columnKey:Ljava/lang/Object;,"TR;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TC;+TR;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, table:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<+TC;+TR;+TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-static {p1}, Lcom/google/common/collect/Tables;->transpose(Lcom/google/common/collect/Table;)Lcom/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Table;->putAll(Lcom/google/common/collect/Table;)V

    .line 197
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
    .line 200
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TC;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 216
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
