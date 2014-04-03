.class public final Lcom/google/glass/input/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# instance fields
.field private inputListener:Lcom/google/glass/input/InputListener;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2
    .parameter "context"
    .parameter "inputListener"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p2, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/KeyDetector;->inputListener:Lcom/google/glass/input/InputListener;

    .line 26
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/KeyDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 27
    return-void
.end method

.method private dispatchConfirm()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/input/KeyDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/input/KeyDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchSwipe(Lcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 59
    iget-object v1, p0, Lcom/google/glass/input/KeyDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v1, v0, p1}, Lcom/google/glass/input/InputListener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/glass/input/KeyDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0}, Lcom/google/glass/input/KeyDetector;->dispatchSwipe(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0}, Lcom/google/glass/input/KeyDetector;->dispatchSwipe(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    invoke-direct {p0}, Lcom/google/glass/input/KeyDetector;->dispatchConfirm()Z

    move-result v0

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
