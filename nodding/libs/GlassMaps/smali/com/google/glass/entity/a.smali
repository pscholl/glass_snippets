.class final Lcom/google/glass/entity/a;
.super Landroid/widget/CursorAdapter;

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/n;


# instance fields
.field final synthetic a:Lcom/google/glass/entity/CursorEntityListFragment;


# direct methods
.method public constructor <init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/entity/a;->a:Lcom/google/glass/entity/CursorEntityListFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/entity/a;->a:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/glass/entity/CursorEntityListFragment;->a(Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/entity/a;->a:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/entity/CursorEntityListFragment;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/glass/widget/horizontalscroll/Card;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must implement Card"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method
