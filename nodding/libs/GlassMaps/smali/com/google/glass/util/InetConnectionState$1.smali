.class Lcom/google/glass/util/InetConnectionState$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/util/ay;


# direct methods
.method constructor <init>(Lcom/google/glass/util/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/InetConnectionState$1;->a:Lcom/google/glass/util/ay;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/util/ay;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/google/glass/util/az;

    invoke-direct {v0, p0}, Lcom/google/glass/util/az;-><init>(Lcom/google/glass/util/InetConnectionState$1;)V

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/az;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
