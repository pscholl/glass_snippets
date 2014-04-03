.class Lcom/google/glass/input/ItemScroller$1;
.super Landroid/os/Handler;
.source "ItemScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/ItemScroller;-><init>(Lcom/google/glass/input/ItemScroller$Scrollable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/ItemScroller;

.field final synthetic val$scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ItemScroller;Lcom/google/glass/input/ItemScroller$Scrollable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/glass/input/ItemScroller$1;->this$0:Lcom/google/glass/input/ItemScroller;

    iput-object p2, p0, Lcom/google/glass/input/ItemScroller$1;->val$scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller$1;->this$0:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, v4}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller$1;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->access$100(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/input/ItemScroller$1;->val$scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v3

    aput v3, v1, v2

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller$1;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scaleDestination:F
    invoke-static {v2}, Lcom/google/glass/input/ItemScroller;->access$000(Lcom/google/glass/input/ItemScroller;)F

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller$1;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->access$100(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
