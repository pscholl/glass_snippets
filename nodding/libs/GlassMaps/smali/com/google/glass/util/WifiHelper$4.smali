.class Lcom/google/glass/util/WifiHelper$4;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/util/ck;

.field final synthetic b:Lcom/google/glass/util/WifiHelper;


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/util/WifiHelper;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$4;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Connectivity receiver received %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$4;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "WifiManager claims we are connected to wifi."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$4;->b:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->b(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$4;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "ConnectivityManager agrees with WifiManager, progressing..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$4;->b:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->c(Lcom/google/glass/util/WifiHelper;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$4;->b:Lcom/google/glass/util/WifiHelper;

    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->d(Lcom/google/glass/util/WifiHelper;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$4;->a:Lcom/google/glass/util/ck;

    :cond_0
    return-void
.end method
