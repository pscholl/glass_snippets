.class public Lcom/google/userfeedback/android/api/PreviewActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/google/userfeedback/android/api/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/google/userfeedback/android/api/h;->gf_preview_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->setContentView(I)V

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->m()Lcom/google/userfeedback/android/api/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/l;->d()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/l;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    sget v0, Lcom/google/userfeedback/android/api/g;->gf_send_from_preview:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/google/userfeedback/android/api/a;

    invoke-direct {v1, p0, p0}, Lcom/google/userfeedback/android/api/a;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/google/userfeedback/android/api/g;->gf_back:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/google/userfeedback/android/api/b;

    invoke-direct {v1, p0}, Lcom/google/userfeedback/android/api/b;-><init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/google/userfeedback/android/api/ac;

    invoke-direct {v1, p0, v0}, Lcom/google/userfeedback/android/api/ac;-><init>(Landroid/content/Context;Lcom/google/userfeedback/android/api/ab;)V

    iput-object v1, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->c:Lcom/google/userfeedback/android/api/ac;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->c:Lcom/google/userfeedback/android/api/ac;

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    invoke-static {p0}, Lcom/google/userfeedback/android/api/m;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity;->c:Lcom/google/userfeedback/android/api/ac;

    invoke-virtual {v0, p3}, Lcom/google/userfeedback/android/api/ac;->a(I)V

    return-void
.end method
