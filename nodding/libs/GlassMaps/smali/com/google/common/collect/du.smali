.class public Lcom/google/common/collect/du;
.super Lcom/google/common/collect/de;


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/du;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/common/collect/de;-><init>()V

    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "capacity must be >= 0 but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    iput v2, p0, Lcom/google/common/collect/du;->b:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private a(I)Lcom/google/common/collect/du;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/common/collect/du;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/jk;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/du;->b:I

    iget-object v1, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    #calls: Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->access$000(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/du;->b:I

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/du;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/du;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/du;->b(Ljava/lang/Object;)Lcom/google/common/collect/du;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/du;->b(Ljava/util/Iterator;)Lcom/google/common/collect/du;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/du;
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-static {v2, v0}, Lcom/google/common/collect/jk;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/du;->b:I

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/collect/du;->a(I)Lcom/google/common/collect/du;

    iget-object v0, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/du;->b:I

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/common/collect/du;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/du;->b:I

    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/du;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/common/collect/du;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/du;->a(I)Lcom/google/common/collect/du;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/de;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/du;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/du;->a(I)Lcom/google/common/collect/du;

    iget-object v0, p0, Lcom/google/common/collect/du;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/du;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/du;->b:I

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    return-object p0
.end method

.method public b(Ljava/util/Iterator;)Lcom/google/common/collect/du;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/de;->a(Ljava/util/Iterator;)Lcom/google/common/collect/de;

    return-object p0
.end method
