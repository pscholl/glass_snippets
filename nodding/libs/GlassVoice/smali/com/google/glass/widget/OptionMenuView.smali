.class public Lcom/google/glass/widget/OptionMenuView;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.source "OptionMenuView.java"

# interfaces
.implements Lcom/google/glass/widget/OptionMenu$ItemStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/OptionMenuView$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/glass/widget/OptionMenu$Item;",
        ">;",
        "Lcom/google/glass/widget/OptionMenu$ItemStateListener;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private hideMenuAnimation:Landroid/view/animation/Animation;

.field protected listener:Lcom/google/glass/widget/OptionMenuView$Listener;

.field private optionMenu:Lcom/google/glass/widget/OptionMenu;

.field private showMenuAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 52
    return-void
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Integer;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->findItemPosition(Lcom/google/glass/widget/OptionMenu$Item;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuView;->findIdPosition(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Lcom/google/glass/widget/OptionMenu$Item;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    .end local v0           #i:I
    :goto_1
    return v0

    .line 107
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/glass/widget/OptionMenu$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuView;->findItemPosition(Lcom/google/glass/widget/OptionMenu$Item;)I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->hideMenuAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public init(Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->contextual_enter:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->showMenuAnimation:Landroid/view/animation/Animation;

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->contextual_exit:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->hideMenuAnimation:Landroid/view/animation/Animation;

    .line 68
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->hideMenuAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/widget/OptionMenuView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/OptionMenuView$1;-><init>(Lcom/google/glass/widget/OptionMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    return-void
.end method

.method public onStateChanged(IZ)V
    .locals 1
    .parameter "newStateId"
    .parameter "shouldAnimate"

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->updateViews(Z)V

    .line 149
    return-void
.end method

.method public setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 78
    return-void
.end method

.method public setOptionMenu(Lcom/google/glass/widget/OptionMenu;)V
    .locals 5
    .parameter "optionMenu"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 85
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/OptionMenu$Item;->setStateListener(Lcom/google/glass/widget/OptionMenu$ItemStateListener;)V

    goto :goto_0

    .line 89
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    .line 90
    new-instance v2, Lcom/google/glass/widget/OptionMenuAdapter;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/widget/OptionMenuView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/glass/widget/OptionMenuAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu;Lcom/google/glass/widget/OptionMenuView$Listener;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenuView;->setAdapter(Landroid/widget/Adapter;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 94
    .restart local v1       #item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1, p0}, Lcom/google/glass/widget/OptionMenu$Item;->setStateListener(Lcom/google/glass/widget/OptionMenu$ItemStateListener;)V

    goto :goto_1

    .line 97
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenuView;->updateViews(Z)V

    .line 98
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->showMenuAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
