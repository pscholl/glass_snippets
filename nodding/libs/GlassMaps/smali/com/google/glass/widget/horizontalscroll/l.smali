.class final Lcom/google/glass/widget/horizontalscroll/l;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/l;->a:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/l;->a:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
