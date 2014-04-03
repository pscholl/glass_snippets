.class public final Lcom/google/glass/logging/AppErrorReporterActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "AppErrorReporterActivity.java"


# static fields
.field private static final ANR_CATEGORY_TAG:Ljava/lang/String; = "com.google.glass.logging.ANR_REPORT"

.field private static final AUTO_FINISH_MS:I = 0xbb8

.field private static final CRASH_CATEGORY_TAG:Ljava/lang/String; = "com.google.glass.logging.CRASH_REPORT"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method private static getCrashData(Landroid/app/ApplicationErrorReport$AnrInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 2
    .parameter "anrInfo"

    .prologue
    .line 117
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->newInstance()Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->build()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCrashData(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 2
    .parameter "crashInfo"

    .prologue
    .line 101
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->newInstance()Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->build()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/logging/AppErrorReporterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 46
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport;

    .line 47
    .local v5, report:Landroid/app/ApplicationErrorReport;
    sget-object v6, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Received error report: %d"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, v5, Landroid/app/ApplicationErrorReport;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget v6, v5, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v6, :pswitch_data_0

    .line 68
    sget-object v6, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unhandled ApplicationError type: %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, v5, Landroid/app/ApplicationErrorReport;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 51
    :pswitch_0
    new-instance v3, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    const-string v6, "com.google.glass.logging.CRASH_REPORT"

    invoke-direct {v3, p0, v12, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v3, crashSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    iget-object v6, v5, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v6}, Lcom/google/glass/logging/AppErrorReporterActivity;->getCrashData(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 54
    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {v2}, Lcom/google/userfeedback/android/api/UserFeedback;-><init>()V

    .line 55
    .local v2, crashFeedback:Lcom/google/userfeedback/android/api/UserFeedback;
    iget-object v6, v5, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v6, v6, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/google/userfeedback/android/api/UserFeedback;->silentSubmitFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V

    .line 56
    sget-object v6, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Crash stack trace:\n%s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v2           #crashFeedback:Lcom/google/userfeedback/android/api/UserFeedback;
    .end local v3           #crashSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    :pswitch_1
    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    const-string v6, "com.google.glass.logging.ANR_REPORT"

    invoke-direct {v1, p0, v12, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, anrSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    iget-object v6, v5, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-static {v6}, Lcom/google/glass/logging/AppErrorReporterActivity;->getCrashData(Landroid/app/ApplicationErrorReport$AnrInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 62
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/UserFeedback;-><init>()V

    .line 63
    .local v0, anrFeedback:Lcom/google/userfeedback/android/api/UserFeedback;
    iget-object v6, v5, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v6, v6, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/google/userfeedback/android/api/UserFeedback;->silentSubmitFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V

    .line 64
    sget-object v6, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "ANR cause: %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v5, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 77
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/glass/logging/AppErrorReporterActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/AppErrorReporterActivity$1;-><init>(Lcom/google/glass/logging/AppErrorReporterActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/google/glass/logging/R$layout;->feedback:I

    return v0
.end method
