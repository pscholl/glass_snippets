.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinholeParamsBuilderImpl"
.end annotation


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final context:Landroid/content/Context;

.field private cookies:Lcom/google/glass/voice/network/Cookies;

.field private locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;)V
    .locals 1
    .parameter "locationHelper"
    .parameter "cookies"
    .parameter "context"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 139
    iput-object p2, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 140
    new-instance v0, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, p3}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 141
    iput-object p3, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->context:Landroid/content/Context;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;-><init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method buildParams(Lcom/google/common/base/Supplier;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;"
        }
    .end annotation

    .prologue
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    const/4 v12, 0x2

    .line 159
    new-instance v8, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v8}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>()V

    .line 160
    .local v8, searchQueryBuilder:Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual {v8}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 162
    new-instance v7, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v7}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    .line 163
    .local v7, paramsProto:Lcom/google/speech/s3/PinholeStream$PinholeParams;
    invoke-virtual {v8}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getCgiParameters()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v10}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v6

    .line 167
    .local v6, param:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    invoke-virtual {v7, v6}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_0

    .line 171
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #param:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_0
    iget-object v9, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-virtual {v8, v9}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;

    move-result-object v3

    .line 172
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v2

    .line 177
    .local v2, header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {v7, v2}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_1

    .line 180
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_1
    iget-object v9, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->cookies:Lcom/google/glass/voice/network/Cookies;

    invoke-virtual {v8}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, cookie:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 182
    new-instance v9, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    const-string v10, "Cookie"

    invoke-virtual {v9, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v2

    .line 186
    .restart local v2       #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {v7, v2}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 189
    .end local v2           #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_2
    new-instance v9, Lcom/google/glass/util/SettingsHelper;

    iget-object v10, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 190
    iget-object v9, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const-string v10, "oauth2:https://www.googleapis.com/auth/googlenow"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, loginOauth:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 193
    new-instance v9, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v9}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    const-string v10, "Authorization"

    invoke-virtual {v9, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bearer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v2

    .line 197
    .restart local v2       #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {v7, v2}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 200
    .end local v2           #header:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .end local v5           #loginOauth:Ljava/lang/String;
    :cond_3
    return-object v7
.end method

.method public getPinholeParamsCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;

    const-string v1, "PinholeParamsBuilderTask"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;-><init>(Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;Ljava/lang/String;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method
