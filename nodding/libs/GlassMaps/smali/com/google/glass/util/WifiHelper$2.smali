.class Lcom/google/glass/util/WifiHelper$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/util/cl;

.field final synthetic b:Lcom/google/glass/util/WifiHelper;


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/util/WifiHelper;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$2;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Wifi scan completed, scan results received."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/a/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/util/WifiHelper$2;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$2;->a:Lcom/google/glass/util/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$2;->b:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->a(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/glass/util/WifiHelper;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$2;->a:Lcom/google/glass/util/cl;

    :cond_0
    return-void
.end method
