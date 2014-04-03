.class public final Lcom/google/glass/logging/BugReportReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/glass/logging/s;->bugreport_title_manual:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v6, 0x0

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/glass/logging/BugReportReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method
