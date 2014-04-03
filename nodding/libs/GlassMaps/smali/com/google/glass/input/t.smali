.class public final Lcom/google/glass/input/t;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/google/glass/voice/m;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/glass/logging/i;

.field private static final d:Landroid/content/ComponentName;

.field private static final h:Lcom/google/glass/util/bq;

.field private static final i:Ljava/util/Set;


# instance fields
.field private final e:Lcom/google/glass/input/ab;

.field private volatile f:Lcom/google/glass/voice/VoiceConfig;

.field private g:D

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/google/glass/input/x;

.field private final l:Lcom/google/glass/input/aa;

.field private m:Lcom/google/glass/voice/network/d;

.field private final n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    const-string v1, "voiceServiceConnection"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/t;->c:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.VoiceService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/input/t;->d:Landroid/content/ComponentName;

    new-instance v0, Lcom/google/glass/input/u;

    sget-object v1, Lcom/google/glass/input/t;->d:Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/google/glass/input/u;-><init>(Landroid/content/ComponentName;)V

    sput-object v0, Lcom/google/glass/input/t;->h:Lcom/google/glass/util/bq;

    invoke-static {}, Lcom/google/common/collect/Sets;->c()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/t;->i:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/ab;Lcom/google/glass/input/aa;)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/input/t;-><init>(Landroid/content/Context;Lcom/google/glass/input/ab;Lcom/google/glass/input/aa;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/ab;Lcom/google/glass/input/aa;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/input/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/input/v;-><init>(Lcom/google/glass/input/t;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/input/t;->j:Landroid/os/Handler;

    new-instance v0, Lcom/google/glass/input/x;

    invoke-direct {v0, p0}, Lcom/google/glass/input/x;-><init>(Lcom/google/glass/input/t;)V

    iput-object v0, p0, Lcom/google/glass/input/t;->k:Lcom/google/glass/input/x;

    iput-object p2, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    iput-object p3, p0, Lcom/google/glass/input/t;->l:Lcom/google/glass/input/aa;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/t;->n:Landroid/content/Context;

    invoke-static {}, Lcom/google/glass/input/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->n:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/glass/input/t;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    invoke-direct {p0}, Lcom/google/glass/input/t;->i()Z

    return-void
.end method

.method static synthetic a(Lcom/google/glass/input/t;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/glass/input/t;->g:D

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/glass/input/aa;
    .locals 1

    new-instance v0, Lcom/google/glass/input/y;

    invoke-direct {v0, p0}, Lcom/google/glass/input/y;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "Listener is not running, ignoring voiceCommand"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "Voice command triggered"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    sget-object v2, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    invoke-interface {v2}, Lcom/google/glass/logging/i;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/glass/logging/o;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0, p1}, Lcom/google/glass/input/ab;->a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/google/glass/input/t;->l:Lcom/google/glass/input/aa;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/input/t;->l:Lcom/google/glass/input/aa;

    iget-object v4, p0, Lcom/google/glass/input/t;->j:Landroid/os/Handler;

    new-instance v5, Lcom/google/glass/input/w;

    invoke-direct {v5, p0, v3, p1, v0}, Lcom/google/glass/input/w;-><init>(Lcom/google/glass/input/t;Lcom/google/glass/input/aa;Lcom/google/glass/voice/VoiceCommand;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v3, "Voice command not handled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/glass/input/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/input/t;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/input/x;)V
    .locals 0

    invoke-static {p0}, Lcom/google/glass/input/t;->b(Lcom/google/glass/input/x;)V

    return-void
.end method

.method private a(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/glass/input/t;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Trying to change VoiceConfig before VoiceService connected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/m;->a(Lcom/google/glass/voice/VoiceConfig;Z)V

    iput-object p1, p0, Lcom/google/glass/input/t;->f:Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to set voice config"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/input/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/input/t;->k()V

    return-void
.end method

.method private static b(Lcom/google/glass/input/x;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    const-string v1, "Attaching listener to VoiceService: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    invoke-interface {v0, p0}, Lcom/google/glass/voice/m;->a(Lcom/google/glass/voice/p;)V

    invoke-virtual {p0}, Lcom/google/glass/input/x;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    const-string v2, "Failed to attach listener to VoiceService"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Lcom/google/glass/voice/network/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/glass/input/t;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "detachVoiceInputCallback called before VoiceService connected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/m;->b(Lcom/google/glass/voice/network/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to remove voice input callback from VoiceService"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/glass/input/t;->h:Lcom/google/glass/util/bq;

    invoke-virtual {v0}, Lcom/google/glass/util/bq;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/glass/input/t;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/t;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/input/t;)Lcom/google/glass/input/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    return-object v0
.end method

.method static synthetic f()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic g()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/google/glass/input/t;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/input/t;->c:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/input/t;->b()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/input/t;->b:Lcom/google/glass/logging/i;

    const-string v2, "Binding VoiceService"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/input/t;->h:Lcom/google/glass/util/bq;

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/t;->n:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/bq;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceServiceConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->b()V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->a()V

    goto :goto_0
.end method

.method private l()Lcom/google/glass/logging/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/input/t;->i:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/input/t;->k:Lcom/google/glass/input/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/glass/input/t;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->k:Lcom/google/glass/input/x;

    invoke-static {v0}, Lcom/google/glass/input/t;->b(Lcom/google/glass/input/x;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/input/z;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/google/glass/input/z;->b(Lcom/google/glass/input/z;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/t;->a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/input/z;->a(Lcom/google/glass/voice/VoiceConfig;)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/t;->a(Lcom/google/glass/voice/VoiceConfig;Z)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/network/d;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Ignoring attachVoiceInputCallback, callback is already attached."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/t;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "attachVoiceInputCallback called before VoiceService connected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    invoke-direct {p0, v0}, Lcom/google/glass/input/t;->b(Lcom/google/glass/voice/network/d;)V

    :cond_2
    iput-object p1, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    sget-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/m;->a(Lcom/google/glass/voice/network/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to attach voice input callback to VoiceService"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/glass/input/t;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Trying to set wantAudioData before VoiceService connected."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Setting wantAudioData: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/m;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to set wantAudioData"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a([BII)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring resampledAudioData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/ab;->a([BII)Z

    goto :goto_0
.end method

.method public final b(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceConfigChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    iget-object v1, p0, Lcom/google/glass/input/t;->f:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/input/ab;->a(Lcom/google/glass/voice/VoiceConfig;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/input/t;->i:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/input/t;->k:Lcom/google/glass/input/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/glass/input/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Removing listener from VoiceService: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/input/t;->k:Lcom/google/glass/input/x;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    iget-object v1, p0, Lcom/google/glass/input/t;->k:Lcom/google/glass/input/x;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/m;->b(Lcom/google/glass/voice/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/input/t;->k()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to detach listener"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Ignoring detachVoiceInputCallback when no callback attached."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    invoke-direct {p0, v0}, Lcom/google/glass/input/t;->b(Lcom/google/glass/voice/network/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/t;->m:Lcom/google/glass/voice/network/d;

    goto :goto_0
.end method

.method public final e()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/t;->l()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceAmplitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/t;->e:Lcom/google/glass/input/ab;

    iget-wide v1, p0, Lcom/google/glass/input/t;->g:D

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/ab;->a(D)Z

    goto :goto_0
.end method
