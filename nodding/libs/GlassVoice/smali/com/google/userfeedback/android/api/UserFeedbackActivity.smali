.class public Lcom/google/userfeedback/android/api/UserFeedbackActivity;
.super Landroid/app/Activity;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;,
        Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;
    }
.end annotation


# instance fields
.field private mChooseAccount:Landroid/widget/Spinner;

.field private mFeedbackText:Landroid/widget/EditText;

.field private mIncludeScreenshot:Landroid/widget/CheckBox;

.field private mIncludeSystemLogs:Landroid/widget/CheckBox;

.field private mPreviewFeedback:Landroid/widget/Button;

.field private mSubmitFeedback:Landroid/widget/Button;

.field private final mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeScreenshot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeSystemLogs()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->handleClick(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    return-object v0
.end method

.method private computeResourcesAndUpdateUi(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .locals 2
    .parameter "context"
    .parameter "accountSpinner"
    .parameter "previewButton"

    .prologue
    .line 375
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    .line 377
    .local v0, updateUi:Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method private configureActivity()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 169
    move-object v0, p0

    .line 173
    .local v0, cx:Landroid/content/Context;
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v4

    if-nez v4, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 175
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finishActivity(I)V

    .line 266
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-direct {p0, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->updateUi(Landroid/app/Activity;)V

    .line 181
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_screenshot_option:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, screenshotOptionView:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .end local v2           #screenshotOptionView:Landroid/view/View;
    :goto_1
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_feedback:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;

    .line 191
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send_system_info:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeSystemLogs:Landroid/widget/CheckBox;

    .line 192
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeSystemLogs:Landroid/widget/CheckBox;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;

    invoke-direct {v5, p0, v6}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_preview:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mPreviewFeedback:Landroid/widget/Button;

    .line 195
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mPreviewFeedback:Landroid/widget/Button;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;

    invoke-direct {v5, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    move-object v3, p0

    .line 206
    .local v3, thisActivity:Landroid/app/Activity;
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mSubmitFeedback:Landroid/widget/Button;

    .line 207
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mSubmitFeedback:Landroid/widget/Button;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;

    invoke-direct {v5, p0, v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_account_spinner:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    .line 224
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 243
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_privacy_option:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, privacyView:Landroid/view/View;
    new-instance v4, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;

    invoke-direct {v4, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mPreviewFeedback:Landroid/widget/Button;

    invoke-direct {p0, p0, v4, v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->computeResourcesAndUpdateUi(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 185
    .end local v1           #privacyView:Landroid/view/View;
    .end local v3           #thisActivity:Landroid/app/Activity;
    :cond_2
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send_screenshot:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeScreenshot:Landroid/widget/CheckBox;

    .line 186
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeScreenshot:Landroid/widget/CheckBox;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;

    invoke-direct {v5, p0, v6}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1
.end method

.method private handleClick(ZZLjava/lang/String;)V
    .locals 1
    .parameter "includeScreenshot"
    .parameter "includeLogs"
    .parameter "descriptionText"

    .prologue
    .line 365
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    .line 366
    .local v0, uf:Lcom/google/userfeedback/android/api/UserFeedback;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->setUserInputParams(ZZLjava/lang/String;)V

    .line 367
    return-void
.end method

.method private setHeaderUi(ILcom/google/userfeedback/android/api/UiConfigurationOptions;)V
    .locals 4
    .parameter "textViewId"
    .parameter "config"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 349
    .local v2, view:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getHeaderBackgroundResourceId()I

    move-result v1

    .line 350
    .local v1, resId:I
    invoke-virtual {p2}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getSectionHeaderFontColor()I

    move-result v0

    .line 351
    .local v0, colorId:I
    if-eqz v2, :cond_0

    .line 352
    if-gez v1, :cond_1

    .line 353
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    :goto_0
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    :cond_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private shouldIncludeScreenshot()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeScreenshot:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method private shouldIncludeSystemLogs()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeSystemLogs:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method private updateAppIcon(Landroid/app/Activity;)V
    .locals 2
    .parameter "thisActivity"

    .prologue
    .line 323
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;

    invoke-direct {v0, p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    return-void
.end method

.method private updateUi(Landroid/app/Activity;)V
    .locals 4
    .parameter "thisActivity"

    .prologue
    .line 327
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    move-result-object v0

    .line 329
    .local v0, config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getHideTitleBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_app_header:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :goto_0
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 339
    :cond_0
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_feedback_header:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setHeaderUi(ILcom/google/userfeedback/android/api/UiConfigurationOptions;)V

    .line 340
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_privacy:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setHeaderUi(ILcom/google/userfeedback/android/api/UiConfigurationOptions;)V

    .line 341
    sget v1, Lcom/google/userfeedback/android/api/R$id;->gf_user_account:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setHeaderUi(ILcom/google/userfeedback/android/api/UiConfigurationOptions;)V

    .line 345
    :goto_1
    return-void

    .line 333
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->updateAppIcon(Landroid/app/Activity;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->updateAppIcon(Landroid/app/Activity;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 270
    packed-switch p2, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    return-void

    .line 272
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 273
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    sget v0, Lcom/google/userfeedback/android/api/R$layout;->gf_feedback_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setContentView(I)V

    .line 162
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->configureActivity()V

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 395
    invoke-static {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->flushBitmapsOnDestroy(Landroid/app/Activity;)V

    .line 396
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 388
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    .line 390
    :cond_1
    return-void
.end method
