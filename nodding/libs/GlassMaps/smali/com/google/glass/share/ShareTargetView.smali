.class public Lcom/google/glass/share/ShareTargetView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;


# instance fields
.field private a:Lcom/google/glass/share/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/share/ShareTargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/d/h;->share_target:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/share/ShareTargetView;->a:Lcom/google/glass/share/a;

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareTargetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, p0, Lcom/google/glass/share/ShareTargetView;->a:Lcom/google/glass/share/a;

    invoke-interface {v1, v0}, Lcom/google/glass/share/a;->a(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/google/glass/share/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/share/ShareTargetView;->a:Lcom/google/glass/share/a;

    return-void
.end method
