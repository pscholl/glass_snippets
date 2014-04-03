.class final Lcom/google/glass/widget/horizontalscroll/a;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/a;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/a;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Z)V

    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/a;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Z)V

    return-void
.end method
