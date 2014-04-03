.class public Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
.super Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.source "ImageProxyBitmapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleImageProxyBitmapLoadingTask"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/lang/String;III)V
    .locals 6
    .parameter "imageView"
    .parameter "context"
    .parameter "imageUrl"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 98
    iput-object p1, p0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 99
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->showView(Landroid/view/View;Z)V

    .line 112
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 104
    return-void
.end method
