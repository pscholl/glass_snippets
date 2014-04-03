.class final Lcom/google/common/collect/CartesianList;
.super Ljava/util/AbstractList;
.source "CartesianList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient axesSizeProduct:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    .local p1, axes:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/util/List<TE;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    .line 54
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 55
    .local v0, axesSizeProduct:[I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    aput v4, v0, v3

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 58
    add-int/lit8 v3, v2, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 60
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cartesian product too large; must have size at most Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    .end local v1           #e:Ljava/lang/ArithmeticException;
    .restart local v2       #i:I
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CartesianList;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CartesianList;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CartesianList;->getAxisIndexForProductIndex(II)I

    move-result v0

    return v0
.end method

.method static create(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+TE;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, lists:Ljava/util/List;,"Ljava/util/List<+Ljava/util/List<+TE;>;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 42
    .local v0, axesBuilder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/List<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 43
    .local v3, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 44
    .local v1, copy:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 49
    .end local v1           #copy:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    :goto_1
    return-object v4

    .line 47
    .restart local v1       #copy:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 49
    .end local v1           #copy:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    :cond_1
    new-instance v4, Lcom/google/common/collect/CartesianList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/collect/CartesianList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_1
.end method

.method private getAxisIndexForProductIndex(II)I
    .locals 2
    .parameter "index"
    .parameter "axis"

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    div-int v1, p1, v0

    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    const/4 v4, 0x0

    .line 100
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v4

    .line 114
    :goto_0
    return v3

    :cond_0
    move-object v2, p1

    .line 103
    check-cast v2, Ljava/util/List;

    .line 104
    .local v2, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-eq v3, v5, :cond_1

    move v3, v4

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 108
    .local v1, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 110
    .local v0, index:I
    iget-object v3, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 111
    goto :goto_0

    .line 114
    .end local v0           #index:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public get(I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CartesianList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 74
    new-instance v0, Lcom/google/common/collect/CartesianList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CartesianList$1;-><init>(Lcom/google/common/collect/CartesianList;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CartesianList;->get(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 10
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    const/4 v7, -0x1

    .line 119
    instance-of v8, p1, Ljava/util/List;

    if-nez v8, :cond_1

    move v2, v7

    .line 136
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v4, p1

    .line 122
    check-cast v4, Ljava/util/List;

    .line 123
    .local v4, l:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v2, v7

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 127
    .local v6, lIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 128
    .local v2, i:I
    iget-object v8, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    .local v0, axis:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 130
    .local v5, lElement:Ljava/lang/Object;
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 131
    .local v1, axisIndex:I
    if-ne v1, v7, :cond_3

    move v2, v7

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v8, v2

    add-int v2, v8, v1

    .line 135
    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 10
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    const/4 v7, -0x1

    .line 141
    instance-of v8, p1, Ljava/util/List;

    if-nez v8, :cond_1

    move v2, v7

    .line 158
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v4, p1

    .line 144
    check-cast v4, Ljava/util/List;

    .line 145
    .local v4, l:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v2, v7

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 149
    .local v6, lIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 150
    .local v2, i:I
    iget-object v8, p0, Lcom/google/common/collect/CartesianList;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    .local v0, axis:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 152
    .local v5, lElement:Ljava/lang/Object;
    invoke-interface {v0, v5}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 153
    .local v1, axisIndex:I
    if-ne v1, v7, :cond_3

    move v2, v7

    .line 154
    goto :goto_0

    .line 156
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v8, v2

    add-int v2, v8, v1

    .line 157
    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CartesianList;->axesSizeProduct:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
