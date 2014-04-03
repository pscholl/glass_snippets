.class public Lcom/google/userfeedback/android/api/ShowStringListActivity;
.super Landroid/app/ListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback.FIELD_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v3, "runningApplications"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v2, Lcom/google/userfeedback/android/api/ab;->p:Ljava/util/List;

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_running_apps:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->setTitle(I)V

    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ShowStringListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
