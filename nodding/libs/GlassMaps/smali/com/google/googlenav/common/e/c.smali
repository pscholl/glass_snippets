.class public final Lcom/google/googlenav/common/e/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Ljava/util/Hashtable;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/e/c;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/high16 v1, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    if-lez p1, :cond_0

    const/16 v0, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    iput v1, p0, Lcom/google/googlenav/common/e/c;->d:I

    iput v1, p0, Lcom/google/googlenav/common/e/c;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/e/c;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/e/c;->c:I

    return v0
.end method

.method private static a(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    :cond_0
    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    array-length v2, p0

    array-length v3, p1

    if-le v2, v3, :cond_5

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_7

    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_7

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_7

    aget-object v2, p1, v0

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/googlenav/common/e/c;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/common/e/c;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private c(I)Z
    .locals 4

    const/16 v2, 0x80

    const/4 v0, 0x0

    if-ge p1, v2, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    iget-object v1, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/googlenav/common/e/d;
    .locals 1

    new-instance v0, Lcom/google/googlenav/common/e/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/e/d;-><init>(Lcom/google/googlenav/common/e/c;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/common/e/c;->c:I

    if-gt p1, v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/google/googlenav/common/e/c;->d:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/googlenav/common/e/e;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/e/c;->b(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/googlenav/common/e/c;->d:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/google/googlenav/common/e/c;->d:I

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/e/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget v0, p0, Lcom/google/googlenav/common/e/c;->c:I

    if-le p1, v0, :cond_5

    iput p1, p0, Lcom/google/googlenav/common/e/c;->c:I

    iget v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/e/c;->e:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/googlenav/common/e/e;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/googlenav/common/e/c;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/googlenav/common/e/c;->e:I

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aput-object v1, v2, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/googlenav/common/e/e;->a(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/common/e/c;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, -0x8000

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iput v4, p0, Lcom/google/googlenav/common/e/c;->d:I

    iput v4, p0, Lcom/google/googlenav/common/e/c;->c:I

    iput v1, p0, Lcom/google/googlenav/common/e/c;->e:I

    return-void
.end method

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

    instance-of v2, p1, Lcom/google/googlenav/common/e/c;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/googlenav/common/e/c;

    invoke-direct {p0}, Lcom/google/googlenav/common/e/c;->d()I

    move-result v2

    invoke-direct {p1}, Lcom/google/googlenav/common/e/c;->d()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/googlenav/common/e/c;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    iget-object v3, p1, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lcom/google/googlenav/common/e/c;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "IntMap{lower:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", higher:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/common/e/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
