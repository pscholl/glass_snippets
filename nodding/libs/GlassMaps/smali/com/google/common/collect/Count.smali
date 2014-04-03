.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Count;

    iget v0, p1, Lcom/google/common/collect/Count;->value:I

    iget v1, p0, Lcom/google/common/collect/Count;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final getAndAdd(I)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int v1, v0, p1

    iput v1, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final getAndSet(I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final set(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
