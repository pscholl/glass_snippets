.class public final Lcom/google/glass/logging/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/os/Messenger;

.field private final c:J

.field private volatile d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/b;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/logging/c;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/c;-><init>(Lcom/google/glass/logging/b;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/logging/b;->b:Landroid/os/Messenger;

    const-string v0, "no companion log found."

    iput-object v0, p0, Lcom/google/glass/logging/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/logging/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/google/glass/companion/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/logging/b;->c:J

    sget-object v0, Lcom/google/glass/logging/b;->a:Lcom/google/glass/logging/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting companion log with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/logging/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/companion/a;->b()Lcom/google/glass/companion/n;

    move-result-object v0

    new-instance v1, Lcom/google/glass/companion/m;

    invoke-direct {v1}, Lcom/google/glass/companion/m;-><init>()V

    iget-wide v2, p0, Lcom/google/glass/logging/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/glass/companion/m;->b:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/glass/companion/m;->c:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/glass/companion/m;->f:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    iget-object v1, p0, Lcom/google/glass/logging/b;->b:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/google/glass/companion/a;->a(Lcom/google/glass/companion/n;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/logging/LoggingApplication;->b(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/logging/LoggingApplication;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/logging/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/glass/logging/b;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/glass/logging/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/logging/b;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/logging/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/b;->e:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/google/glass/logging/b;->a:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeout in reading companion log? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/google/glass/logging/b;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/glass/logging/b;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/google/glass/logging/b;->a:Lcom/google/glass/logging/i;

    const-string v4, "InterruptedException in getCompanionLog"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
