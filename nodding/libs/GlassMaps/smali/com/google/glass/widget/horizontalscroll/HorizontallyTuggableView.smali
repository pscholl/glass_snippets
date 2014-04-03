.class public Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# instance fields
.field private a:Landroid/view/View;


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

.method private static a(Ljava/lang/Void;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(Ljava/lang/Void;)I

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final l()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a:Landroid/view/View;

    return-object v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/google/glass/widget/horizontalscroll/Card;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped View needs to be a Card."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a:Landroid/view/View;

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_view_recycler:I

    new-instance v1, Lcom/google/glass/widget/horizontalscroll/m;

    invoke-direct {v1}, Lcom/google/glass/widget/horizontalscroll/m;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/l;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/l;-><init>(Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->setAdapter(Landroid/widget/Adapter;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(Z)V

    return-void
.end method
