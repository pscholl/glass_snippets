.class public Lcom/google/glass/util/HopHelper;
.super Ljava/lang/Object;
.source "HopHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/HopHelper$2;
    }
.end annotation


# static fields
.field private static final HOP_ANIMATION_DURATION_MS:J = 0x96L

.field private static final PRE_HOP_ANIMATION_TRANSLATION_PX:J = -0x3cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V
    .locals 7
    .parameter "view"
    .parameter "direction"

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .local v0, translationXAmount:J
    const-wide/16 v2, 0x0

    .line 35
    .local v2, translationYAmount:J
    sget-object v4, Lcom/google/glass/util/HopHelper$2;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p1}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const-wide/16 v2, -0x3c

    .line 55
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    long-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    long-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/google/glass/util/HopHelper$1;

    invoke-direct {v5, p0}, Lcom/google/glass/util/HopHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 40
    :pswitch_1
    const-wide/16 v2, 0x3c

    .line 41
    goto :goto_1

    .line 43
    :pswitch_2
    const-wide/16 v0, 0x3c

    .line 44
    goto :goto_1

    .line 46
    :pswitch_3
    const-wide/16 v0, -0x3c

    .line 47
    goto :goto_1

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
