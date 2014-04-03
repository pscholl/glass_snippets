.class public final Lcom/google/glass/input/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/glass/input/InputListener;

.field private b:Lcom/google/glass/util/bj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/l;->a:Lcom/google/glass/input/InputListener;

    new-instance v0, Lcom/google/glass/util/bj;

    invoke-direct {v0, p1}, Lcom/google/glass/util/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/l;->b:Lcom/google/glass/util/bj;

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/l;->a:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/l;->b:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/glass/input/SwipeDirection;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/input/l;->a:Lcom/google/glass/input/InputListener;

    invoke-interface {v1, v0, p1}, Lcom/google/glass/input/InputListener;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/input/l;->b:Lcom/google/glass/util/bj;

    invoke-virtual {v1}, Lcom/google/glass/util/bj;->d()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0}, Lcom/google/glass/input/l;->a(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0}, Lcom/google/glass/input/l;->a(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/glass/input/l;->a()Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
