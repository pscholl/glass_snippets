.class public Lcom/google/glass/widget/ImageLoaders;
.super Ljava/lang/Object;
.source "ImageLoaders.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ImageLoaders;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static dedupeList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 138
    .local v8, seenIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 139
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 140
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 141
    .local v2, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, ids:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 143
    .local v1, duplicate:Z
    if-eqz v5, :cond_0

    .line 144
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v4, v0, v3

    .line 145
    .local v4, id:Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 146
    const/4 v1, 0x1

    .line 151
    .end local v4           #id:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 144
    .restart local v4       #id:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v4           #id:Ljava/lang/String;
    :cond_3
    move-object v0, v5

    array-length v7, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_0

    aget-object v4, v0, v3

    .line 155
    .restart local v4       #id:Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 160
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #duplicate:Z
    .end local v2           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v3           #i$:I
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #ids:[Ljava/lang/String;
    .end local v7           #len$:I
    :cond_4
    return-void
.end method

.method public static forByteImages(Ljava/util/List;III)Lcom/google/glass/widget/ImageLoader;
    .locals 1
    .parameter
    .parameter "defaultImageResource"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;III)",
            "Lcom/google/glass/widget/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, images:Ljava/util/List;,"Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/glass/widget/ByteImageLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/widget/ByteImageLoader;-><init>(Ljava/util/List;III)V

    return-object v0
.end method

.method public static forEntities(Ljava/util/List;II)Lcom/google/glass/widget/ImageLoader;
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
            "Lcom/google/glass/widget/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/widget/ImageLoaders;->forEntities(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forEntities(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/ImageLoader;
    .locals 1
    .parameter
    .parameter "visibility"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;",
            "Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;",
            "II)",
            "Lcom/google/glass/widget/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v0, Lcom/google/glass/widget/EntityImageLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/widget/EntityImageLoader;-><init>(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v0
.end method

.method public static forImageUrls(Ljava/util/List;II)Lcom/google/glass/widget/ImageLoader;
    .locals 1
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/google/glass/widget/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/widget/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static forImageUrls(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/ImageLoader;
    .locals 6
    .parameter
    .parameter "visibility"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;",
            "II)",
            "Lcom/google/glass/widget/ImageLoader;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, imageUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 114
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 115
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    .line 116
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v5

    iput-object v4, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    new-instance v3, Lcom/google/glass/widget/EntityImageLoader;

    invoke-direct {v3, v0, p1, p2, p3}, Lcom/google/glass/widget/EntityImageLoader;-><init>(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v3
.end method

.method public static forTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/widget/ImageLoader;
    .locals 6
    .parameter "item"
    .parameter "inBundle"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 57
    .local v3, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v5, :cond_0

    .line 58
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 64
    .local v4, target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    invoke-static {v3}, Lcom/google/glass/widget/ImageLoaders;->dedupeList(Ljava/util/List;)V

    .line 69
    invoke-static {v3, p2, p3}, Lcom/google/glass/widget/ImageLoaders;->forEntities(Ljava/util/List;II)Lcom/google/glass/widget/ImageLoader;

    move-result-object v5

    return-object v5
.end method

.method public static forTimelineItemInView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/view/View;)Lcom/google/glass/widget/ImageLoader;
    .locals 8
    .parameter "item"
    .parameter "inBundle"
    .parameter "view"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, resources:Landroid/content/res/Resources;
    sget v3, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 38
    .local v1, participantsViewWidth:I
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 39
    .local v0, participantsViewHeight:I
    sget-object v3, Lcom/google/glass/widget/ImageLoaders;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Computed view dimensions at %d x %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {p0, p1, v1, v0}, Lcom/google/glass/widget/ImageLoaders;->forTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/widget/ImageLoader;

    move-result-object v3

    return-object v3
.end method
