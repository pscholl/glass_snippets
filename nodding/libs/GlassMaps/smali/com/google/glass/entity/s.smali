.class public abstract Lcom/google/glass/entity/s;
.super Lcom/google/glass/app/k;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/google/glass/widget/SliderView;

.field private c:Landroid/view/View;

.field private d:Lcom/google/glass/entity/EntityHorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/entity/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/s;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/app/k;-><init>()V

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected abstract a()Landroid/widget/Adapter;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/google/glass/d/h;->entity_scroller:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/s;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/google/glass/entity/s;->c:Landroid/view/View;

    sget v1, Lcom/google/glass/d/f;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHorizontalScrollView;

    iput-object v0, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    iget-object v0, p0, Lcom/google/glass/entity/s;->c:Landroid/view/View;

    sget v1, Lcom/google/glass/d/f;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/entity/s;->a:Lcom/google/glass/widget/SliderView;

    iget-object v0, p0, Lcom/google/glass/entity/s;->a:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    invoke-virtual {p0}, Lcom/google/glass/entity/s;->a()Landroid/widget/Adapter;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    new-instance v2, Lcom/google/glass/entity/t;

    invoke-virtual {p0}, Lcom/google/glass/entity/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-direct {v2, p0, v0, v3}, Lcom/google/glass/entity/t;-><init>(Lcom/google/glass/entity/s;Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iget-object v0, p0, Lcom/google/glass/entity/s;->c:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    new-instance v3, Lcom/google/glass/entity/u;

    invoke-direct {v3, p0, v2}, Lcom/google/glass/entity/u;-><init>(Lcom/google/glass/entity/s;Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;)V

    invoke-virtual {v0, v3}, Lcom/google/glass/entity/EntityHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/g;)V

    new-instance v0, Lcom/google/glass/entity/v;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/v;-><init>(Lcom/google/glass/entity/s;Landroid/widget/Adapter;)V

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/google/glass/entity/s;->a:Lcom/google/glass/widget/SliderView;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    iget-object v0, p0, Lcom/google/glass/entity/s;->c:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/google/glass/app/k;->onPause()V

    iget-object v0, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->c()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/google/glass/app/k;->onResume()V

    iget-object v0, p0, Lcom/google/glass/entity/s;->d:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->b()V

    return-void
.end method
