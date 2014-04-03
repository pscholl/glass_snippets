.class Lcom/google/glass/input/HeadScroller$3;
.super Ljava/lang/Object;
.source "HeadScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$3;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$3;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$300(Lcom/google/glass/input/HeadScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    .line 273
    return-void
.end method
