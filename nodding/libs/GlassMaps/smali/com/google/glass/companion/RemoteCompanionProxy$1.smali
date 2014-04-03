.class Lcom/google/glass/companion/RemoteCompanionProxy$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/companion/ae;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/companion/ae;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Got action: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    const-string v1, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;Z)Z

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    const-string v1, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;I)I

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    const-string v1, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/ae;->b(Lcom/google/glass/companion/ae;I)I

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "isConnected = %s, companionRemoteVersion = %s, companionLocalVersion = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    invoke-static {v3}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    invoke-static {v3}, Lcom/google/glass/companion/ae;->b(Lcom/google/glass/companion/ae;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    invoke-static {v4}, Lcom/google/glass/companion/ae;->c(Lcom/google/glass/companion/ae;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->a:Lcom/google/glass/companion/ae;

    invoke-static {v0}, Lcom/google/glass/companion/ae;->d(Lcom/google/glass/companion/ae;)V

    :cond_0
    return-void
.end method
