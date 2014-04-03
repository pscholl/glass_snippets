.class public Lcom/google/userfeedback/android/api/ShowTextActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_text_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_empty_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/google/userfeedback/android/api/g;->gf_text:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_empty_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_text_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/google/userfeedback/android/api/h;->gf_show_text_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback.FIELD_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "systemLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_error_report_system_log:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    iget-object v0, v1, Lcom/google/userfeedback/android/api/ab;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "serviceDetails"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_error_report_running_service_details:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    goto :goto_0

    :cond_2
    const-string v2, "stackTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_stack_trace:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    iget-object v0, v1, Lcom/google/userfeedback/android/api/ab;->I:Lcom/google/userfeedback/android/api/aa;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/aa;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ShowTextActivity unknown EXTRA_FIELD_NAME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
