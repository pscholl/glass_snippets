.class public Lcom/google/glass/net/PendingHttpRequest;
.super Ljava/lang/Object;
.source "PendingHttpRequest.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final client:Landroid/net/http/AndroidHttpClient;

.field private final context:Landroid/content/Context;

.field private isCancelled:Z

.field private request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/PendingHttpRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    .locals 1
    .parameter "context"
    .parameter "client"
    .parameter "request"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/glass/net/PendingHttpRequest;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/google/glass/net/PendingHttpRequest;->client:Landroid/net/http/AndroidHttpClient;

    .line 31
    iput-object p3, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->abort()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    .line 42
    return-void
.end method

.method public execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, response:Lorg/apache/http/HttpResponse;
    new-instance v0, Lcom/google/glass/net/RequestLogger;

    iget-object v2, p0, Lcom/google/glass/net/PendingHttpRequest;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-direct {v0, v2, v3}, Lcom/google/glass/net/RequestLogger;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 58
    .local v0, requestLogger:Lcom/google/glass/net/RequestLogger;
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/net/PendingHttpRequest;->client:Landroid/net/http/AndroidHttpClient;

    iget-object v3, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v2, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    sget-object v2, Lcom/google/glass/net/PendingHttpRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Response from server was null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    :goto_0
    return-object v2

    .line 65
    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/glass/net/SimplifiedHttpResponse;

    invoke-direct {v2, v1}, Lcom/google/glass/net/SimplifiedHttpResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 68
    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v2
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    return v0
.end method
