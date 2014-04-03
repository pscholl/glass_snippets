.class public Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedParams"
.end annotation


# instance fields
.field private final mBytesPerSample:I

.field private final mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

.field private final mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field private final mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

.field private final mSamplingRate:I

.field private final mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;II)V
    .locals 0
    .parameter "callbackFactory"
    .parameter "greco3EngineManager"
    .parameter "modeSelector"
    .parameter "speechLevelSource"
    .parameter "speechSettings"
    .parameter "bytesPerSample"
    .parameter "samplingRate"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    .line 72
    iput-object p2, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 73
    iput-object p3, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    .line 74
    iput-object p4, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 75
    iput-object p5, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 76
    iput p6, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mBytesPerSample:I

    .line 77
    iput p7, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSamplingRate:I

    .line 78
    return-void
.end method


# virtual methods
.method public getBytesPerSample()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mBytesPerSample:I

    return v0
.end method

.method public getCallbackFactory()Lcom/google/android/speech/embedded/Greco3CallbackFactory;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    return-object v0
.end method

.method public getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    return-object v0
.end method

.method public getModeSelector()Lcom/google/android/speech/embedded/Greco3ModeSelector;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSamplingRate:I

    return v0
.end method

.method public getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
