.class public final Lcom/google/glass/util/ar;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V
    .locals 10

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x3c

    sget-object v6, Lcom/google/glass/util/at;->a:[I

    invoke-virtual {p1}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-wide v0, v2

    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    long-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    long-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/as;

    invoke-direct {v1, p0}, Lcom/google/glass/util/as;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_2
    move-wide v0, v4

    move-wide v4, v2

    goto :goto_1

    :pswitch_3
    move-wide v8, v4

    move-wide v4, v0

    move-wide v0, v8

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
