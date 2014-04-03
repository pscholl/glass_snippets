.class public final Lcom/google/glass/widget/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:Landroid/util/SparseArray;

.field private g:I

.field private h:Lcom/google/glass/widget/aa;


# direct methods
.method static synthetic a(Lcom/google/glass/widget/y;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/y;->c:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/y;->a:I

    return v0
.end method

.method public final a(Lcom/google/glass/widget/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/y;->h:Lcom/google/glass/widget/aa;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/y;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/y;->c:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/google/glass/widget/z;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/y;->f:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/glass/widget/y;->g:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/z;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/y;->e:Z

    return v0
.end method
