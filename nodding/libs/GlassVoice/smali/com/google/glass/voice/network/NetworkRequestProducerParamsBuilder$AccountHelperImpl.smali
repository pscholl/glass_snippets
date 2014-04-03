.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/speech/helper/AuthTokenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountHelperImpl"
.end annotation


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, p1}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 103
    return-void
.end method


# virtual methods
.method public blockingGetAuthTokens(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 7
    .parameter "timeout"
    .parameter "timeUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, authTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const-string v3, "oauth2:https://www.googleapis.com/auth/speech/personalization"

    invoke-virtual {v2, v3, v6}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_0
    return-object v1

    .line 118
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "No auth token found for type %s, not including in speech request"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "oauth2:https://www.googleapis.com/auth/speech/personalization"

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "https://www.googleapis.com/auth/speech/personalization"

    return-object v0
.end method

.method public invalidateAuthTokens()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const-string v1, "oauth2:https://www.googleapis.com/auth/speech/personalization"

    invoke-virtual {v0, v1}, Lcom/google/glass/auth/AuthUtils;->invalidateAuthToken(Ljava/lang/String;)V

    .line 108
    return-void
.end method
