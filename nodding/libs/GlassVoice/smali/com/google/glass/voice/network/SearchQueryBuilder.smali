.class public Lcom/google/glass/voice/network/SearchQueryBuilder;
.super Ljava/lang/Object;
.source "SearchQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "www.google.com"

.field public static final DEFAULT_PATH:Ljava/lang/String; = "/search"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_DEVELOPER_KEY:Ljava/lang/String; = "X-Developer-Key"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_OAUTH_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_X_GEO:Ljava/lang/String; = "X-Geo"

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final PARAM_ANDROID_COUNTRY_CODE:Ljava/lang/String; = "gcc"

.field public static final PARAM_CLIENT_DEFAULT_VALUE:Ljava/lang/String; = "glass"

.field public static final PARAM_CLIENT_ID:Ljava/lang/String; = "client"

.field public static final PARAM_COMM_LAYER_TRANSPORT:Ljava/lang/String; = "tch"

.field public static final PARAM_COMM_LAYER_TRANSPORT_DEFAULT_VALUE:Ljava/lang/String; = "6"

.field public static final PARAM_GEOLOCATION:Ljava/lang/String; = "gl"

.field public static final PARAM_HTML_LANGUAGE:Ljava/lang/String; = "hl"

.field public static final PARAM_INPUT_METHOD:Ljava/lang/String; = "inm"

.field public static final PARAM_INPUT_METHOD_DEFAULT_VALUE:Ljava/lang/String; = "vs"

.field public static final PARAM_NO_JESR:Ljava/lang/String; = "noj"

.field public static final PARAM_NO_JESR_DEFAULT_VALUE:Ljava/lang/String; = "1"

.field public static final PARAM_QUERY:Ljava/lang/String; = "q"

.field public static final PARAM_VERSION:Ljava/lang/String; = "v"

.field public static final SANDBOX_HOST:Ljava/lang/String; = ".sandbox.google.com"

.field public static final SEARCH_AGENT:Ljava/lang/String;

.field public static final SEARCH_VERSION_NUMBER:Ljava/lang/Double;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cgiParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    const-wide v0, 0x3ff6666666666666L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_VERSION_NUMBER:Ljava/lang/Double;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlassSearch/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_VERSION_NUMBER:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "www.google.com"

    iput-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    .line 86
    const-string v0, "/search"

    iput-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    .line 90
    invoke-direct {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setStandardParameters()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "www.google.com"

    iput-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    .line 86
    const-string v0, "/search"

    iput-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    .line 94
    invoke-direct {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setStandardParameters()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setQuery(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setStandardParameters()V
    .locals 3

    .prologue
    .line 133
    const-string v1, "inm"

    const-string v2, "vs"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "client"

    const-string v2, "glass"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "noj"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "gcc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/network/SearchQueryBuilder;->SEARCH_VERSION_NUMBER:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, version:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method public addTransportParams()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "tch"

    const-string v1, "6"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public buildUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCgiParameterString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 166
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getCgiParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;
    .locals 4
    .parameter "locationHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/helper/SpeechLocationHelper;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 184
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "User-Agent"

    invoke-static {}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Lcom/google/android/speech/helper/SpeechLocationHelper;->getXGeoLocation()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, xGeoLocation:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const-string v2, "X-Geo"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    const-string v2, "Host"

    iget-object v3, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setHttpHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->cgiParameters:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/google/glass/voice/network/SearchQueryBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "UTF-8 is unsupported?  Really?"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 99
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setSandboxHost(Ljava/lang/String;)V
    .locals 2
    .parameter "hostId"

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sandbox.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setHost(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/network/SearchQueryBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getCgiParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
