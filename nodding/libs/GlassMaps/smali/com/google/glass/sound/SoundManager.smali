.class public final Lcom/google/glass/sound/SoundManager;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final c:Lcom/google/glass/logging/i;

.field private static final d:Lcom/google/glass/logging/i;

.field private static final e:Landroid/os/Handler;


# instance fields
.field final b:Lcom/google/glass/util/bq;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private f:Lcom/google/glass/sound/SoundManager$SoundId;

.field private final g:Landroid/content/Context;

.field private h:Lcom/google/glass/sound/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->c:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/sound/SoundManager;->c:Lcom/google/glass/logging/i;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->d:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->e:Landroid/os/Handler;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sound"

    const-string v2, "com.google.glass.sound.SoundManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->a:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/sound/d;

    sget-object v1, Lcom/google/glass/sound/SoundManager;->a:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sound/d;-><init>(Lcom/google/glass/sound/SoundManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->b:Lcom/google/glass/util/bq;

    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->b()Z

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/sound/SoundManager;->d:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/a;)Lcom/google/glass/sound/a;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->h:Lcom/google/glass/sound/a;

    return-object p1
.end method

.method private b()Z
    .locals 4

    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->b:Lcom/google/glass/util/bq;

    invoke-virtual {v0}, Lcom/google/glass/util/bq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->b:Lcom/google/glass/util/bq;

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/bq;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)I
    .locals 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->f:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->b()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/sound/SoundManager;->c:Lcom/google/glass/logging/i;

    const-string v2, "SoundManagerService is not connected, not playing sound: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->h:Lcom/google/glass/sound/a;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/sound/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz p2, :cond_0

    if-lez v0, :cond_2

    sget-object v1, Lcom/google/glass/sound/SoundManager;->e:Landroid/os/Handler;

    new-instance v2, Lcom/google/glass/sound/e;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/glass/sound/e;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/g;Lcom/google/glass/sound/SoundManager$SoundId;)V

    #getter for: Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:I
    invoke-static {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->access$200(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/glass/sound/SoundManager;->e:Landroid/os/Handler;

    new-instance v2, Lcom/google/glass/sound/f;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/glass/sound/f;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/g;Lcom/google/glass/sound/SoundManager$SoundId;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
