.class public Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;
.super Lcom/x/google/common/io/BaseHttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/io/android/AndroidHttpConnectionFactory$1;,
        Lcom/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;
    }
.end annotation


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "GoogleMobile/1.0"

.field private static final MAX_WORKER_THREAD_COUNT:I = 0x4

.field private static final lock:Ljava/lang/Object;

.field private static numOpenConnection:I


# instance fields
.field private client:Lcom/x/google/common/io/android/GoogleHttpClient;

.field private final context:Landroid/content/Context;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/x/google/common/io/BaseHttpConnectionFactory;-><init>()V

    iput-object p1, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->context:Landroid/content/Context;

    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    return v0
.end method

.method static synthetic access$208()I
    .locals 2

    sget v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    return v0
.end method

.method static synthetic access$210()I
    .locals 2

    sget v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    return v0
.end method

.method static synthetic access$300(Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;)Lcom/x/google/common/io/android/GoogleHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/x/google/common/io/android/GoogleHttpClient;->close()V

    :cond_0
    return-void
.end method

.method public createConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/x/google/common/io/android/GoogleHttpClient;

    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/x/google/common/io/android/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/x/google/common/io/android/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_0
    new-instance v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;-><init>(Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;ZLcom/x/google/common/io/android/AndroidHttpConnectionFactory$1;)V

    return-object v0
.end method

.method public getClient()Lcom/x/google/common/io/android/GoogleHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/x/google/common/io/android/GoogleHttpClient;

    return-object v0
.end method

.method public isNetworkAvailable()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    return-void
.end method
