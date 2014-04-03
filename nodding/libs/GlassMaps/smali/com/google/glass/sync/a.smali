.class final Lcom/google/glass/sync/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/sync/SyncHelper$SyncSource;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/SyncHelper$SyncSource;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/sync/a;->a:Lcom/google/glass/sync/SyncHelper$SyncSource;

    iput-object p2, p0, Lcom/google/glass/sync/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/sync/a;->c:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/glass/sync/a;->a:Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v3, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-ne v0, v3, :cond_1

    const-string v0, "force"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v3, "Requesting sync [authority=%s, syncSource=%s, extras=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/sync/a;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/google/glass/sync/a;->a:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v1, v4, v6

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/sync/a;->c:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/glass/sync/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/a;->a:Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v3, Lcom/google/glass/sync/SyncHelper$SyncSource;->GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/sync/a;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/sync/a;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "ignore_backoff"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
