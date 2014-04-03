.class Lcom/google/glass/input/HeadScroller$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/input/a;


# virtual methods
.method protected final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/input/a;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "gesture"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    move-result-object v0

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$1;->a:Lcom/google/glass/input/a;

    invoke-virtual {v0}, Lcom/google/glass/input/a;->a()V

    :cond_0
    return-void
.end method
