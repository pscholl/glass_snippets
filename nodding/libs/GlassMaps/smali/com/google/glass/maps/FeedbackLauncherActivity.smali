.class public Lcom/google/glass/maps/FeedbackLauncherActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/FeedbackLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/maps/FeedbackLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "logfile"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v1, "Glass Maps Error Report"

    :cond_0
    if-nez v0, :cond_1

    const/4 v6, 0x0

    :goto_0
    sget-object v2, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/FeedbackLauncherActivity;->finish()V

    return-void

    :cond_1
    new-array v6, v4, [Ljava/lang/String;

    aput-object v0, v6, v3

    goto :goto_0
.end method
