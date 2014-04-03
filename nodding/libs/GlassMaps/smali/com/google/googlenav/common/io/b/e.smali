.class final Lcom/google/googlenav/common/io/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/common/io/b/e;->a:I

    iput-object p2, p0, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/b/e;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/io/b/e;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/b/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    return-object v0
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
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/googlenav/common/io/b/e;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/googlenav/common/io/b/e;

    iget v2, p0, Lcom/google/googlenav/common/io/b/e;->a:I

    iget v3, p1, Lcom/google/googlenav/common/io/b/e;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/io/b/e;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/common/io/b/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/b/e;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
