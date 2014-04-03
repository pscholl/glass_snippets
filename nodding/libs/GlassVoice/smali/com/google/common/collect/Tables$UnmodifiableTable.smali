.class Lcom/google/common/collect/Tables$UnmodifiableTable;
.super Lcom/google/common/collect/ForwardingTable;
.source "Tables.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableTable"
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
        "Lcom/google/common/collect/ForwardingTable",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Table;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    .local p1, delegate:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingTable;-><init>()V

    .line 604
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table;

    iput-object v0, p0, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate:Lcom/google/common/collect/Table;

    .line 605
    return-void
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
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 621
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    .local p1, columnKey:Ljava/lang/Object;,"TC;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
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
    .line 636
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    #calls: Lcom/google/common/collect/Tables;->unmodifiableWrapper()Lcom/google/common/base/Function;
    invoke-static {}, Lcom/google/common/collect/Tables;->access$100()Lcom/google/common/base/Function;

    move-result-object v0

    .line 637
    .local v0, wrapper:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/util/Map<TR;TV;>;Ljava/util/Map<TR;TV;>;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingTable;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method protected delegate()Lcom/google/common/collect/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate:Lcom/google/common/collect/Table;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    .local p2, columnKey:Ljava/lang/Object;,"TC;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    .local p1, table:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 652
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingTable;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
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
    .line 667
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    #calls: Lcom/google/common/collect/Tables;->unmodifiableWrapper()Lcom/google/common/base/Function;
    invoke-static {}, Lcom/google/common/collect/Tables;->access$100()Lcom/google/common/base/Function;

    move-result-object v0

    .line 668
    .local v0, wrapper:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<Ljava/util/Map<TC;TV;>;Ljava/util/Map<TC;TV;>;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingTable;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
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
    .line 673
    .local p0, this:Lcom/google/common/collect/Tables$UnmodifiableTable;,"Lcom/google/common/collect/Tables$UnmodifiableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingTable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
