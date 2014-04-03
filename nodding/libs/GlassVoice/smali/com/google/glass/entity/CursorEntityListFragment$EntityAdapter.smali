.class Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;
.super Landroid/widget/CursorAdapter;
.source "CursorEntityListFragment.java"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/ViewRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/CursorEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/CursorEntityListFragment;


# direct methods
.method public constructor <init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 180
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/glass/entity/CursorEntityListFragment;->bindView(Landroid/view/View;Landroid/database/Cursor;)V

    .line 195
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/glass/entity/CursorEntityListFragment;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/google/glass/widget/horizontalscroll/Card;

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View must implement Card"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 189
    return-object v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 198
    return-void
.end method
