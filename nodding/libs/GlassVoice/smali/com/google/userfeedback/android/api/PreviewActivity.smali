.class public Lcom/google/userfeedback/android/api/PreviewActivity;
.super Landroid/app/ListActivity;
.source "PreviewActivity.java"


# instance fields
.field private mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

.field private mGoBack:Landroid/widget/Button;

.field private mSubmitFeedback:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v5, Lcom/google/userfeedback/android/api/R$layout;->gf_preview_activity:I

    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/PreviewActivity;->setContentView(I)V

    .line 45
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    move-result-object v0

    .line 47
    .local v0, config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    :cond_0
    move-object v3, p0

    .line 52
    .local v3, thisActivity:Landroid/app/Activity;
    sget v5, Lcom/google/userfeedback/android/api/R$id;->gf_send_from_preview:I

    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mSubmitFeedback:Landroid/widget/Button;

    .line 53
    iget-object v5, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mSubmitFeedback:Landroid/widget/Button;

    new-instance v6, Lcom/google/userfeedback/android/api/PreviewActivity$1;

    invoke-direct {v6, p0, v3}, Lcom/google/userfeedback/android/api/PreviewActivity$1;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v5, Lcom/google/userfeedback/android/api/R$id;->gf_back:I

    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mGoBack:Landroid/widget/Button;

    .line 73
    iget-object v5, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mGoBack:Landroid/widget/Button;

    new-instance v6, Lcom/google/userfeedback/android/api/PreviewActivity$2;

    invoke-direct {v6, p0}, Lcom/google/userfeedback/android/api/PreviewActivity$2;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v4

    .line 81
    .local v4, uf:Lcom/google/userfeedback/android/api/UserFeedback;
    if-nez v4, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v2

    .line 86
    .local v2, report:Lcom/google/userfeedback/android/api/UserFeedbackReport;
    if-nez v2, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    goto :goto_0

    .line 91
    :cond_2
    :try_start_0
    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-direct {v5, p0, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;-><init>(Landroid/content/Context;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    iput-object v5, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    .line 92
    iget-object v5, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/PreviewActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v5, "GFEEDBACK"

    const-string v6, "failed to read in report fields"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 107
    invoke-static {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->flushBitmapsOnDestroy(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 101
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->mAdapter:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-virtual {v0, p3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->onListItemClick(I)V

    .line 102
    return-void
.end method
