.class public Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;
.super Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;
.source "VoiceSearchHeaderProducer.java"


# instance fields
.field private final mMobileUserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinholeParamsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestIdSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field private final mS3ClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private final mS3UserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Ljava/lang/String;

.field private final mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

.field private final mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "s3AudioInfo"
    .parameter "s3RecognizerInfo"
    .parameter
    .parameter "service"
    .parameter "speechLibLogger"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;",
            "Lcom/google/speech/s3/Audio$S3AudioInfo;",
            "Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/logger/SpeechLibLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, pinholeParamsFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    .local p2, mobileUserInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/MobileUser$MobileUserInfo;>;"
    .local p3, s3ClientInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    .local p4, s3UserInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3UserInfo;>;"
    .local p7, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    .line 48
    iput-object p2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 49
    iput-object p3, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 50
    iput-object p4, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 51
    iput-object p5, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 52
    iput-object p6, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 53
    iput-object p7, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    .line 54
    iput-object p8, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mService:Ljava/lang/String;

    .line 55
    iput-object p9, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 56
    new-instance v0, Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    .line 57
    return-void
.end method


# virtual methods
.method public produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    .line 63
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 65
    .local v0, request:Lcom/google/speech/s3/S3$S3Request;
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mPinholeParamsFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setPinholeParamsExtension(Lcom/google/speech/s3/PinholeStream$PinholeParams;)Lcom/google/speech/s3/S3$S3Request;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ClientInfoExtension(Lcom/google/speech/s3/S3$S3ClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 70
    new-instance v2, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 72
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 73
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setMobileUserInfoExtension(Lcom/google/speech/s3/MobileUser$MobileUserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 74
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioInfoExtension(Lcom/google/speech/s3/Audio$S3AudioInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 75
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mS3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3RecognizerInfoExtension(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/network/producers/VoiceSearchHeaderProducer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    .line 80
    return-object v0
.end method
