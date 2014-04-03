.class public Lcom/google/userfeedback/android/api/ShowStringListActivity;
.super Landroid/app/ListActivity;
.source "ShowStringListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "feedback.FIELD_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, field:Ljava/lang/String;
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v3

    .line 41
    .local v3, report:Lcom/google/userfeedback/android/api/UserFeedbackReport;
    if-nez v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "runningApplications"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    iget-object v2, v3, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    .line 49
    sget v4, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_running_apps:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->setTitle(I)V

    .line 52
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 54
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
