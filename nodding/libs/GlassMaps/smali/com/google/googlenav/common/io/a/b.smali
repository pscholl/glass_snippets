.class public final Lcom/google/googlenav/common/io/a/b;
.super Lcom/google/googlenav/common/io/b;


# static fields
.field private static final b:Lcom/google/glass/logging/i;

.field private static f:I

.field private static final g:Ljava/lang/Object;


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private e:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CONNECT"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/io/a/b;->b:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/io/a/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/common/io/b;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/common/io/a/b;->d:Landroid/content/Context;

    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/a/b;)Lorg/apache/http/client/HttpClient;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/a/b;->e:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic c()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/io/a/b;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/io/a/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()I
    .locals 2

    sget v0, Lcom/google/googlenav/common/io/a/b;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/googlenav/common/io/a/b;->f:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/google/googlenav/common/io/a/b;->f:I

    return v0
.end method

.method static synthetic g()I
    .locals 2

    sget v0, Lcom/google/googlenav/common/io/a/b;->f:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/google/googlenav/common/io/a/b;->f:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/googlenav/common/io/f;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/common/io/a/b;->e:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/googlenav/common/io/a/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/common/io/a/b;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/b;->e:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/google/googlenav/common/io/a/b;->e:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_0
    new-instance v0, Lcom/google/googlenav/common/io/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/googlenav/common/io/a/d;-><init>(Lcom/google/googlenav/common/io/a/b;Ljava/lang/String;ZLcom/google/googlenav/common/io/a/c;)V

    return-object v0
.end method
