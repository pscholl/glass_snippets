.class public final Lcom/google/glass/navlib/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/n;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/nav/n;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/navlib/e;

    invoke-direct {v1, p0}, Lcom/google/glass/navlib/e;-><init>(Lcom/google/glass/navlib/d;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/glass/navlib/d;->a:Lcom/google/android/maps/driveabout/nav/n;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/navlib/d;->a:Lcom/google/android/maps/driveabout/nav/n;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    new-instance v0, Lcom/google/glass/navlib/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/navlib/f;-><init>(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/google/glass/navlib/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/d;->a(ILjava/lang/Object;)V

    return-void
.end method
