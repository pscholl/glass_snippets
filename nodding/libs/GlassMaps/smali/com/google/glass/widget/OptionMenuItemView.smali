.class public Lcom/google/glass/widget/OptionMenuItemView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;


# instance fields
.field private a:Lcom/google/glass/widget/ag;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/d/h;->option_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuItemView;->a:Lcom/google/glass/widget/ag;

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/y;

    invoke-virtual {v0}, Lcom/google/glass/widget/y;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuItemView;->a:Lcom/google/glass/widget/ag;

    invoke-interface {v1, v0}, Lcom/google/glass/widget/ag;->a(Lcom/google/glass/widget/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenuItemView;->b:Z

    return v0
.end method

.method public setListener(Lcom/google/glass/widget/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuItemView;->a:Lcom/google/glass/widget/ag;

    return-void
.end method

.method public setShouldSuppressSingleTapSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/widget/OptionMenuItemView;->b:Z

    return-void
.end method
