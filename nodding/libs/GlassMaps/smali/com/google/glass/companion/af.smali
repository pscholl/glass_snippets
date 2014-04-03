.class final Lcom/google/glass/companion/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/glass/companion/ae;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/companion/ae;->c()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Connected to %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {p2}, Lcom/google/glass/companion/g;->a(Landroid/os/IBinder;)Lcom/google/glass/companion/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;Lcom/google/glass/companion/f;)Lcom/google/glass/companion/f;

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v0}, Lcom/google/glass/companion/ae;->f(Lcom/google/glass/companion/ae;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v1}, Lcom/google/glass/companion/ae;->e(Lcom/google/glass/companion/ae;)Landroid/app/Application;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v0}, Lcom/google/glass/companion/ae;->d(Lcom/google/glass/companion/ae;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/companion/ae;->c()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Disconnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;Lcom/google/glass/companion/f;)Lcom/google/glass/companion/f;

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v0}, Lcom/google/glass/companion/ae;->f(Lcom/google/glass/companion/ae;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v1}, Lcom/google/glass/companion/ae;->e(Lcom/google/glass/companion/ae;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v0, v4}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;Z)Z

    iget-object v0, p0, Lcom/google/glass/companion/af;->a:Lcom/google/glass/companion/ae;

    invoke-static {v0}, Lcom/google/glass/companion/ae;->d(Lcom/google/glass/companion/ae;)V

    return-void
.end method
