.class Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;
.super Lcom/google/common/collect/Maps$MapDifferenceImpl;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/SortedMapDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortedMapDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$MapDifferenceImpl",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedMapDifference",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(ZLjava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 0
    .parameter "areEqual"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/util/SortedMap",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    .local p2, onlyOnLeft:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p3, onlyOnRight:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p4, onBoth:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p5, differences:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;Lcom/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/common/collect/Maps$MapDifferenceImpl;-><init>(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 595
    return-void
.end method


# virtual methods
.method public bridge synthetic entriesDiffering()Ljava/util/Map;
    .locals 1

    .prologue
    .line 589
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesDiffering()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic entriesInCommon()Ljava/util/Map;
    .locals 1

    .prologue
    .line 589
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1

    .prologue
    .line 589
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic entriesOnlyOnRight()Ljava/util/Map;
    .locals 1

    .prologue
    .line 589
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, this:Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,"Lcom/google/common/collect/Maps$SortedMapDifferenceImpl<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method
