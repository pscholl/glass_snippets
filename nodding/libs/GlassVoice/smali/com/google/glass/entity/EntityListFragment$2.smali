.class Lcom/google/glass/entity/EntityListFragment$2;
.super Ljava/lang/Object;
.source "EntityListFragment.java"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;


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

.field final synthetic val$fastScrollOverlay:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityListFragment;Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/entity/EntityListFragment$2;->this$0:Lcom/google/glass/entity/EntityListFragment;

    iput-object p2, p0, Lcom/google/glass/entity/EntityListFragment$2;->val$fastScrollOverlay:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocused(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 76
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment$2;->val$fastScrollOverlay:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->onScaleChanged(F)V

    .line 73
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1
    .parameter "scrollPosition"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment$2;->val$fastScrollOverlay:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->onScrollPositionChanged(F)V

    .line 68
    return-void
.end method

.method public onSettled(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 79
    return-void
.end method

.method public onUnsettled(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 82
    return-void
.end method
