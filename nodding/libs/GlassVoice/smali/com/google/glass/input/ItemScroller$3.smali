.class Lcom/google/glass/input/ItemScroller$3;
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
    .line 231
    iput-object p1, p0, Lcom/google/glass/input/ItemScroller$3;->this$0:Lcom/google/glass/input/ItemScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller$3;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    .line 235
    return-void
.end method
