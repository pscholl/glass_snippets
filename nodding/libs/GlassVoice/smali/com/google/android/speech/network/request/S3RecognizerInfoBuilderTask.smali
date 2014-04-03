.class public Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "S3RecognizerInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final PROFANITY_FILTER_DISABLED:I = 0x0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROFANITY_FILTER_ENABLED:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mMaxNbest:I

.field private final mNeedsAlternates:Z

.field private final mNeedsCombinedNbest:Z

.field private final mNeedsPartialResults:Z

.field private final mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/android/speech/SpeechSettings;ZZZI)V
    .locals 1
    .parameter "recognitionContext"
    .parameter "speechSettings"
    .parameter "needsPartialResults"
    .parameter "needsCombinedNbest"
    .parameter "needsAlternates"
    .parameter "maxNbest"

    .prologue
    .line 38
    const-string v0, "S3RecognizerInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 40
    iput-object p2, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 41
    iput-boolean p3, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsPartialResults:Z

    .line 42
    iput-boolean p4, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsCombinedNbest:Z

    .line 43
    iput-boolean p5, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsAlternates:Z

    .line 44
    iput p6, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mMaxNbest:I

    .line 45
    return-void
.end method

.method static getAlternateParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 2
    .parameter "configuration"

    .prologue
    .line 80
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxSpanLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxTotalSpanLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxTotalSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setUnit(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected build()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    .line 51
    .local v0, builder:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsPartialResults:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePartialResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 56
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsCombinedNbest:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableCombinedNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 57
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsCombinedNbest:Z

    if-eqz v1, :cond_1

    .line 58
    iget v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mMaxNbest:I

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setMaxNbest(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 61
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsAlternates:Z

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableAlternates(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 63
    iget-boolean v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mNeedsAlternates:Z

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->getAlternateParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->isProfanityFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->isPersonalizationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePersonalization(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 75
    return-object v0

    .line 70
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->build()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method
