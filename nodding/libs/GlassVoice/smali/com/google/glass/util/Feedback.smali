.class public Lcom/google/glass/util/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/Feedback$1;,
        Lcom/google/glass/util/Feedback$RecoveryAction;
    }
.end annotation


# static fields
.field private static final ACTIVITY_NAME:Ljava/lang/String; = "com.google.glass.logging.FeedbackActivity"

.field public static final EXTRA_ADDITIONAL_FILES:Ljava/lang/String; = "additional_files"

.field public static final EXTRA_ALLOW_VOICE_NOTE:Ljava/lang/String; = "allow_voice_note"

.field public static final EXTRA_BUGREPORT:Ljava/lang/String; = "bugreport"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_RECOVERY_ACTION:Ljava/lang/String; = "recovery_action"

.field public static final EXTRA_SCREENSHOT_FILE_PATH:Ljava/lang/String; = "screenshot_file_path"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.glass.logging"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Feedback;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static createFeedbackIntent(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "id"
    .parameter "name"
    .parameter "recoveryAction"
    .parameter "shouldBugreport"
    .parameter "shouldAllowVoiceNote"
    .parameter "screenshotFilePath"
    .parameter "additionalFiles"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.FeedbackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "recovery_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    const-string v1, "bugreport"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string v1, "allow_voice_note"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v1, "screenshot_file_path"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "additional_files"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    return-object v0
.end method

.method public static createNewBugId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleRecoveryAction(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V
    .locals 6
    .parameter "context"
    .parameter "recoveryAction"

    .prologue
    const/4 v5, 0x0

    .line 58
    if-nez p1, :cond_1

    .line 59
    sget-object v2, Lcom/google/glass/util/Feedback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "RecoveryAction was null, taking no action."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 63
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    .line 64
    .local v0, buildType:Lcom/google/glass/build/BuildHelper$Type;
    iget-object v2, p1, Lcom/google/glass/util/Feedback$RecoveryAction;->buildTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    sget-object v2, Lcom/google/glass/util/Feedback$1;->$SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I

    invoke-virtual {p1}, Lcom/google/glass/util/Feedback$RecoveryAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 82
    :goto_1
    if-eqz v1, :cond_0

    .line 83
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenShutdown;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    goto :goto_1

    .line 70
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 77
    :cond_2
    sget-object v2, Lcom/google/glass/util/Feedback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "recoveryAction %s overridden, does not apply to build type %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "recoveryAction"
    .parameter "shouldBugreport"
    .parameter "shouldScreenshot"
    .parameter "shouldAllowVoiceNote"
    .parameter "additionalFiles"

    .prologue
    .line 101
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/google/glass/util/Feedback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "This is a user build, not showing feedback, handling %s triggered by %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {p0, p2}, Lcom/google/glass/util/Feedback;->handleRecoveryAction(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 110
    invoke-static {}, Lcom/google/glass/util/Feedback;->createNewBugId()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, bugId:Ljava/lang/String;
    if-eqz p4, :cond_1

    invoke-static {p0, v0}, Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, screenshotFilePath:Ljava/lang/String;
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v6, p6

    .line 117
    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->createFeedbackIntent(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v5           #screenshotFilePath:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
