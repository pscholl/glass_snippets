.class public Lcom/google/glass/share/ShareHorizontalScrollView;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.source "ShareHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/share/ShareHorizontalScrollView$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# instance fields
.field private hideShareAnimation:Landroid/view/animation/Animation;

.field protected listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

.field private shareTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private showShareAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareHorizontalScrollView;->findIdPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findIdPosition(Ljava/lang/String;)I
    .locals 3
    .parameter "id"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->shareTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 83
    .local v1, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->shareTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 87
    .end local v1           #shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public findItemPosition(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->shareTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareHorizontalScrollView;->findItemPosition(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getViewForPosition(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->hideShareAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public init(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->contextual_enter:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->showShareAnimation:Landroid/view/animation/Animation;

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->contextual_exit:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->hideShareAnimation:Landroid/view/animation/Animation;

    .line 66
    iget-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->hideShareAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/share/ShareHorizontalScrollView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/share/ShareHorizontalScrollView$1;-><init>(Lcom/google/glass/share/ShareHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 72
    return-void
.end method

.method public setShareTargets(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iput-object p1, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->shareTargets:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/google/glass/share/ShareTargetAdapter;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/share/ShareTargetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->updateViews(Z)V

    .line 78
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/glass/share/ShareHorizontalScrollView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/share/ShareHorizontalScrollView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView;->showShareAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
