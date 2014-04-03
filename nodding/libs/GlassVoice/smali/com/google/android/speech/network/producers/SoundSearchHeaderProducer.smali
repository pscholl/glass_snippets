.class public Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;
.super Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;
.source "SoundSearchHeaderProducer.java"


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

.field private final mSoundSearchInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "s3AudioInfo"
    .parameter
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;",
            ">;",
            "Lcom/google/speech/s3/Audio$S3AudioInfo;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, mobileUserInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/MobileUser$MobileUserInfo;>;"
    .local p2, s3ClientInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    .local p3, s3UserInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/s3/S3$S3UserInfo;>;"
    .local p4, soundSearchInfoFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;>;"
    .local p6, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 37
    iput-object p2, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 38
    iput-object p3, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 39
    iput-object p4, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mSoundSearchInfoFuture:Ljava/util/concurrent/Future;

    .line 40
    iput-object p5, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 41
    iput-object p6, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    .line 42
    iput-object p7, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mService:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    .line 44
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
    .line 50
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 51
    .local v0, request:Lcom/google/speech/s3/S3$S3Request;
    iget-object v1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mS3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioInfoExtension(Lcom/google/speech/s3/Audio$S3AudioInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 52
    new-instance v2, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    iget-object v1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 54
    iget-object v1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mS3ClientInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ClientInfoExtension(Lcom/google/speech/s3/S3$S3ClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 55
    iget-object v1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mS3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 56
    iget-object v1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mMobileUserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setMobileUserInfoExtension(Lcom/google/speech/s3/MobileUser$MobileUserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 57
    iget-object v1, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mTimeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/SoundSearchHeaderProducer;->mSoundSearchInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setSoundSearchInfoExtension(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 59
    return-object v0
.end method
