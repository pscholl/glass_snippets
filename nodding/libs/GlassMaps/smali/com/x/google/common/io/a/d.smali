.class final Lcom/x/google/common/io/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/x/google/common/io/a/a;


# direct methods
.method private constructor <init>(Lcom/x/google/common/io/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/io/a/d;->a:Lcom/x/google/common/io/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/x/google/common/io/a/a;Lcom/x/google/common/io/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/x/google/common/io/a/d;-><init>(Lcom/x/google/common/io/a/a;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/io/a/d;->a:Lcom/x/google/common/io/a/a;

    invoke-static {v0}, Lcom/x/google/common/io/a/a;->a(Lcom/x/google/common/io/a/a;)Lcom/x/google/common/io/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/x/google/common/io/a/e;->a(Lcom/x/google/common/io/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/x/google/common/io/a/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/x/google/common/io/a/e;->a(Lcom/x/google/common/io/a/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
