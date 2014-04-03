.class public Lcom/google/glass/net/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    }
.end annotation


# static fields
.field private static final PING_URI:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final TIMEOUT_MS:I = 0x1f40

.field private static companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static checkNetwork()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 101
    .local v0, worker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->check()V

    .line 104
    :cond_0
    return-void
.end method

.method public static hasTetheredConnectivity(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 45
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 47
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 48
    .local v5, networks:[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    .line 49
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 50
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    const/4 v6, 0x1

    .line 55
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #len$:I
    :goto_1
    return v6

    .line 49
    .restart local v0       #arr$:[Landroid/net/NetworkInfo;
    .restart local v2       #i$:I
    .restart local v3       #info:Landroid/net/NetworkInfo;
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #len$:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static pingGoogle(Landroid/content/Context;)Z
    .locals 15
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 62
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 64
    new-instance v4, Lorg/apache/http/client/methods/HttpHead;

    const-string v10, "https://www.google.com/generate_204"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 65
    .local v4, request:Lorg/apache/http/client/methods/HttpHead;
    invoke-static {}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 66
    .local v2, httpClient:Landroid/net/http/AndroidHttpClient;
    new-instance v5, Lcom/google/glass/net/RequestLogger;

    invoke-direct {v5, p0, v4}, Lcom/google/glass/net/RequestLogger;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 67
    .local v5, requestLogger:Lcom/google/glass/net/RequestLogger;
    const/4 v6, 0x0

    .line 69
    .local v6, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 70
    .local v3, params:Lorg/apache/http/params/HttpParams;
    const/16 v10, 0x1f40

    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    const/16 v10, 0x1f40

    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 73
    invoke-virtual {v2, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 74
    if-nez v6, :cond_0

    .line 75
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Unable to get response from https://www.google.com/generate_204"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 92
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v3           #params:Lorg/apache/http/params/HttpParams;
    :goto_0
    return v9

    .line 79
    .restart local v3       #params:Lorg/apache/http/params/HttpParams;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 80
    .local v7, status:Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 81
    .local v1, headers:[Lorg/apache/http/Header;
    if-eqz v7, :cond_1

    if-nez v1, :cond_2

    .line 82
    :cond_1
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Unable to reach https://www.google.com/generate_204"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 92
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 85
    :cond_2
    :try_start_2
    sget-object v10, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Fetch of https://www.google.com/generate_204 returned status: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    const/16 v11, 0x190

    if-ge v10, v11, :cond_3

    .line 91
    :goto_1
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 92
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    move v9, v8

    goto :goto_0

    :cond_3
    move v8, v9

    .line 86
    goto :goto_1

    .line 87
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v3           #params:Lorg/apache/http/params/HttpParams;
    .end local v7           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Unable to reach https://www.google.com/generate_204"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v0, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 92
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 92
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8
.end method

.method public static reportNetworkError()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 111
    .local v0, worker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportError()V

    .line 114
    :cond_0
    return-void
.end method

.method public static reportNetworkOK()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 121
    .local v0, worker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportOK()V

    .line 124
    :cond_0
    return-void
.end method

.method public static setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V
    .locals 0
    .parameter "worker"

    .prologue
    .line 131
    sput-object p0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 132
    return-void
.end method
