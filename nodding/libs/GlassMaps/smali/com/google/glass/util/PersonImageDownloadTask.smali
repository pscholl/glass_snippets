.class public abstract Lcom/google/glass/util/PersonImageDownloadTask;
.super Lcom/google/glass/util/au;


# instance fields
.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/util/LruCache;

.field private f:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/au;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    iput-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->f:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->g:I

    iput-object p3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->e()Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->e:Landroid/util/LruCache;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->a(ZZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    iget v2, p0, Lcom/google/glass/util/PersonImageDownloadTask;->g:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/view/View;Z)V

    :goto_0
    sget-object v0, Lcom/google/glass/util/bi;->a:[I

    iget-object v1, p0, Lcom/google/glass/util/PersonImageDownloadTask;->f:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v1}, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/view/View;ZZ)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/view/View;ZZ)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/view/View;Z)V

    goto :goto_1

    :pswitch_2
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v2}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/view/View;ZZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/view/View;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/glass/util/u;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/util/PersonImageDownloadTask;->b(Lcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setLabelVisibility before the task is run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/glass/util/PersonImageDownloadTask;->f:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final b(Lcom/google/glass/util/u;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->h()V

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->k()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/google/glass/util/au;->b(Lcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->e:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method protected final f()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/glass/util/PersonImageDownloadTask;->e:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->j()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->a(Z)V

    :cond_2
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->a(ZZ)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/glass/util/PersonImageDownloadTask;->g:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/glass/util/PersonImageDownloadTask;->c:Landroid/widget/ImageView;

    iget v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->g:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected abstract i()Ljava/lang/String;
.end method
