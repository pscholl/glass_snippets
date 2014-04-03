.class public Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkParams"
.end annotation


# instance fields
.field private final mFallbackConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mNetworkExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mNetworkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private final mPrimaryConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

.field private final mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V
    .locals 0
    .parameter "primaryConnectionFactory"
    .end parameter
    .parameter "fallbackConnectionFactory"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "retryPolicy"
    .end parameter
    .parameter "networkExecutorService"
    .end parameter
    .parameter "networkRequestProducerParams"
    .end parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mPrimaryConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 122
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mFallbackConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 123
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    .line 124
    iput-object p4, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mNetworkExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 125
    iput-object p5, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mNetworkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 126
    return-void
.end method


# virtual methods
.method public getFallbackConnectionFactory()Lcom/google/android/speech/network/S3ConnectionFactory;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mFallbackConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    return-object v0
.end method

.method public getNetworkExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mNetworkExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mNetworkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    return-object v0
.end method

.method public getPrimaryConnectionFactory()Lcom/google/android/speech/network/S3ConnectionFactory;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mPrimaryConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/google/android/speech/engine/RetryPolicy;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    return-object v0
.end method
