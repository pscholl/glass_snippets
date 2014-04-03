.class public Lcom/google/glass/voice/network/DirectGwsRequest;
.super Ljava/lang/Object;
.source "DirectGwsRequest.java"


# static fields
.field static final NOTIFY_ON_AUTH:Z = false

.field private static final SERVER_KEY:Ljava/lang/String; = "persist.search.server"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final context:Landroid/content/Context;

.field private final cookies:Lcom/google/glass/voice/network/Cookies;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/DirectGwsRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 1
    .parameter "context"
    .parameter "locationManagerHelper"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/glass/voice/network/Cookies;->create(Landroid/content/Context;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 51
    new-instance v0, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, p1}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 52
    iput-object p1, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/location/LocationManagerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->cookies:Lcom/google/glass/voice/network/Cookies;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/DirectGwsRequest;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/auth/AuthUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest;->authUtils:Lcom/google/glass/auth/AuthUtils;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/voice/network/DirectGwsRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
    .locals 1
    .parameter "query"
    .parameter "canUseSignIn"
    .parameter "handler"

    .prologue
    .line 69
    new-instance v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/network/DirectGwsRequest$1;-><init>(Lcom/google/glass/voice/network/DirectGwsRequest;Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method
