.class Lcom/google/common/collect/TreeBasedTable$TreeRow;
.super Lcom/google/common/collect/StandardTable$Row;
.source "TreeBasedTable.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TreeRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.Row;",
        "Ljava/util/SortedMap",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final lowerBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;

.field final upperBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field transient wholeRow:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    .local p2, rowKey:Ljava/lang/Object;,"TR;"
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TC;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    .local p2, rowKey:Ljava/lang/Object;,"TR;"
    .local p3, lowerBound:Ljava/lang/Object;,"TC;"
    .local p4, upperBound:Ljava/lang/Object;,"TC;"
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable$Row;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    .line 187
    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    .line 188
    iput-object p4, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    .line 189
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 191
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method bridge synthetic backingRowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method backingRowMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 200
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 201
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method bridge synthetic computeBackingRowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->computeBackingRowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method computeBackingRowMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow()Ljava/util/SortedMap;

    move-result-object v0

    .line 261
    .local v0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TC;TV;>;"
    if-eqz v0, :cond_2

    .line 262
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 270
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 284
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable$Row;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v0

    .line 226
    .local v0, backing:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TC;TV;>;"
    if-nez v0, :cond_0

    .line 227
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    .local p1, toKey:Ljava/lang/Object;,"TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v0

    .line 234
    .local v0, backing:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TC;TV;>;"
    if-nez v0, :cond_0

    .line 235
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method maintainEmptyInvariant()V
    .locals 3

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    const/4 v2, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    .line 278
    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap:Ljava/util/Map;

    .line 280
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    .local p1, key:Ljava/lang/Object;,"TC;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 290
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable$Row;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method rangeContains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 205
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    .local p1, fromKey:Ljava/lang/Object;,"TC;"
    .local p2, toKey:Ljava/lang/Object;,"TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 211
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    .local p1, fromKey:Ljava/lang/Object;,"TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 221
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method wholeRow()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$TreeRow;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>.TreeRow;"
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    return-object v0
.end method
