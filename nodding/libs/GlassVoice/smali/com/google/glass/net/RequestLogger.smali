.class Lcom/google/glass/net/RequestLogger;
.super Ljava/lang/Object;
.source "RequestLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/RequestLogger$1;
    }
.end annotation


# static fields
.field private static final KEY_FINAL_NET_STATE:Ljava/lang/String; = "fns"

.field private static final KEY_FINAL_NET_TYPE:Ljava/lang/String; = "fnt"

.field private static final KEY_HTTP_STATUS:Ljava/lang/String; = "hs"

.field private static final KEY_LATENCY:Ljava/lang/String; = "l"

.field private static final KEY_METHOD:Ljava/lang/String; = "m"

.field private static final KEY_ORIGINAL_NET_STATE:Ljava/lang/String; = "ons"

.field private static final KEY_ORIGINAL_NET_TYPE:Ljava/lang/String; = "ont"

.field private static final KEY_SUCCESS:Ljava/lang/String; = "s"


# instance fields
.field private final cm:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final method:Ljava/lang/String;

.field private final originalNetInfo:Landroid/net/NetworkInfo;

.field private final stopwatch:Lcom/google/glass/util/Stopwatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .parameter "context"
    .parameter "request"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/glass/net/RequestLogger;->context:Landroid/content/Context;

    .line 33
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->cm:Landroid/net/ConnectivityManager;

    .line 34
    iget-object v0, p0, Lcom/google/glass/net/RequestLogger;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    .line 35
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->method:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->stopwatch:Lcom/google/glass/util/Stopwatch;

    .line 37
    iget-object v0, p0, Lcom/google/glass/net/RequestLogger;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 38
    return-void
.end method

.method private static stateToInteger(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/net/RequestLogger$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 77
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 80
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 81
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 82
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public log(Lorg/apache/http/HttpResponse;)V
    .locals 10
    .parameter "response"

    .prologue
    const/4 v9, -0x1

    .line 41
    iget-object v7, p0, Lcom/google/glass/net/RequestLogger;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 43
    .local v1, finalNetInfo:Landroid/net/NetworkInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, eventData:Ljava/lang/StringBuilder;
    const-string v7, "m"

    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->method:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v8, "s"

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v0, v8, v7}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v7, p0, Lcom/google/glass/net/RequestLogger;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v7}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v2

    .line 48
    .local v2, latency:J
    const-string v7, "l"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 50
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 51
    .local v5, statusCode:I
    const-string v7, "hs"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .end local v2           #latency:J
    .end local v5           #statusCode:I
    :cond_0
    iget-object v7, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    if-eqz v7, :cond_2

    .line 55
    iget-object v7, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/net/RequestLogger;->stateToInteger(Landroid/net/NetworkInfo$State;)I

    move-result v4

    .line 56
    .local v4, state:I
    const-string v7, "ont"

    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v7, "ons"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .end local v4           #state:I
    :goto_1
    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/net/RequestLogger;->stateToInteger(Landroid/net/NetworkInfo$State;)I

    move-result v4

    .line 64
    .restart local v4       #state:I
    const-string v7, "fnt"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v7, "fns"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .end local v4           #state:I
    :goto_2
    new-instance v6, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v7, p0, Lcom/google/glass/net/RequestLogger;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, userEvent:Lcom/google/glass/userevent/UserEventHelper;
    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 73
    return-void

    .line 45
    .end local v6           #userEvent:Lcom/google/glass/userevent/UserEventHelper;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 59
    :cond_2
    const-string v7, "ont"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v7, "ons"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 67
    :cond_3
    const-string v7, "fnt"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v7, "fns"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
