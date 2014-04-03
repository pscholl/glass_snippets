.class final Lcom/google/glass/widget/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Z

.field final synthetic f:Landroid/text/Layout$Alignment;

.field final synthetic g:Lcom/google/glass/widget/DynamicSizeTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object p2, p0, Lcom/google/glass/widget/b;->a:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/google/glass/widget/b;->b:I

    iput p4, p0, Lcom/google/glass/widget/b;->c:F

    iput p5, p0, Lcom/google/glass/widget/b;->d:F

    iput-boolean p6, p0, Lcom/google/glass/widget/b;->e:Z

    iput-object p7, p0, Lcom/google/glass/widget/b;->f:Landroid/text/Layout$Alignment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Lcom/google/glass/widget/f;
    .locals 7

    invoke-virtual {p0}, Lcom/google/glass/widget/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v1, p0, Lcom/google/glass/widget/b;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/glass/widget/b;->b:I

    iget v3, p0, Lcom/google/glass/widget/b;->c:F

    iget v4, p0, Lcom/google/glass/widget/b;->d:F

    iget-boolean v5, p0, Lcom/google/glass/widget/b;->e:Z

    iget-object v6, p0, Lcom/google/glass/widget/b;->f:Landroid/text/Layout$Alignment;

    invoke-static/range {v0 .. v6}, Lcom/google/glass/widget/DynamicSizeTextView;->a(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/f;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/glass/widget/f;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-static {v0}, Lcom/google/glass/widget/DynamicSizeTextView;->a(Lcom/google/glass/widget/DynamicSizeTextView;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-static {}, Lcom/google/glass/widget/DynamicSizeTextView;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to cancel text sizing task, ignoring result."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-static {v0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->a(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/f;)V

    iget-object v0, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/DynamicSizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/g;->horizontal_scroll_deferred_load_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/widget/b;->g:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/glass/widget/b;->a([Ljava/lang/Void;)Lcom/google/glass/widget/f;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/glass/widget/f;

    invoke-direct {p0, p1}, Lcom/google/glass/widget/b;->a(Lcom/google/glass/widget/f;)V

    return-void
.end method
