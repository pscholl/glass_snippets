.class public Lcom/google/userfeedback/android/api/ShowTextActivity;
.super Landroid/app/Activity;
.source "ShowTextActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowTextActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v2, Lcom/google/userfeedback/android/api/R$layout;->gf_show_text_activity:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "feedback.FIELD_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, fieldName:Ljava/lang/String;
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v1

    .line 41
    .local v1, report:Lcom/google/userfeedback/android/api/UserFeedbackReport;
    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v2, "systemLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system_log:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    .line 48
    iget-object v2, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    const-string v2, "serviceDetails"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_running_service_details:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v2, "stackTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_stack_trace:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    .line 53
    iget-object v2, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ShowTextActivity unknown EXTRA_FIELD_NAME"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 63
    if-nez p1, :cond_0

    .line 64
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_text_view:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_empty_view:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_text:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_empty_view:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_text_view:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
