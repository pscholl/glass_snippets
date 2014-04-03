.class public final Lcom/google/glass/widget/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/base/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/widget/l;

    invoke-direct {v0}, Lcom/google/glass/widget/l;-><init>()V

    sput-object v0, Lcom/google/glass/widget/k;->a:Lcom/google/common/base/aj;

    return-void
.end method

.method static a(Ljava/util/List;II)Landroid/util/Pair;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/glass/widget/MosaicView;->a(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/glass/widget/k;->c(Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static b(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ac;

    sget-object v3, Lcom/google/glass/widget/k;->a:Lcom/google/common/base/aj;

    invoke-interface {v3, v0}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/util/List;I)Landroid/util/Pair;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/widget/MosaicView$GroupCountType;->NONE:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/glass/widget/k;->b(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ac;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p0, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_6

    add-int/lit8 v0, p1, -0x1

    invoke-static {v2, v0}, Lcom/google/glass/widget/k;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ac;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/ac;

    invoke-static {v1, v0}, Lcom/google/glass/entity/p;->a(Lcom/google/googlex/glass/common/proto/ac;Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    if-ge v3, v6, :cond_7

    sget-object v0, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_8

    add-int/lit8 v0, p1, -0x1

    invoke-static {v2, v0}, Lcom/google/glass/widget/k;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/google/glass/widget/MosaicView$GroupCountType;->NONE:Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0
.end method
