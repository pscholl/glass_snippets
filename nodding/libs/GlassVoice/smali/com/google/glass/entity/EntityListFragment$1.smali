.class Lcom/google/glass/entity/EntityListFragment$1;
.super Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;
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


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityListFragment;Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 45
    .local p3, x1:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<**>;"
    iput-object p1, p0, Lcom/google/glass/entity/EntityListFragment$1;->this$0:Lcom/google/glass/entity/EntityListFragment;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method protected getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v3, p0, Lcom/google/glass/entity/EntityListFragment$1;->this$0:Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {v3, p2}, Lcom/google/glass/entity/EntityListFragment;->showFastScrollLabel(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v1, p1

    .line 51
    check-cast v1, Lcom/google/glass/entity/EntityItemView;

    .line 52
    .local v1, itemView:Lcom/google/glass/entity/EntityItemView;
    invoke-virtual {v1}, Lcom/google/glass/entity/EntityItemView;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
