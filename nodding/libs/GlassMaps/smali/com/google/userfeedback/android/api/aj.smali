.class public final Lcom/google/userfeedback/android/api/aj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;

.field private f:Ljava/util/List;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/google/userfeedback/android/api/aa;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/userfeedback/android/api/l;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/userfeedback/android/api/aj;->a:Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :goto_0
    iput-object p3, p0, Lcom/google/userfeedback/android/api/aj;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/userfeedback/android/api/aj;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/aj;->f:Ljava/util/List;

    iput-boolean p6, p0, Lcom/google/userfeedback/android/api/aj;->g:Z

    iput-object v2, p0, Lcom/google/userfeedback/android/api/aj;->e:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/aj;->i:Z

    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/aj;->j:Z

    iput-object v2, p0, Lcom/google/userfeedback/android/api/aj;->k:Lcom/google/userfeedback/android/api/aa;

    iput-object p5, p0, Lcom/google/userfeedback/android/api/aj;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/userfeedback/android/api/aj;->m:Lcom/google/userfeedback/android/api/l;

    iput-object v2, p0, Lcom/google/userfeedback/android/api/aj;->n:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/aj;->o:Z

    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/aj;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected static final a(Lcom/google/userfeedback/android/api/aj;)Lcom/google/userfeedback/android/api/aj;
    .locals 7

    new-instance v0, Lcom/google/userfeedback/android/api/aj;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/aj;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/google/userfeedback/android/api/aj;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/userfeedback/android/api/aj;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->g()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/aj;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->k()Lcom/google/userfeedback/android/api/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/aj;->a(Lcom/google/userfeedback/android/api/aa;)Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->m()Lcom/google/userfeedback/android/api/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/aj;->a(Lcom/google/userfeedback/android/api/l;)Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/aj;->o()Lcom/google/userfeedback/android/api/aj;

    :cond_0
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/aj;->p()Lcom/google/userfeedback/android/api/aj;

    :cond_1
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/aj;->b(Ljava/lang/String;)Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->k()Lcom/google/userfeedback/android/api/aa;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/userfeedback/android/api/aa;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->k()Lcom/google/userfeedback/android/api/aa;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/userfeedback/android/api/aa;-><init>(Lcom/google/userfeedback/android/api/aa;)V

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/aj;->a(Lcom/google/userfeedback/android/api/aa;)Lcom/google/userfeedback/android/api/aj;

    :cond_2
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/aj;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/userfeedback/android/api/c;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/c;->b()[B

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/userfeedback/android/api/aj;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/aj;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private a(Lcom/google/userfeedback/android/api/l;)Lcom/google/userfeedback/android/api/aj;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/aj;->m:Lcom/google/userfeedback/android/api/l;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/aj;
    .locals 2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->f:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/userfeedback/android/api/c;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Z)Lcom/google/userfeedback/android/api/aj;
    .locals 0

    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/aj;->g:Z

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/aj;->a(Z)Lcom/google/userfeedback/android/api/aj;

    iput-object p1, p0, Lcom/google/userfeedback/android/api/aj;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/aj;->h:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/google/userfeedback/android/api/aj;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/aj;->n:Ljava/lang/String;

    return-object p0
.end method

.method private o()Lcom/google/userfeedback/android/api/aj;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/aj;->i:Z

    return-object p0
.end method

.method private p()Lcom/google/userfeedback/android/api/aj;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/aj;->j:Z

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/userfeedback/android/api/aa;)Lcom/google/userfeedback/android/api/aj;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/aj;->k:Lcom/google/userfeedback/android/api/aa;

    return-object p0
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/aj;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/aj;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->e:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/aj;->b:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/userfeedback/android/api/aj;->o:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->d:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/aj;->g:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->h:Ljava/lang/String;

    return-object v0
.end method

.method final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/aj;->j:Z

    return v0
.end method

.method final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/aj;->i:Z

    return v0
.end method

.method public final k()Lcom/google/userfeedback/android/api/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->k:Lcom/google/userfeedback/android/api/aa;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/google/userfeedback/android/api/l;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->m:Lcom/google/userfeedback/android/api/l;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/aj;->n:Ljava/lang/String;

    return-object v0
.end method
