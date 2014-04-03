.class Lcom/google/glass/voice/menu/OverscrollView$1;
.super Ljava/lang/Object;
.source "OverscrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/OverscrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/OverscrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/OverscrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/voice/menu/OverscrollView$1;->this$0:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/glass/voice/menu/OverscrollView$1;->this$0:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #calls: Lcom/google/glass/voice/menu/OverscrollView;->setItem(F)V
    invoke-static {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->access$000(Lcom/google/glass/voice/menu/OverscrollView;F)V

    .line 56
    return-void
.end method
