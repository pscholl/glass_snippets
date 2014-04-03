.class Lcom/google/glass/entity/EntityListFragment$3;
.super Landroid/database/DataSetObserver;
.source "EntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityListFragment;

.field final synthetic val$adapter:Landroid/widget/Adapter;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityListFragment;Landroid/widget/Adapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/entity/EntityListFragment$3;->this$0:Lcom/google/glass/entity/EntityListFragment;

    iput-object p2, p0, Lcom/google/glass/entity/EntityListFragment$3;->val$adapter:Landroid/widget/Adapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment$3;->this$0:Lcom/google/glass/entity/EntityListFragment;

    iget-object v0, v0, Lcom/google/glass/entity/EntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment$3;->val$adapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 89
    return-void
.end method
