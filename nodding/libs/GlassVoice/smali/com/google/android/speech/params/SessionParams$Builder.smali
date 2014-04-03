.class public Lcom/google/android/speech/params/SessionParams$Builder;
.super Ljava/lang/Object;
.source "SessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/SessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_MAX_NBEST:I = 0x5

.field private static final SERVICE_HANDS_FREE_CONTACTS:Ljava/lang/String; = "voicesearch"

.field private static final SERVICE_RECOGNIZER:Ljava/lang/String; = "recognizer"

.field private static final SERVICE_SOUND_SEARCH:Ljava/lang/String; = "sound-search"

.field private static final SERVICE_VOICE_ACTIONS:Ljava/lang/String; = "voicesearch-web"


# instance fields
.field private mAlternatesEnabled:Z

.field private mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

.field private mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

.field private mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

.field private mLocationOverride:Landroid/location/Location;

.field private mMaxNbest:I

.field private mMode:Lcom/google/android/speech/params/SessionParams$Mode;

.field private mNoSpeechDetectedEnabled:Z

.field private mPartialResultsEnabled:Z

.field private mProfanityFilterEnabled:Z

.field private mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

.field private mRecordedAudio:Z

.field private mService:Ljava/lang/String;

.field private mSoundSearchTtsEnabled:Z

.field private mSpokenBcp47Locale:Ljava/lang/String;

.field private mSuggestionsEnabled:Z

.field private mTriggerApplication:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 279
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mAlternatesEnabled:Z

    .line 280
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecordedAudio:Z

    .line 281
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpokenBcp47Locale:Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Grammar;->CONTACT_DIALING:Lcom/google/android/speech/embedded/Greco3Grammar;

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 285
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 287
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mNoSpeechDetectedEnabled:Z

    .line 288
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mPartialResultsEnabled:Z

    .line 289
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mProfanityFilterEnabled:Z

    .line 290
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSuggestionsEnabled:Z

    .line 291
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxNbest:I

    .line 296
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSoundSearchTtsEnabled:Z

    .line 300
    return-void
.end method

.method private createNewRequestId()Lcom/google/common/base/Supplier;
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
    .line 403
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Builder$1;

    invoke-direct {v0, p0}, Lcom/google/android/speech/params/SessionParams$Builder$1;-><init>(Lcom/google/android/speech/params/SessionParams$Builder;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    return-object v0
.end method

.method private static getService(Lcom/google/android/speech/params/SessionParams$Mode;)Ljava/lang/String;
    .locals 3
    .parameter "mode"

    .prologue
    .line 412
    sget-object v0, Lcom/google/android/speech/params/SessionParams$1;->$SwitchMap$com$google$android$speech$params$SessionParams$Mode:[I

    invoke-virtual {p0}, Lcom/google/android/speech/params/SessionParams$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    const-string v0, "recognizer"

    .line 425
    :goto_0
    return-object v0

    .line 417
    :pswitch_1
    const-string v0, "voicesearch"

    goto :goto_0

    .line 419
    :pswitch_2
    const-string v0, "voicesearch-web"

    goto :goto_0

    .line 423
    :pswitch_3
    const-string v0, "recognizer"

    goto :goto_0

    .line 425
    :pswitch_4
    const-string v0, "sound-search"

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/speech/params/SessionParams;
    .locals 21

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/speech/params/AudioInputParams$Builder;->build()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    .line 306
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-static {v1}, Lcom/google/android/speech/params/SessionParams$Builder;->getService(Lcom/google/android/speech/params/SessionParams$Mode;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    .line 309
    :cond_1
    new-instance v1, Lcom/google/android/speech/params/SessionParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAlternatesEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecordedAudio:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpokenBcp47Locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mTriggerApplication:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mNoSpeechDetectedEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mPartialResultsEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mProfanityFilterEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSuggestionsEnabled:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxNbest:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mLocationOverride:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/speech/params/SessionParams$Builder;->createNewRequestId()Lcom/google/common/base/Supplier;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSoundSearchTtsEnabled:Z

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/google/android/speech/params/SessionParams;-><init>(Lcom/google/android/speech/params/SessionParams$Mode;Lcom/google/android/speech/params/AudioInputParams;ZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;ZZZZILandroid/location/Location;Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/common/base/Supplier;Ljava/lang/String;ZLcom/google/android/speech/params/SessionParams$1;)V

    return-object v1
.end method

.method public setAlternatesEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "alternatesEnabled"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mAlternatesEnabled:Z

    .line 329
    return-object p0
.end method

.method public setAudioInputParams(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "audioInputParams"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    .line 324
    return-object p0
.end method

.method public setGreco3Grammar(Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "greco3Grammar"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 349
    return-object p0
.end method

.method public setGreco3Mode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "greco3Mode"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 354
    return-object p0
.end method

.method public setLocationOverride(Landroid/location/Location;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "locationOverride"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mLocationOverride:Landroid/location/Location;

    .line 384
    return-object p0
.end method

.method public setMaxNbest(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "maxNbest"

    .prologue
    .line 378
    iput p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxNbest:I

    .line 379
    return-object p0
.end method

.method public setMode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "mode"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 319
    return-object p0
.end method

.method public setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "noSpeechDetectedEnabled"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mNoSpeechDetectedEnabled:Z

    .line 359
    return-object p0
.end method

.method public setPartialResultsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "partialResultsEnabled"

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mPartialResultsEnabled:Z

    .line 364
    return-object p0
.end method

.method public setProfanityFilterEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "profanityFilterEnabled"

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mProfanityFilterEnabled:Z

    .line 369
    return-object p0
.end method

.method public setRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "recognitionContext"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 389
    return-object p0
.end method

.method public setRecordedAudio(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "recordedAudio"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecordedAudio:Z

    .line 334
    return-object p0
.end method

.method public setServiceOverride(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "service"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public setSoundSearchTtsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "soundSearchTtsEnabled"

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSoundSearchTtsEnabled:Z

    .line 399
    return-object p0
.end method

.method public setSpokenBcp47Locale(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "spokenBcp47Locale"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpokenBcp47Locale:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public setSuggestionsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "suggestionsEnabled"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSuggestionsEnabled:Z

    .line 374
    return-object p0
.end method

.method public setTriggerApplication(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .parameter "triggerApplication"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mTriggerApplication:Ljava/lang/String;

    .line 344
    return-object p0
.end method
