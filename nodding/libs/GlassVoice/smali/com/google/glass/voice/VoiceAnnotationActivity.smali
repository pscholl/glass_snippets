.class public Lcom/google/glass/voice/VoiceAnnotationActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "VoiceAnnotationActivity.java"


# static fields
.field private static final ANIMATE_UP_DURATION_MILLIS:J = 0xdcL

.field private static final BUNDLE_MAX_SIZE_BYTES:I = 0x100000

.field static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final INTENT_MODE_RECOGNIZER_INTENT:I = 0x0

.field private static final INTENT_MODE_VOICE_ANNOTATION_HELPER:I = 0x1

.field private static final MSG_CONFIRM_ANNOTATION:I = 0x0

.field private static final PROGRESS_SLIDER_COMMIT_ANNOTATION_MS:J = 0x3e8L

.field private static final TOP_MARGIN:I = 0x28

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioOutputStream:Ljava/io/ByteArrayOutputStream;

.field private cancelTip:Lcom/google/glass/widget/TypophileTextView;

.field private final handler:Landroid/os/Handler;

.field private isRecognitionResultExpanded:Z

.field private recognitionResult:Ljava/lang/String;

.field private recordAudio:Z

.field private showAddingDialog:Z

.field private sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    .line 90
    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog:Z

    .line 100
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceAnnotationActivity$1;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceAnnotationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->confirmAnnotation()V

    return-void
.end method

.method private callingActivityHasRecordAudioPermission()Z
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, permissionStatus:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmAnnotation()V
    .locals 4

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 333
    .local v0, textToReturn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Empty annotation returned. Finishing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 350
    .end local v0           #textToReturn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 339
    .restart local v0       #textToReturn:Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog:Z

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldShowCommitSlider(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showCommitSlider(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getForwardExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getIntentMode()I
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private hasPendingIntent()Z
    .locals 2

    .prologue
    .line 439
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchPendingIntent(Ljava/lang/String;)V
    .locals 7
    .parameter "recognitionResult"

    .prologue
    const/4 v6, 0x0

    .line 413
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 414
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getForwardExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 415
    .local v2, forwardExtras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 416
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #forwardExtras:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 418
    .restart local v2       #forwardExtras:Landroid/os/Bundle;
    :cond_0
    const-string v4, "android.speech.extra.RESULTS"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 421
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 423
    .local v1, fillIn:Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p0, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Pending intent canceled, cannot forward"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private recordAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 308
    return-void
.end method

.method private resetRecording()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 315
    return-void
.end method

.method private showCancelTip()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 515
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 517
    return-void
.end method


# virtual methods
.method getCustomPromptText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "android.speech.extra.PROMPT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "prompt_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 466
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldShowPrompt(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    const-string v0, ""

    .line 476
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getCustomPromptText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, customPrompt:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getPromptText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectedCommandText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "header_msg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, customHeader:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    .end local v0           #customHeader:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #customHeader:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSelectedCommandText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSelectedCommandTextResId()I
    .locals 1

    .prologue
    .line 491
    sget v0, Lcom/google/glass/voice/R$string;->voice_menu_item_add_caption:I

    return v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 486
    sget v0, Lcom/google/glass/voice/R$string;->voice_annotation_speak_your_message:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x5

    return v0
.end method

.method onAnnotationCommitted(Ljava/lang/String;)V
    .locals 3
    .parameter "recognitionResult"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->hasPendingIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->launchPendingIntent(Ljava/lang/String;)V

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 410
    return-void

    .line 404
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 406
    .local v0, audioData:[B
    :goto_1
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V

    .line 407
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 405
    .end local v0           #audioData:[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/google/glass/voice/R$id;->header:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldHideHeader(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    sget v1, Lcom/google/glass/voice/R$id;->cancel_tip:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    .line 124
    sget v1, Lcom/google/glass/voice/R$id;->progress_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SliderView;

    iput-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->wantAudioData(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->callingActivityHasRecordAudioPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldShowAddingDialog(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog:Z

    .line 129
    return-void

    :cond_1
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .parameter "dismissAction"

    .prologue
    const/4 v3, 0x0

    .line 243
    sget-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismiss"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 245
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "t"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 248
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->detachVoiceInputCallback()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onPause()V

    .line 226
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->resetRecording()V

    .line 229
    :cond_0
    return-void
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 6
    .parameter "recognitionResult"

    .prologue
    const/4 v5, 0x0

    .line 279
    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 280
    sget-object v2, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "PROBLEM: Recognition result was already set!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 285
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 287
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showCancelTip()V

    .line 289
    invoke-static {p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 290
    .local v0, showResultDuration:J
    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 291
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudioData([BII)V

    .line 300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onUpdateRecognizedText()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xdc

    const/4 v3, 0x1

    .line 264
    iget-boolean v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getRecognizedTextLineCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 265
    iput-boolean v3, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    .line 267
    sget v2, Lcom/google/glass/voice/R$id;->streaming_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/StreamingTextView;

    .line 268
    .local v1, streamingTextView:Lcom/google/glass/voice/StreamingTextView;
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->getY()F

    move-result v2

    const/high16 v3, 0x4220

    sub-float v0, v2, v3

    .line 270
    .local v0, moveUpBy:F
    sget v2, Lcom/google/glass/voice/R$id;->header:I

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 272
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 275
    .end local v0           #moveUpBy:F
    .end local v1           #streamingTextView:Lcom/google/glass/voice/StreamingTextView;
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 455
    sget v0, Lcom/google/glass/voice/R$layout;->voice_input_view:I

    return v0
.end method

.method setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V
    .locals 5
    .parameter "intent"
    .parameter "recognitionResult"
    .parameter "audioBytes"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    const-string v0, "android.speech.extra.RESULTS"

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v0, "annotation_result"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    if-eqz p3, :cond_0

    .line 193
    array-length v0, p3

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 194
    const-string v0, "audio_data"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 196
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Audio data too large to fit in Intent; byte length: %d"

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method shouldHideHeader(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    const-string v2, "hide_header"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 174
    goto :goto_0

    .line 178
    :cond_2
    const-string v2, "header_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 179
    goto :goto_0
.end method

.method protected shouldPlayVoiceResultSound()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    return v0
.end method

.method shouldShowAddingDialog(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "hide_adding_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldShowCommitSlider(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldShowPrompt(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "hide_prompt"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public showAddingDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "textToReturn"

    .prologue
    .line 380
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/voice/R$string;->voice_annotation_adding:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$drawable;->ic_message_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$string;->voice_annotation_added:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$drawable;->ic_done_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity$3;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 393
    .local v0, dialog:Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 394
    return-void
.end method

.method public showCommitSlider(Ljava/lang/String;)V
    .locals 4
    .parameter "textToReturn"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    const-wide/16 v1, 0x3e8

    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity$2;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/Animator$AnimatorListener;)V

    .line 373
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method wantAudioData(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return v0

    :cond_0
    const-string v1, "want_audio_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
