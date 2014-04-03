.class public final Lcom/google/glass/util/aq;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/google/glass/util/aq;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/aq;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/google/glass/util/aq;
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/aq;->b:Lcom/google/glass/util/aq;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/aq;->b:Lcom/google/glass/util/aq;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/util/aq;

    invoke-direct {v0}, Lcom/google/glass/util/aq;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/aq;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/aq;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/aq;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
