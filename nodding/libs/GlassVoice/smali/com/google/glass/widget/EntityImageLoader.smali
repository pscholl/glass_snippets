.class public Lcom/google/glass/widget/EntityImageLoader;
.super Lcom/google/glass/widget/BaseImageLoader;
.source "EntityImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/widget/BaseImageLoader",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# instance fields
.field private visibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)V
    .locals 2
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
            "II)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, allEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/widget/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 35
    iput-object p2, p0, Lcom/google/glass/widget/EntityImageLoader;->visibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    .line 37
    invoke-static {p1, p3, p4}, Lcom/google/glass/widget/ImageLoaderUtils;->getDrawingEntities(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v0

    .line 39
    .local v0, entityGroupCount:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;Lcom/google/glass/widget/MosaicView$GroupCountType;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/EntityImageLoader;->setDrawImageSources(Ljava/util/List;)V

    .line 40
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/EntityImageLoader;->setGroupCountType(Lcom/google/glass/widget/MosaicView$GroupCountType;)V

    .line 41
    return-void
.end method


# virtual methods
.method public createLoadingTask(Landroid/content/Context;Landroid/widget/FrameLayout;III)Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
    .locals 7
    .parameter "context"
    .parameter "cellView"
    .parameter "elementIdx"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/FrameLayout;",
            "III)",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 47
    .local v3, imageView:Landroid/widget/ImageView;
    sget v1, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 49
    .local v4, textView:Landroid/widget/TextView;
    new-instance v0, Lcom/google/glass/util/EntityImageDownloadTask;

    invoke-virtual {p0, p3}, Lcom/google/glass/widget/EntityImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-object v1, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 53
    .local v0, imageDownloadTask:Lcom/google/glass/util/EntityImageDownloadTask;
    iget-object v1, p0, Lcom/google/glass/widget/EntityImageLoader;->visibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/EntityImageDownloadTask;->setLabelVisibility(Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;)V

    .line 54
    return-object v0
.end method

.method public getBackoffText(I)Ljava/lang/String;
    .locals 1
    .parameter "elementIdx"

    .prologue
    .line 59
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/EntityImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getImageSourceKey(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .parameter "entity"

    .prologue
    .line 67
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/EntityImageLoader;->getImageSourceKey(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
