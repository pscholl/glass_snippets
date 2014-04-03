.class final Lcom/google/glass/widget/al;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Z

.field final c:Z


# direct methods
.method constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/glass/widget/al;->a:I

    iput-boolean p2, p0, Lcom/google/glass/widget/al;->b:Z

    iput-boolean p3, p0, Lcom/google/glass/widget/al;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/glass/widget/al;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/widget/al;

    iget-boolean v2, p0, Lcom/google/glass/widget/al;->c:Z

    iget-boolean v3, p1, Lcom/google/glass/widget/al;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/glass/widget/al;->b:Z

    iget-boolean v3, p1, Lcom/google/glass/widget/al;->b:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/widget/al;->a:I

    iget v3, p1, Lcom/google/glass/widget/al;->a:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-boolean v0, p0, Lcom/google/glass/widget/al;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/widget/al;->a:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
