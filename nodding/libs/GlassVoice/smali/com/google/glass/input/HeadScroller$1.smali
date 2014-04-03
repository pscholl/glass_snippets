.class Lcom/google/glass/input/HeadScroller$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/HeadScroller;
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
    .line 204
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$1;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/google/glass/input/HeadScroller;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 207
    const-string v1, "gesture"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    move-result-object v0

    .line 209
    .local v0, gesture:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/google/glass/input/HeadScroller$1;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-virtual {v1}, Lcom/google/glass/input/HeadScroller;->doubleBlinkDetected()V

    .line 212
    :cond_0
    return-void
.end method
