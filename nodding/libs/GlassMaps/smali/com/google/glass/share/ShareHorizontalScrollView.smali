.class public Lcom/google/glass/share/ShareHorizontalScrollView;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# instance fields
.field protected a:Lcom/google/glass/share/a;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method private a(Lcom/google/googlex/glass/common/proto/ac;)I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/googlex/glass/common/proto/ac;

    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareHorizontalScrollView;->a(Lcom/google/googlex/glass/common/proto/ac;)I

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setShareTargets(Ljava/util/List;)V
    .locals 3

    iput-object p1, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->b:Ljava/util/List;

    new-instance v0, Lcom/google/glass/share/b;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->a:Lcom/google/glass/share/a;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/share/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/glass/share/a;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->a(Z)V

    return-void
.end method
