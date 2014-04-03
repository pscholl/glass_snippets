.class public Lcom/google/glass/widget/ByteImageLoader;
.super Lcom/google/glass/widget/BaseImageLoader;
.source "ByteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/widget/BaseImageLoader",
        "<[B>;"
    }
.end annotation


# instance fields
.field private defaultImageResource:I


# direct methods
.method public constructor <init>(Ljava/util/List;III)V
    .locals 2
    .parameter
    .parameter "defaultImageResource"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;III)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, allImages:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/widget/BaseImageLoader;-><init>(Ljava/util/List;II)V

    .line 28
    iput p2, p0, Lcom/google/glass/widget/ByteImageLoader;->defaultImageResource:I

    .line 30
    invoke-static {p1, p3, p4}, Lcom/google/glass/widget/ImageLoaderUtils;->getDrawingImages(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v0

    .line 32
    .local v0, imagesGroupCount:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/List<[B>;Lcom/google/glass/widget/MosaicView$GroupCountType;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ByteImageLoader;->setDrawImageSources(Ljava/util/List;)V

    .line 33
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ByteImageLoader;->setGroupCountType(Lcom/google/glass/widget/MosaicView$GroupCountType;)V

    .line 34
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
    .line 39
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 41
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v0, Lcom/google/glass/util/BitmapDecodingTask;

    invoke-virtual {p0, p3}, Lcom/google/glass/widget/ByteImageLoader;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget v4, p0, Lcom/google/glass/widget/ByteImageLoader;->defaultImageResource:I

    move-object v1, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/BitmapDecodingTask;-><init>(Landroid/content/Context;[BLandroid/widget/ImageView;III)V

    .line 45
    .local v0, bitmapDecodingTask:Lcom/google/glass/util/BitmapDecodingTask;
    return-object v0
.end method

.method protected bridge synthetic getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/ByteImageLoader;->getImageSourceKey([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageSourceKey([B)Ljava/lang/String;
    .locals 2
    .parameter "t"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot cache ByteImageLoader."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
