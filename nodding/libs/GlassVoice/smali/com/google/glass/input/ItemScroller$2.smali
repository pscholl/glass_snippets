.class Lcom/google/glass/input/ItemScroller$2;
.super Ljava/lang/Object;
.source "ItemScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/ItemScroller;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/ItemScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ItemScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .parameter "animation"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 184
    .local v6, value:F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    .line 187
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #setter for: Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F
    invoke-static {v7, v6}, Lcom/google/glass/input/ItemScroller;->access$202(Lcom/google/glass/input/ItemScroller;F)F

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$200(Lcom/google/glass/input/ItemScroller;)F

    move-result v7

    sub-float v1, v6, v7

    .line 192
    .local v1, delta:F
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v7

    add-float v3, v7, v1

    .line 193
    .local v3, item:F
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #setter for: Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F
    invoke-static {v7, v6}, Lcom/google/glass/input/ItemScroller;->access$202(Lcom/google/glass/input/ItemScroller;F)F

    .line 194
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    iget-object v8, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->animationLeftover:F
    invoke-static {v8}, Lcom/google/glass/input/ItemScroller;->access$400(Lcom/google/glass/input/ItemScroller;)F

    move-result v8

    sub-float/2addr v8, v1

    #calls: Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V
    invoke-static {v7, v8}, Lcom/google/glass/input/ItemScroller;->access$500(Lcom/google/glass/input/ItemScroller;F)V

    .line 196
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    const/4 v8, 0x1

    #calls: Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F
    invoke-static {v7, v3, v8}, Lcom/google/glass/input/ItemScroller;->access$600(Lcom/google/glass/input/ItemScroller;FZ)F

    move-result v3

    .line 199
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    const/4 v8, 0x1

    #calls: Lcom/google/glass/input/ItemScroller;->leftEdge(Z)F
    invoke-static {v7, v8}, Lcom/google/glass/input/ItemScroller;->access$700(Lcom/google/glass/input/ItemScroller;Z)F

    move-result v7

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    const/4 v8, 0x1

    #calls: Lcom/google/glass/input/ItemScroller;->rightEdge(Z)F
    invoke-static {v7, v8}, Lcom/google/glass/input/ItemScroller;->access$800(Lcom/google/glass/input/ItemScroller;Z)F

    move-result v7

    cmpl-float v7, v3, v7

    if-nez v7, :cond_7

    :cond_2
    const/4 v2, 0x1

    .line 201
    .local v2, hitEdge:Z
    :goto_1
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 204
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v9

    sub-long v4, v7, v9

    .line 205
    .local v4, timeToStop:J
    const-wide/16 v7, 0xfa

    cmp-long v7, v4, v7

    if-gtz v7, :cond_8

    const/4 v0, 0x1

    .line 206
    .local v0, closeEnoughToStartZooming:Z
    :goto_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #calls: Lcom/google/glass/input/ItemScroller;->zoomIn()Z
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$900(Lcom/google/glass/input/ItemScroller;)Z

    .line 211
    :cond_4
    if-eqz v2, :cond_5

    .line 212
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    const-string v8, "hitEdge: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    #calls: Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Lcom/google/glass/input/ItemScroller;->access$1000(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #calls: Lcom/google/glass/input/ItemScroller;->cutFlingShort()V
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$1100(Lcom/google/glass/input/ItemScroller;)V

    .line 218
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->flingShouldSnapOnEnd:Z
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$1200(Lcom/google/glass/input/ItemScroller;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 220
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    const-string v8, "fling finished, snapping to nearest item"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    #calls: Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Lcom/google/glass/input/ItemScroller;->access$1000(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v7}, Lcom/google/glass/input/ItemScroller;->access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v8}, Lcom/google/glass/input/ItemScroller;->access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-interface {v7, v8}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 223
    :cond_6
    iget-object v7, p0, Lcom/google/glass/input/ItemScroller$2;->this$0:Lcom/google/glass/input/ItemScroller;

    const/4 v8, 0x0

    #calls: Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V
    invoke-static {v7, v8}, Lcom/google/glass/input/ItemScroller;->access$500(Lcom/google/glass/input/ItemScroller;F)V

    goto/16 :goto_0

    .line 199
    .end local v0           #closeEnoughToStartZooming:Z
    .end local v2           #hitEdge:Z
    .end local v4           #timeToStop:J
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 205
    .restart local v2       #hitEdge:Z
    .restart local v4       #timeToStop:J
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method
