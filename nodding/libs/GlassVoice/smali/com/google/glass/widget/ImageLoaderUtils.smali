.class public Lcom/google/glass/widget/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"


# static fields
.field private static final hasImagePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/widget/ImageLoaderUtils$1;

    invoke-direct {v0}, Lcom/google/glass/widget/ImageLoaderUtils$1;-><init>()V

    sput-object v0, Lcom/google/glass/widget/ImageLoaderUtils;->hasImagePredicate:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;
    .locals 9
    .parameter
    .parameter "maxNumberOfCells"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Lcom/google/glass/widget/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, allEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 73
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/glass/widget/MosaicView$GroupCountType;->NONE:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 115
    :goto_0
    return-object v5

    .line 77
    :cond_1
    invoke-static {p0, p1}, Lcom/google/glass/widget/ImageLoaderUtils;->getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, drawEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 82
    .local v2, firstEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 89
    .local v4, numInitialDrawEntities:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p0, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p1, :cond_6

    .line 105
    add-int/lit8 v5, p1, -0x1

    invoke-static {v0, v5}, Lcom/google/glass/widget/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 106
    sget-object v5, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_0

    .line 91
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 95
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5, v1}, Lcom/google/glass/entity/EntityHelper;->doEntitiesMatch(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_7

    if-ge v4, v8, :cond_7

    .line 110
    sget-object v5, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_0

    .line 111
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_8

    .line 112
    add-int/lit8 v5, p1, -0x1

    invoke-static {v0, v5}, Lcom/google/glass/widget/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto/16 :goto_0

    .line 115
    :cond_8
    sget-object v5, Lcom/google/glass/widget/MosaicView$GroupCountType;->NONE:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto/16 :goto_0
.end method

.method static getDrawingEntities(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Lcom/google/glass/widget/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, allEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p1, p2}, Lcom/google/glass/widget/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/widget/ImageLoaderUtils;->getDrawingEntities(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getDrawingImages(Ljava/util/List;I)Landroid/util/Pair;
    .locals 3
    .parameter
    .parameter "maxNumberOfCells"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/glass/widget/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, allImages:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-static {p0, p1}, Lcom/google/glass/widget/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, drawImages:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 129
    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/ImageLoaderUtils;->trimToSize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 132
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/google/glass/widget/MosaicView$GroupCountType;->NONE:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0
.end method

.method static getDrawingImages(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/glass/widget/MosaicView$GroupCountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, allImages:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-static {p1, p2}, Lcom/google/glass/widget/MosaicView;->getMaxNumSupportedEntities(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/widget/ImageLoaderUtils;->getDrawingImages(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getEntitiesWithImages(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "maxSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 53
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 54
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v3, Lcom/google/glass/widget/ImageLoaderUtils;->hasImagePredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 61
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    return-object v2
.end method

.method static trimToSize(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "size"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 40
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_0
    return-object p0
.end method
