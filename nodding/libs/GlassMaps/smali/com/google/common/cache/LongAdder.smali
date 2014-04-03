.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;

# interfaces
.implements Lcom/google/common/cache/av;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public final add(J)V
    .locals 7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    if-nez v2, :cond_0

    iget-wide v3, p0, Lcom/google/common/cache/LongAdder;->base:J

    add-long v5, v3, p1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/common/cache/LongAdder;->threadHashCode:Lcom/google/common/cache/be;

    invoke-virtual {v0}, Lcom/google/common/cache/be;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/bd;

    iget v3, v0, Lcom/google/common/cache/bd;->b:I

    if-eqz v2, :cond_1

    array-length v4, v2

    if-lt v4, v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lcom/google/common/cache/bb;->a:J

    add-long v5, v3, p1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/common/cache/bb;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/LongAdder;->retryUpdate(JLcom/google/common/cache/bd;Z)V

    :cond_2
    return-void
.end method

.method public final decrement()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public final doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 2

    add-long v0, p1, p3

    return-wide v0
.end method

.method public final increment()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public final intValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    return-void
.end method

.method public final sum()J
    .locals 7

    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    iget-object v3, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    iget-wide v5, v5, Lcom/google/common/cache/bb;->a:J

    add-long/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final sumThenReset()J
    .locals 10

    const-wide/16 v8, 0x0

    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    iget-object v3, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    iput-wide v8, p0, Lcom/google/common/cache/LongAdder;->base:J

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    iget-wide v6, v5, Lcom/google/common/cache/bb;->a:J

    add-long/2addr v0, v6

    iput-wide v8, v5, Lcom/google/common/cache/bb;->a:J

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
