.class public Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HybridParams"
.end annotation


# instance fields
.field private final mLocalExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mMusicExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mNetworkExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/SpeechSettings;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "networkInformation"
    .parameter "settings"
    .parameter "scheduledExecutorService"
    .parameter "localExecutorService"
    .parameter "networkExecutorService"
    .parameter "musicExecutorService"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    .line 178
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mSettings:Lcom/google/android/speech/SpeechSettings;

    .line 179
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 180
    iput-object p4, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mLocalExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 181
    iput-object p5, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mNetworkExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 182
    iput-object p6, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mMusicExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 183
    return-void
.end method


# virtual methods
.method public getLocalExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mLocalExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMusicExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mMusicExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getNetworkExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mNetworkExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getNetworkInformation()Lcom/google/android/speech/utils/NetworkInformation;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->mSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
