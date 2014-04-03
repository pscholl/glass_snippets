.class public Lcom/google/glass/logging/FeedbackActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FeedbackActivity.java"


# static fields
.field private static final REQUEST_CODE_VOICE_ANNOTATION:I = 0xa

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/logging/FeedbackActivity;->sendFeedback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method private sendFeedback(Ljava/lang/String;)V
    .locals 13
    .parameter "description"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 108
    .local v10, intent:Landroid/content/Intent;
    if-nez v10, :cond_0

    .line 109
    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No intent."

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    .line 147
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, id:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, name:Ljava/lang/String;
    const-string v0, "screenshot_file_path"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, screenshotFilePath:Ljava/lang/String;
    const-string v0, "recovery_action"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 119
    .local v9, recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;
    const-string v0, "bugreport"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 120
    .local v6, shouldBugreport:Z
    const-string v0, "additional_files"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, additionalFiles:[Ljava/lang/String;
    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "name: %s, description: %s, screenshot: %s, recoveryAction: %s, shouldBugreport: %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v11

    aput-object p1, v4, v12

    const/4 v11, 0x2

    aput-object v5, v4, v11

    const/4 v11, 0x3

    aput-object v9, v4, v11

    const/4 v11, 0x4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v7, Lcom/google/glass/logging/CompanionLogReader;

    invoke-direct {v7, p0}, Lcom/google/glass/logging/CompanionLogReader;-><init>(Landroid/content/Context;)V

    .line 125
    .local v7, companionLogReader:Lcom/google/glass/logging/CompanionLogReader;
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    new-instance v0, Lcom/google/glass/logging/FeedbackActivity$2;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/logging/FeedbackActivity$2;-><init>(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/logging/FeedbackActivity;->sendFeedback(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object v2, Lcom/google/glass/logging/FeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onCreate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allow_voice_note"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    .local v0, allowVoiceNote:Z
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_bug_large:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$string;->capturing_bugreport:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/logging/FeedbackActivity$1;

    invoke-direct {v3, p0}, Lcom/google/glass/logging/FeedbackActivity$1;-><init>(Lcom/google/glass/logging/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 75
    .local v1, builder:Lcom/google/glass/widget/MessageDialog$Builder;
    if-eqz v0, :cond_0

    .line 76
    sget v2, Lcom/google/glass/logging/R$string;->sharing_menu_tap_to_annotate:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 79
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/FeedbackActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 80
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/google/glass/logging/R$layout;->feedback:I

    return v0
.end method
