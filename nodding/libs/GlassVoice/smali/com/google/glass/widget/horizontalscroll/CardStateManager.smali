.class Lcom/google/glass/widget/horizontalscroll/CardStateManager;
.super Ljava/lang/Object;
.source "CardStateManager.java"


# instance fields
.field private final item:Lcom/google/glass/widget/horizontalscroll/Card;

.field private state:Lcom/google/glass/widget/horizontalscroll/Card$State;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->state:Lcom/google/glass/widget/horizontalscroll/Card$State;

    .line 28
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->view:Landroid/view/View;

    .line 31
    check-cast p1, Lcom/google/glass/widget/horizontalscroll/Card;

    .end local p1
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    .line 32
    return-void
.end method

.method private changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->state:Lcom/google/glass/widget/horizontalscroll/Card$State;

    if-eq v1, p1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to change state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->state:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; should be in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before changing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->state:Lcom/google/glass/widget/horizontalscroll/Card$State;

    .line 97
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->view:Landroid/view/View;

    return-object v0
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onFocus()V

    .line 54
    return-void
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 41
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onLoad()V

    .line 42
    return-void
.end method

.method public onSettled()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onSettled()V

    .line 75
    return-void
.end method

.method public onUnfocus()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->state:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    if-ne v0, v1, :cond_0

    .line 63
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onUnsettled()V

    .line 67
    :cond_0
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onUnfocus()V

    .line 69
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onUnload()V

    .line 48
    return-void
.end method

.method public onUnsettled()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->changeState(Lcom/google/glass/widget/horizontalscroll/Card$State;Lcom/google/glass/widget/horizontalscroll/Card$State;)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->item:Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onUnsettled()V

    .line 81
    return-void
.end method
