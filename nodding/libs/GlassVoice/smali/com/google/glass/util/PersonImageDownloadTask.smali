.class public abstract Lcom/google/glass/util/PersonImageDownloadTask;
.super Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.source "PersonImageDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/PersonImageDownloadTask$1;,
        Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;
    }
.end annotation


# static fields
.field public static final CROP_TYPE:I = 0x1

.field private static final NO_IMAGE_ID:I = -0x1


# instance fields
.field private defaultImage:I

.field private labelVisibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

.field private final nameView:Landroid/widget/TextView;

.field private final pictureView:Landroid/widget/ImageView;

.field private final profileImageUrlCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 6
    .parameter "context"
    .parameter "imageUrl"
    .parameter "pictureView"
    .parameter "nameView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 58
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 45
    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    iput-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    .line 59
    iput-object p3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    .line 60
    iput-object p4, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    .line 61
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getProfileImageUrlCache()Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    .line 62
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x1

    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 183
    return-void

    .line 179
    :cond_1
    iget v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/PersonImageDownloadTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract getCacheId()Ljava/lang/String;
.end method

.method protected abstract getDisplayText()Ljava/lang/String;
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "isCancelled"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->onPreLoad()V

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, imageUrl:Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, cacheId:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 162
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/util/PersonImageDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method protected prepareContent()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, cacheId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 69
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/glass/util/PersonImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 79
    .local v2, hasImage:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 80
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/google/glass/util/PersonImageDownloadTask;->cancel(Z)V

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v4}, Lcom/google/glass/util/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 87
    return-void

    .end local v2           #hasImage:Z
    :cond_3
    move v2, v4

    .line 78
    goto :goto_0

    .line 82
    .restart local v2       #hasImage:Z
    :cond_4
    iget v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 83
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 136
    iput p1, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    .line 137
    return-void
.end method

.method public setLabelVisibility(Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;)V
    .locals 2
    .parameter "labelVisibility"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setLabelVisibility before the task is run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/google/glass/util/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    .line 130
    return-void
.end method

.method setViewVisibilities(ZZ)V
    .locals 3
    .parameter "hasImage"
    .parameter "animate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 97
    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->defaultImage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 104
    :goto_0
    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$1;->$SwitchMap$com$google$glass$util$PersonImageDownloadTask$LabelVisibility:[I

    iget-object v1, p0, Lcom/google/glass/util/PersonImageDownloadTask;->labelVisibility:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v1}, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_1
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/util/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/util/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 112
    :pswitch_2
    if-eqz p1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/util/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
