.class public final Lcom/google/glass/net/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static b:Lcom/google/glass/net/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/c;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/google/glass/net/c;->b:Lcom/google/glass/net/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/glass/net/d;->a()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/glass/net/d;)V
    .locals 0

    sput-object p0, Lcom/google/glass/net/c;->b:Lcom/google/glass/net/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/google/glass/net/c;->b:Lcom/google/glass/net/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/glass/net/d;->b()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    const-string v2, "https://www.google.com/generate_204"

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/net/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    new-instance v5, Lcom/google/glass/net/t;

    invoke-direct {v5, p0, v3}, Lcom/google/glass/net/t;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/16 v7, 0x1f40

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v7, 0x1f40

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v4, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/google/glass/net/c;->a:Lcom/google/glass/logging/i;

    const-string v3, "Unable to get response from https://www.google.com/generate_204"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v6}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v2}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :goto_0
    return v1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v3, :cond_1

    if-nez v6, :cond_2

    :cond_1
    sget-object v0, Lcom/google/glass/net/c;->a:Lcom/google/glass/logging/i;

    const-string v3, "Unable to reach https://www.google.com/generate_204"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v6}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v5, v2}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v6, Lcom/google/glass/net/c;->a:Lcom/google/glass/logging/i;

    const-string v7, "Fetch of https://www.google.com/generate_204 returned status: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    const/16 v6, 0x190

    if-ge v3, v6, :cond_3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/google/glass/net/c;->a:Lcom/google/glass/logging/i;

    const-string v6, "Unable to reach https://www.google.com/generate_204"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0, v6, v7}, Lcom/google/glass/logging/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v5, v2}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v5, v2}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/google/glass/net/c;->b:Lcom/google/glass/net/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/glass/net/d;->c()V

    :cond_0
    return-void
.end method
