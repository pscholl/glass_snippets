.class public final Lcom/google/userfeedback/android/api/m;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/google/userfeedback/android/api/m;

.field private static i:Z


# instance fields
.field public a:Lcom/google/userfeedback/android/api/af;

.field private b:Lcom/google/userfeedback/android/api/aj;

.field private c:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/userfeedback/android/api/ab;

.field private h:Landroid/os/AsyncTask;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/userfeedback/android/api/m;->d:Lcom/google/userfeedback/android/api/m;

    sput-boolean v0, Lcom/google/userfeedback/android/api/m;->i:Z

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/m;->j:Z

    return-void
.end method

.method private a(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 9

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_yes:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/google/userfeedback/android/api/p;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/p;-><init>(Lcom/google/userfeedback/android/api/m;ZZLjava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_no:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/userfeedback/android/api/n;

    invoke-direct {v2, p0}, Lcom/google/userfeedback/android/api/n;-><init>(Lcom/google/userfeedback/android/api/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/m;)Lcom/google/userfeedback/android/api/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->b:Lcom/google/userfeedback/android/api/aj;

    return-object v0
.end method

.method protected static a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/userfeedback/android/api/m;->a(Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/userfeedback/android/api/m;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->j()V

    new-instance v0, Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/m;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/af;-><init>(Lcom/google/userfeedback/android/api/aj;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/m;->a:Lcom/google/userfeedback/android/api/af;

    new-instance v0, Lcom/google/userfeedback/android/api/ab;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/ab;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/m;->g:Lcom/google/userfeedback/android/api/ab;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->a:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/m;->g:Lcom/google/userfeedback/android/api/ab;

    new-instance v2, Lcom/google/userfeedback/android/api/q;

    invoke-direct {v2, p0, p1}, Lcom/google/userfeedback/android/api/q;-><init>(Lcom/google/userfeedback/android/api/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/userfeedback/android/api/af;->a(Lcom/google/userfeedback/android/api/ab;Lcom/google/userfeedback/android/api/ah;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/m;->e:Z

    return-void
.end method

.method protected static b()Lcom/google/userfeedback/android/api/m;
    .locals 1

    sget-object v0, Lcom/google/userfeedback/android/api/m;->d:Lcom/google/userfeedback/android/api/m;

    return-object v0
.end method

.method private b(Lcom/google/userfeedback/android/api/aj;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/google/userfeedback/android/api/aj;->a(Lcom/google/userfeedback/android/api/aj;)Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/m;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/FeedbackConnectivityReceiver;->a(Landroid/content/Context;Z)V

    invoke-direct {p0, p2}, Lcom/google/userfeedback/android/api/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/userfeedback/android/api/m;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->g:Lcom/google/userfeedback/android/api/ab;

    iput-object p1, v0, Lcom/google/userfeedback/android/api/ab;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GFEEDBACK"

    const-string v1, "Race condition made report description to throw an NPE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/m;->f:Z

    return-void
.end method

.method protected static i()Z
    .locals 1

    sget-boolean v0, Lcom/google/userfeedback/android/api/m;->i:Z

    return v0
.end method

.method protected static j()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/userfeedback/android/api/m;->i:Z

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_should_submit_on_empty_description:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/m;->a(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/ab;->E:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_should_submit_anonymously:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/m;->a(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/google/userfeedback/android/api/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->b:Lcom/google/userfeedback/android/api/aj;

    return-object v0
.end method

.method public final a(Lcom/google/userfeedback/android/api/aj;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/m;->j:Z

    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/m;->b(Lcom/google/userfeedback/android/api/aj;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(ZZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/m;->b(ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->g:Lcom/google/userfeedback/android/api/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/ab;->b(Z)V

    new-instance v0, Lcom/google/userfeedback/android/api/o;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/o;-><init>(Lcom/google/userfeedback/android/api/m;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final b(ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/google/userfeedback/android/api/m;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/m;->a(Z)V

    invoke-direct {p0, p2}, Lcom/google/userfeedback/android/api/m;->b(Z)V

    return-void
.end method

.method protected final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/m;->e:Z

    return v0
.end method

.method protected final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/m;->f:Z

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()Lcom/google/userfeedback/android/api/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->g:Lcom/google/userfeedback/android/api/ab;

    return-object v0
.end method

.method protected final g()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/userfeedback/android/api/m;->j:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/userfeedback/android/api/m;->h:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/m;->h:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
