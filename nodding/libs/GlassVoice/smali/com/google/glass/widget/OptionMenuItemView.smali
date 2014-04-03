.class public Lcom/google/glass/widget/OptionMenuItemView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "OptionMenuItemView.java"


# instance fields
.field private listener:Lcom/google/glass/widget/OptionMenuView$Listener;

.field private suppressTapSound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->initialize()V

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
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->initialize()V

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
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->initialize()V

    .line 31
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/common/R$layout;->option_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuItemView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    if-eqz v1, :cond_0

    .line 47
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/OptionMenuItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenu$Item;

    .line 48
    .local v0, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuItemView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    invoke-interface {v1, v0}, Lcom/google/glass/widget/OptionMenuView$Listener;->onMenuOptionConfirmed(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 53
    .end local v0           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuItemView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 35
    return-void
.end method

.method public setShouldSuppressSingleTapSound(Z)V
    .locals 0
    .parameter "suppress"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/glass/widget/OptionMenuItemView;->suppressTapSound:Z

    .line 58
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenuItemView;->suppressTapSound:Z

    return v0
.end method
