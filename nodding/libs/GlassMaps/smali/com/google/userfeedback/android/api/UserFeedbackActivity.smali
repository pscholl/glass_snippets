.class public Lcom/google/userfeedback/android/api/UserFeedbackActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Spinner;

.field private final g:Lcom/google/userfeedback/android/api/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finishActivity(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->g()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_screenshot_option:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v0, Lcom/google/userfeedback/android/api/g;->gf_feedback:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/EditText;

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_send_system_info:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/google/userfeedback/android/api/x;

    invoke-direct {v1, p0, v2}, Lcom/google/userfeedback/android/api/x;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_preview:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/google/userfeedback/android/api/r;

    invoke-direct {v1, p0}, Lcom/google/userfeedback/android/api/r;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_send:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/google/userfeedback/android/api/t;

    invoke-direct {v1, p0, p0}, Lcom/google/userfeedback/android/api/t;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_account_spinner:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->f:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->f:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/userfeedback/android/api/u;

    invoke-direct {v1, p0, p0}, Lcom/google/userfeedback/android/api/u;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_privacy_option:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/userfeedback/android/api/v;

    invoke-direct {v1, p0}, Lcom/google/userfeedback/android/api/v;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->f:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->e:Landroid/widget/Button;

    invoke-direct {p0, p0, v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/google/userfeedback/android/api/g;->gf_send_screenshot:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c:Landroid/widget/CheckBox;

    new-instance v1, Lcom/google/userfeedback/android/api/x;

    invoke-direct {v1, p0, v2}, Lcom/google/userfeedback/android/api/x;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1
.end method

.method private a(ILcom/google/userfeedback/android/api/l;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/userfeedback/android/api/l;->b()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/userfeedback/android/api/l;->e()I

    move-result v2

    if-eqz v0, :cond_0

    if-gez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/google/userfeedback/android/api/s;

    invoke-direct {v0, p0, p1}, Lcom/google/userfeedback/android/api/s;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .locals 2

    new-instance v0, Lcom/google/userfeedback/android/api/y;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/y;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method private static a(ZZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/userfeedback/android/api/m;->b(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b()Z

    move-result v0

    return v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->m()Lcom/google/userfeedback/android/api/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/google/userfeedback/android/api/g;->gf_app_header:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/l;->d()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/l;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget v1, Lcom/google/userfeedback/android/api/g;->gf_feedback_header:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ILcom/google/userfeedback/android/api/l;)V

    sget v1, Lcom/google/userfeedback/android/api/g;->gf_privacy:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ILcom/google/userfeedback/android/api/l;)V

    sget v1, Lcom/google/userfeedback/android/api/g;->gf_user_account:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ILcom/google/userfeedback/android/api/l;)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/m;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    return-object v0
.end method

.method static synthetic e(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->f:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/google/userfeedback/android/api/h;->gf_feedback_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/google/userfeedback/android/api/m;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->g:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    :cond_1
    return-void
.end method
