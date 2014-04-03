.class public Lcom/google/android/speech/params/RecognitionEngineParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;,
        Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;,
        Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;,
        Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    }
.end annotation


# instance fields
.field private final mEmbeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

.field private final mHybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

.field private final mMusicDetectorParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

.field private final mNetworkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;)V
    .locals 0
    .parameter "embeddedParams"
    .parameter "networkParams"
    .parameter "musicDetectorParams"
    .parameter "hybridParams"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mEmbeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    .line 36
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mNetworkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    .line 37
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mMusicDetectorParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    .line 38
    iput-object p4, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mHybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    .line 39
    return-void
.end method


# virtual methods
.method public getEmbeddedParams()Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mEmbeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    return-object v0
.end method

.method public getHybridParams()Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mHybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    return-object v0
.end method

.method public getMusicDetectorParams()Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mMusicDetectorParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    return-object v0
.end method

.method public getNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams;->mNetworkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    return-object v0
.end method
