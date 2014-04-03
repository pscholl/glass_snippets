.class final Lcom/google/glass/input/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/input/k;

.field final synthetic b:Lcom/google/glass/input/ItemScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ItemScroller;Lcom/google/glass/input/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/f;->b:Lcom/google/glass/input/ItemScroller;

    iput-object p2, p0, Lcom/google/glass/input/f;->a:Lcom/google/glass/input/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/input/f;->b:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, v4}, Lcom/google/glass/input/ItemScroller;->a(Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/input/f;->b:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->b(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/input/f;->a:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->c()F

    move-result v3

    aput v3, v1, v2

    iget-object v2, p0, Lcom/google/glass/input/f;->b:Lcom/google/glass/input/ItemScroller;

    invoke-static {v2}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;)F

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/glass/input/f;->b:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->b(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
