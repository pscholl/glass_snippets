.class public final Lcom/google/glass/net/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/http/AndroidHttpClient;

.field private d:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/e;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/net/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/net/e;->c:Landroid/net/http/AndroidHttpClient;

    iput-object p3, p0, Lcom/google/glass/net/e;->d:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/e;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/net/w;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Lcom/google/glass/net/t;

    iget-object v1, p0, Lcom/google/glass/net/e;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/net/e;->d:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-direct {v2, v1, v3}, Lcom/google/glass/net/t;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/e;->c:Landroid/net/http/AndroidHttpClient;

    iget-object v3, p0, Lcom/google/glass/net/e;->d:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v1, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_1
    sget-object v3, Lcom/google/glass/net/e;->a:Lcom/google/glass/logging/i;

    const-string v4, "Response from server was null!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2, v1}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/glass/net/w;

    invoke-direct {v0, v1}, Lcom/google/glass/net/w;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2, v1}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/glass/net/t;->a(Lorg/apache/http/HttpResponse;)V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
