.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Lcom/google/glass/input/ItemScroller$Scrollable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.5;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()F
    .locals 1

    .prologue
    .line 391
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.5;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    return v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 489
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.5;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->hasData()Z
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 492
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 497
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.5;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    return v0
.end method

.method public setItem(F)V
    .locals 16
    .parameter "item"

    .prologue
    .line 396
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.5;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 397
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 398
    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "setItem(%s) while deactivated."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->suppressViewUpdates:Z
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 402
    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "setItem(%s) while suppressing view updates."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v5

    .line 408
    .local v5, lastScrollerPosition:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)D

    move-result-wide v6

    .line 409
    .local v6, lastScrollerPositionUpdateTime:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v10

    .line 412
    .local v10, wasSettled:Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    long-to-double v11, v11

    const-wide v13, 0x41cdcd6500000000L

    div-double v3, v11, v13

    .line 415
    .local v3, currentTime:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move/from16 v0, p1

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$402(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F

    .line 416
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D
    invoke-static {v11, v3, v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$802(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;D)D

    .line 419
    const-wide/16 v11, 0x0

    cmpl-double v11, v6, v11

    if-lez v11, :cond_3

    cmpl-double v11, v3, v6

    if-lez v11, :cond_3

    .line 421
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    sub-float/2addr v12, v5

    float-to-double v12, v12

    sub-double v14, v3, v6

    div-double/2addr v12, v14

    double-to-float v12, v12

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F
    invoke-static {v11, v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$902(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F

    .line 426
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 427
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->hasData()Z
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 430
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v2

    .line 431
    .local v2, count:I
    if-ltz v9, :cond_4

    if-lt v9, v2, :cond_5

    .line 432
    :cond_4
    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "Invalid position reported from item scroller; item count: %s; reported position: %s (rounded to %s)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    if-gez v9, :cond_9

    .line 435
    const/4 v9, 0x0

    .line 449
    .end local v2           #count:I
    :cond_5
    :goto_1
    int-to-float v11, v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x4420

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 452
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v11

    if-eq v11, v9, :cond_6

    .line 453
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/4 v12, 0x1

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V
    invoke-static {v11, v9, v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IZ)V

    .line 454
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 455
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/4 v12, 0x0

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViewsInternal(Z)Z
    invoke-static {v11, v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    move-result v1

    .line 456
    .local v1, changedViews:Z
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 459
    if-eqz v10, :cond_6

    .line 460
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 466
    .end local v1           #changedViews:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1600(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v11

    if-eq v11, v8, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V
    invoke-static {v11, v8, v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IF)V

    .line 471
    :cond_7
    if-eqz v10, :cond_b

    .line 472
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v11

    if-nez v11, :cond_8

    .line 473
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onUnsettledInternal()V
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1900(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 482
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v11

    cmpl-float v11, v11, v5

    if-eqz v11, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onScrollPositionChanged(F)V

    goto/16 :goto_0

    .line 437
    .end local v8           #offset:I
    .restart local v2       #count:I
    :cond_9
    add-int/lit8 v9, v2, -0x1

    goto/16 :goto_1

    .line 443
    .end local v2           #count:I
    :cond_a
    if-eqz v9, :cond_5

    .line 444
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 476
    .restart local v8       #offset:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 477
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V
    invoke-static {v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    goto :goto_2
.end method

.method public setScale(F)V
    .locals 6
    .parameter "scale"

    .prologue
    .line 502
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.5;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 503
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "setScale(%s) while deactivated."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v0

    .line 514
    .local v0, wasSettled:Z
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1600(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v2

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V
    invoke-static {v1, v2, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IF)V

    .line 517
    if-eqz v0, :cond_3

    .line 518
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onUnsettledInternal()V
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1900(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 528
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onScaleChanged(F)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    goto :goto_1
.end method
