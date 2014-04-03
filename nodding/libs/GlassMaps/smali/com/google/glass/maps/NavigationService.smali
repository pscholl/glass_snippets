.class public Lcom/google/glass/maps/NavigationService;
.super Landroid/app/Service;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/glass/maps/be;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/glass/maps/NavigationBroadcastReceiver;

.field private f:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationService;->a:Lcom/google/glass/logging/i;

    const-class v0, Lcom/google/glass/maps/NavigationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/glass/maps/be;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/be;-><init>(Lcom/google/glass/maps/NavigationService;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->c:Lcom/google/glass/maps/be;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->d:Landroid/os/Handler;

    new-instance v0, Lcom/google/glass/maps/NavigationBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/glass/maps/NavigationBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->e:Lcom/google/glass/maps/NavigationBroadcastReceiver;

    return-void
.end method

.method private a(Landroid/content/Intent;I)I
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/ao;->e()Lcom/google/glass/maps/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/maps/c/f;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/c/v;)V

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationService;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationService;->a()V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->b()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/nav/ao;)V

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationService;->a(Lcom/google/android/maps/driveabout/b/q;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/ao;->a(Z)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v3

    :goto_0
    invoke-virtual {v2}, Lcom/google/glass/maps/ao;->i()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/glass/maps/NavigationService;->f:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v5}, Lcom/google/glass/maps/NavigationManager;->b()V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->c()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    const-string v5, "extra_log_start_event"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/g;->a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    :cond_1
    :goto_1
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationService;->stopSelf(I)V

    sget-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    const-string v1, "START_REDELIVER_INTENT"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_2
    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->f()I

    move-result v3

    invoke-static {p0, v3}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/maps/g;->a()V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->f:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->d()[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    const-string v2, "extra_show_confirmation"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "extra_log_start_event"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/google/glass/maps/NavigationManager;->a([Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    invoke-static {}, Lcom/google/android/maps/driveabout/h/f;->e()Lcom/google/android/maps/driveabout/h/f;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/maps/driveabout/c/o;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/c/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/h/f;->a(Lcom/google/android/maps/driveabout/h/j;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_NOT_STICKY Unable to parse URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/maps/NavigationService;->f:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager;->c()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->h()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/glass/maps/NavigationService;->a:Lcom/google/glass/logging/i;

    const-string v1, "Stopping because no route is in progress and no new route was requested."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->f:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->b()V

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationService;->stopSelf()V

    :cond_5
    const/4 v0, 0x2

    goto :goto_2
.end method

.method private a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string v1, "event_log"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/glass/maps/NavigationService;->a:Lcom/google/glass/logging/i;

    const-string v3, "Replaying log: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/maps/GlassUserEventLogger;->a()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b/v;->a(Z)V

    new-instance v1, Lcom/google/android/maps/driveabout/c/v;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/c/v;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/c/v;)V

    if-eqz v1, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/c/v;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/google/glass/maps/c/f;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/glass/maps/NavigationService;->a:Lcom/google/glass/logging/i;

    const-string v3, "Unable to replay the event log"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/maps/bs;->app_name:I

    invoke-virtual {p0, v1}, Lcom/google/glass/maps/NavigationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bl;->ic_menu_drive:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/maps/NavigationService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/NavigationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationService;->b()V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/b/q;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/b/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NV_TRST:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/b/q;->f()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b()V
    .locals 2

    sget-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    const-string v1, "Exiting navigation process"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->f:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->b()V

    invoke-static {}, Lcom/google/glass/maps/ao;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->c:Lcom/google/glass/maps/be;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    const-string v1, "Created"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/glass/maps/ao;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->d()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->f:Lcom/google/glass/maps/NavigationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    const-string v1, "Destroyed"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->e:Lcom/google/glass/maps/NavigationBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationBroadcastReceiver;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/bd;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/bd;-><init>(Lcom/google/glass/maps/NavigationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/maps/NavigationService;->b:Ljava/lang/String;

    const-string v1, "intent is null. START_NOT_STICKY"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/glass/maps/NavigationService;->a(Landroid/content/Intent;I)I

    move-result v0

    goto :goto_0
.end method
