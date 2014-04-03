.class public final Lcom/google/glass/widget/h;
.super Lcom/google/glass/widget/a;


# instance fields
.field private a:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)V
    .locals 2

    invoke-direct {p0, p1, p3, p4}, Lcom/google/glass/widget/a;-><init>(Ljava/util/List;II)V

    iput-object p2, p0, Lcom/google/glass/widget/h;->a:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p1, p3, p4}, Lcom/google/glass/widget/k;->a(Ljava/util/List;II)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/h;->a(Ljava/util/List;)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/widget/MosaicView$GroupCountType;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/h;->a(Lcom/google/glass/widget/MosaicView$GroupCountType;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/FrameLayout;III)Lcom/google/glass/util/z;
    .locals 7

    sget v0, Lcom/google/glass/d/f;->image:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v0, Lcom/google/glass/d/f;->text:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v0, Lcom/google/glass/util/ad;

    invoke-virtual {p0, p3}, Lcom/google/glass/widget/h;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/ac;

    move-object v1, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/ad;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/ac;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    iget-object v1, p0, Lcom/google/glass/widget/h;->a:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/ad;->a(Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ac;

    invoke-static {v0}, Lcom/google/glass/entity/p;->h(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
