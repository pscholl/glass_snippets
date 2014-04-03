.class public Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "RecognizerSessionParamsBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnableAlternates:Z

.field private final mEnablePartials:Z

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/SpeechSettings;ZZ)V
    .locals 1
    .parameter "speechSettings"
    .parameter "enablePartials"
    .parameter "enableAlternates"

    .prologue
    .line 16
    const-string v0, "RecognizerSessionParamsBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 18
    iput-boolean p2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnablePartials:Z

    .line 19
    iput-boolean p3, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnableAlternates:Z

    .line 20
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    .line 25
    .local v0, builder:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setType(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 27
    iget-object v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v2}, Lcom/google/android/speech/SpeechSettings;->isProfanityFilterEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setMaskOffensiveWords(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 29
    iget-boolean v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnablePartials:Z

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 33
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mEnableAlternates:Z

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v2}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    .line 35
    .local v1, configuration:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    invoke-virtual {v0, v3}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnableAlternates(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 36
    invoke-static {v1}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->getAlternateParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 40
    .end local v1           #configuration:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->build()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v0

    return-object v0
.end method
