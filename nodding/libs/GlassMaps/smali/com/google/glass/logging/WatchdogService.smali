.class public Lcom/google/glass/logging/WatchdogService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/glass/logging/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/logging/WatchdogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/WatchdogService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/glass/logging/WatchdogService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lcom/google/glass/logging/al;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/al;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/google/glass/logging/WatchdogService;->b:Lcom/google/glass/logging/al;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/WatchdogService;->b:Lcom/google/glass/logging/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/WatchdogService;->b:Lcom/google/glass/logging/al;

    invoke-virtual {v0}, Lcom/google/glass/logging/al;->a()V

    :cond_0
    return-void
.end method
