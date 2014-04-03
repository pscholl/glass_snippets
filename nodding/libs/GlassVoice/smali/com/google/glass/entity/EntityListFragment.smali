.class public abstract Lcom/google/glass/entity/EntityListFragment;
.super Lcom/google/glass/app/GlassFragment;
.source "EntityListFragment.java"


# static fields
.field public static final FRAGMENT_ID:Ljava/lang/String; = "entity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

.field protected sliderView:Lcom/google/glass/widget/SliderView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/app/GlassFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getAdapter()Landroid/widget/Adapter;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 37
    sget v2, Lcom/google/glass/common/R$layout;->entity_scroller:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    .line 38
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    sget v3, Lcom/google/glass/common/R$id;->scroll_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityHorizontalScrollView;

    iput-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    .line 39
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    sget v3, Lcom/google/glass/common/R$id;->slider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    iput-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 40
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v3, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 42
    .local v0, adapter:Landroid/widget/Adapter;
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v2, v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    .line 44
    new-instance v1, Lcom/google/glass/entity/EntityListFragment$1;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/entity/EntityListFragment$1;-><init>(Lcom/google/glass/entity/EntityListFragment;Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 62
    .local v1, fastScrollOverlay:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    new-instance v3, Lcom/google/glass/entity/EntityListFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/entity/EntityListFragment$2;-><init>(Lcom/google/glass/entity/EntityListFragment;Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/entity/EntityHorizontalScrollView;->addPositionListener(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 85
    new-instance v2, Lcom/google/glass/entity/EntityListFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/entity/EntityListFragment$3;-><init>(Lcom/google/glass/entity/EntityListFragment;Landroid/widget/Adapter;)V

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 91
    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->deactivate()V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/glass/entity/EntityHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHorizontalScrollView;->activate()V

    .line 106
    return-void
.end method

.method protected showFastScrollLabel(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
