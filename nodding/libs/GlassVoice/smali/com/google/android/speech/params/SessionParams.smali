.class public Lcom/google/android/speech/params/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/params/SessionParams$1;,
        Lcom/google/android/speech/params/SessionParams$Builder;,
        Lcom/google/android/speech/params/SessionParams$Mode;
    }
.end annotation


# static fields
.field private static final EMBEDDED_FALLBACK_TIMEOUT_DISABLED:I = -0x1

.field private static final TIMEOUT_NO_SPEECH_DETECTED_MSEC:I = 0x4e20


# instance fields
.field private final mAlternatesEnabled:Z

.field private final mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

.field private final mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

.field private final mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

.field private final mLocationOverride:Landroid/location/Location;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxNbest:I

.field private final mMode:Lcom/google/android/speech/params/SessionParams$Mode;

.field private final mNoSpeechDetectedEnabled:Z

.field private final mPartialResultsEnabled:Z

.field private final mProfanityFilterEnabled:Z

.field private final mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRecordedAudio:Z

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

.field private final mService:Ljava/lang/String;

.field private final mSoundSearchTtsEnabled:Z

.field private final mSpokenBcp47Locale:Ljava/lang/String;

.field private final mSuggestionsEnabled:Z

.field private final mTriggerApplication:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/speech/params/SessionParams$Mode;Lcom/google/android/speech/params/AudioInputParams;ZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;ZZZZILandroid/location/Location;Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/common/base/Supplier;Ljava/lang/String;Z)V
    .locals 1
    .parameter "mode"
    .parameter "audioInputParams"
    .parameter "alternatesEnabled"
    .parameter "recordedAudio"
    .parameter "spokenBcp47Locale"
    .parameter "triggerApplication"
    .parameter "greco3Grammar"
    .parameter "greco3Mode"
    .parameter "noSpeechDetectedEnabled"
    .parameter "partialResultsEnabled"
    .parameter "profanityFilterEnabled"
    .parameter "suggestionsEnabled"
    .parameter "maxNbest"
    .parameter "locationOverride"
    .parameter "recognitionContext"
    .parameter
    .parameter "service"
    .parameter "soundSearchTtsEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/params/SessionParams$Mode;",
            "Lcom/google/android/speech/params/AudioInputParams;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/Greco3Grammar;",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "ZZZZI",
            "Landroid/location/Location;",
            "Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p16, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 78
    iput-object p2, p0, Lcom/google/android/speech/params/SessionParams;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    .line 79
    iput-boolean p3, p0, Lcom/google/android/speech/params/SessionParams;->mAlternatesEnabled:Z

    .line 80
    iput-boolean p4, p0, Lcom/google/android/speech/params/SessionParams;->mRecordedAudio:Z

    .line 81
    iput-object p5, p0, Lcom/google/android/speech/params/SessionParams;->mSpokenBcp47Locale:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/google/android/speech/params/SessionParams;->mTriggerApplication:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 84
    iput-object p8, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 85
    iput-boolean p9, p0, Lcom/google/android/speech/params/SessionParams;->mNoSpeechDetectedEnabled:Z

    .line 86
    iput-boolean p10, p0, Lcom/google/android/speech/params/SessionParams;->mPartialResultsEnabled:Z

    .line 87
    iput-boolean p11, p0, Lcom/google/android/speech/params/SessionParams;->mProfanityFilterEnabled:Z

    .line 88
    iput-boolean p12, p0, Lcom/google/android/speech/params/SessionParams;->mSuggestionsEnabled:Z

    .line 89
    iput p13, p0, Lcom/google/android/speech/params/SessionParams;->mMaxNbest:I

    .line 90
    iput-object p14, p0, Lcom/google/android/speech/params/SessionParams;->mLocationOverride:Landroid/location/Location;

    .line 91
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 92
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    .line 93
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mService:Ljava/lang/String;

    .line 94
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSoundSearchTtsEnabled:Z

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/speech/params/SessionParams$Mode;Lcom/google/android/speech/params/AudioInputParams;ZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;ZZZZILandroid/location/Location;Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/common/base/Supplier;Ljava/lang/String;ZLcom/google/android/speech/params/SessionParams$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"
    .parameter "x14"
    .parameter "x15"
    .parameter "x16"
    .parameter "x17"
    .parameter "x18"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p18}, Lcom/google/android/speech/params/SessionParams;-><init>(Lcom/google/android/speech/params/SessionParams$Mode;Lcom/google/android/speech/params/AudioInputParams;ZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;ZZZZILandroid/location/Location;Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/common/base/Supplier;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    sget-object v0, Lcom/google/android/speech/params/SessionParams$1;->$SwitchMap$com$google$android$speech$params$SessionParams$Mode:[I

    iget-object v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_0
    const-string v0, "intent-api"

    .line 239
    :goto_0
    return-object v0

    .line 230
    :pswitch_1
    const-string v0, "service-api"

    goto :goto_0

    .line 234
    :pswitch_2
    const-string v0, "voice-search"

    goto :goto_0

    .line 236
    :pswitch_3
    const-string v0, "voice-ime"

    goto :goto_0

    .line 239
    :pswitch_4
    const-string v0, "hands-free"

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    return-object v0
.end method

.method public getEmbeddedFallbackTimeout(Lcom/google/android/speech/SpeechSettings;)I
    .locals 2
    .parameter "speechSettings"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v0, v1, :cond_0

    .line 183
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v0, v1, :cond_1

    .line 187
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEndpointerParams(Lcom/google/android/speech/SpeechSettings;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 3
    .parameter "speechSettings"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    sget-object v1, Lcom/google/android/speech/params/SessionParams$1;->$SwitchMap$com$google$android$speech$params$SessionParams$Mode:[I

    iget-object v2, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 213
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    .line 218
    .local v0, endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/speech/params/SessionParams;->mNoSpeechDetectedEnabled:Z

    if-nez v1, :cond_0

    .line 219
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 222
    :cond_0
    return-object v0

    .line 197
    .end local v0           #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    .line 199
    .restart local v0       #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 201
    .end local v0           #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_1
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getIntentApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    .line 203
    .restart local v0       #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 205
    .end local v0           #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_2
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    .line 207
    .restart local v0       #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 209
    .end local v0           #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_3
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    .line 211
    .restart local v0       #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getGreco3Grammar()Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    return-object v0
.end method

.method public getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public getLocationOverride()Landroid/location/Location;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mLocationOverride:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/speech/params/SessionParams;->mMaxNbest:I

    return v0
.end method

.method public getMergerStrategy()Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/google/android/speech/params/SessionParams$1;->$SwitchMap$com$google$android$speech$params$SessionParams$Mode:[I

    iget-object v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :pswitch_0
    sget-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->PREFER_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    :goto_0
    return-object v0

    .line 248
    :pswitch_1
    sget-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_ONLY:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    goto :goto_0

    .line 250
    :pswitch_2
    sget-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_IGNORE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    goto :goto_0

    .line 252
    :pswitch_3
    sget-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_MERGE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMode()Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    return-object v0
.end method

.method public getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestIdSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mService:Ljava/lang/String;

    return-object v0
.end method

.method public getSpokenBcp47Locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mSpokenBcp47Locale:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mTriggerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternatesEnabled()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mAlternatesEnabled:Z

    return v0
.end method

.method public isCombinedNbestEnabled()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->INTENT_API:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoSpeechDetectedEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mNoSpeechDetectedEnabled:Z

    return v0
.end method

.method public isPartialResultsEnabled()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mPartialResultsEnabled:Z

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mProfanityFilterEnabled:Z

    return v0
.end method

.method public isRecordedAudio()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mRecordedAudio:Z

    return v0
.end method

.method public isSoundSearchTtsEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSoundSearchTtsEnabled:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSuggestionsEnabled:Z

    return v0
.end method
