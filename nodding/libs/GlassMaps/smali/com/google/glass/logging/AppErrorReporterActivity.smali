.class public final Lcom/google/glass/logging/AppErrorReporterActivity;
.super Lcom/google/glass/app/GlassActivity;


# static fields
.field private static final b:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/AppErrorReporterActivity;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/ApplicationErrorReport$AnrInfo;)Lcom/google/userfeedback/android/api/aa;
    .locals 2

    invoke-static {}, Lcom/google/userfeedback/android/api/z;->a()Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->b(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->f(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->a(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/userfeedback/android/api/z;->d(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->c(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->a(I)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->e(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/z;->b()Lcom/google/userfeedback/android/api/aa;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/userfeedback/android/api/aa;
    .locals 2

    invoke-static {}, Lcom/google/userfeedback/android/api/z;->a()Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->b(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->f(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->a(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->d(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->c(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->a(I)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/z;->e(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/z;->b()Lcom/google/userfeedback/android/api/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/logging/AppErrorReporterActivity;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    sget v0, Lcom/google/glass/logging/r;->feedback:I

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/glass/logging/AppErrorReporterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport;

    sget-object v1, Lcom/google/glass/logging/AppErrorReporterActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "Received error report: %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/google/glass/logging/AppErrorReporterActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "Unhandled ApplicationError type: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget v0, v0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/google/userfeedback/android/api/aj;

    const-string v2, "com.google.glass.logging.CRASH_REPORT"

    invoke-direct {v1, p0, v7, v2}, Lcom/google/userfeedback/android/api/aj;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v2}, Lcom/google/glass/logging/AppErrorReporterActivity;->a(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/userfeedback/android/api/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/aj;->a(Lcom/google/userfeedback/android/api/aa;)Lcom/google/userfeedback/android/api/aj;

    new-instance v2, Lcom/google/userfeedback/android/api/m;

    invoke-direct {v2}, Lcom/google/userfeedback/android/api/m;-><init>()V

    iget-object v3, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/google/userfeedback/android/api/m;->a(Lcom/google/userfeedback/android/api/aj;Ljava/lang/String;)V

    sget-object v1, Lcom/google/glass/logging/AppErrorReporterActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "Crash stack trace:\n%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/google/userfeedback/android/api/aj;

    const-string v2, "com.google.glass.logging.ANR_REPORT"

    invoke-direct {v1, p0, v7, v2}, Lcom/google/userfeedback/android/api/aj;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-static {v2}, Lcom/google/glass/logging/AppErrorReporterActivity;->a(Landroid/app/ApplicationErrorReport$AnrInfo;)Lcom/google/userfeedback/android/api/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/aj;->a(Lcom/google/userfeedback/android/api/aa;)Lcom/google/userfeedback/android/api/aj;

    new-instance v2, Lcom/google/userfeedback/android/api/m;

    invoke-direct {v2}, Lcom/google/userfeedback/android/api/m;-><init>()V

    iget-object v3, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/google/userfeedback/android/api/m;->a(Lcom/google/userfeedback/android/api/aj;Ljava/lang/String;)V

    sget-object v1, Lcom/google/glass/logging/AppErrorReporterActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "ANR cause: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/glass/logging/a;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/a;-><init>(Lcom/google/glass/logging/AppErrorReporterActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
