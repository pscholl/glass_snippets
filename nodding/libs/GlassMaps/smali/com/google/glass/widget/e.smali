.class final Lcom/google/glass/widget/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final d:Z


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/glass/widget/e;->b:I

    iput p3, p0, Lcom/google/glass/widget/e;->c:I

    iput-boolean p4, p0, Lcom/google/glass/widget/e;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/glass/widget/e;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/glass/widget/e;

    iget-object v1, p0, Lcom/google/glass/widget/e;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/widget/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/widget/e;->b:I

    iget v2, p1, Lcom/google/glass/widget/e;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/glass/widget/e;->c:I

    iget v2, p1, Lcom/google/glass/widget/e;->c:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/widget/e;->d:Z

    iget-boolean v2, p1, Lcom/google/glass/widget/e;->d:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/widget/e;->b:I

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/widget/e;->c:I

    xor-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/glass/widget/e;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
