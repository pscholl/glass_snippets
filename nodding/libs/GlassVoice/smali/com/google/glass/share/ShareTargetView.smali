.class public Lcom/google/glass/share/ShareTargetView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "ShareTargetView.java"


# instance fields
.field private listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->initialize()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->initialize()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->initialize()V

    .line 31
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->share_target:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/glass/share/ShareTargetView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    if-eqz v1, :cond_0

    .line 46
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v1}, Lcom/google/glass/share/ShareTargetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 47
    .local v0, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v1, p0, Lcom/google/glass/share/ShareTargetView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    invoke-interface {v1, v0}, Lcom/google/glass/share/ShareHorizontalScrollView$Listener;->onShareTargetSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x1

    .line 52
    .end local v0           #shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/share/ShareTargetView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    .line 39
    return-void
.end method
