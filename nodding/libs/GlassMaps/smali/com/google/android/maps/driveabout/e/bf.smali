.class public final Lcom/google/android/maps/driveabout/e/bf;
.super Lcom/google/android/maps/driveabout/e/bh;


# instance fields
.field private final b:[Lcom/google/android/maps/driveabout/e/ab;

.field private final c:[Lcom/google/android/maps/driveabout/e/ab;

.field private final d:Lcom/google/android/maps/driveabout/e/l;

.field private final e:Lcom/google/android/maps/driveabout/e/bg;

.field private final f:Lcom/google/android/maps/driveabout/e/al;

.field private g:[[Lcom/google/android/maps/driveabout/e/ab;


# direct methods
.method private constructor <init>([Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/bh;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    aput-object v2, v1, v0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/e/ab;->h(Lcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/l;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/e/l;-><init>([Lcom/google/android/maps/driveabout/e/ab;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->d:Lcom/google/android/maps/driveabout/e/l;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->d:Lcom/google/android/maps/driveabout/e/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/l;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->f:Lcom/google/android/maps/driveabout/e/al;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->f:Lcom/google/android/maps/driveabout/e/al;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/bg;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->e:Lcom/google/android/maps/driveabout/e/bg;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->e:Lcom/google/android/maps/driveabout/e/bg;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/e/bg;->a:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bf;->a:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bf;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/bf;->e()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/bf;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/e/bf;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/e/bf;-><init>([Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/l;)Lcom/google/android/maps/driveabout/e/bf;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/l;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/l;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/l;->f()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/l;->g()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/e/bf;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/e/bf;-><init>([Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v1, 0x20000001

    const v2, -0x20000001

    iget v0, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/e/bf;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;I)I

    move-result v0

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v4, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v4, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    aput-object v4, v3, v6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v2, v2, p3

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3, v1, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    aput-object v3, v2, v5

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v4, v1, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    aput-object v4, v3, v6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v1, v1, p3

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    aput-object v3, v1, v5

    goto :goto_1
.end method

.method private static b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;I)I
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int v0, p2, v0

    int-to-double v0, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private e()V
    .locals 8

    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    filled-new-array {v7, v0}, [I

    move-result-object v0

    const-class v1, Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    move v5, v4

    move v0, v4

    move v2, v4

    :goto_0
    const/4 v1, 0x4

    if-ge v5, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v1, v1, v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    if-eq v1, v2, :cond_5

    if-lez v5, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    add-int/lit8 v6, v5, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6, v0}, Lcom/google/android/maps/driveabout/e/bf;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_2
    if-lez v5, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    add-int/lit8 v6, v0, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v6, v6, v5

    aput-object v6, v2, v3

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v2, v2, v0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v6, v6, v5

    aput-object v6, v2, v4

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    if-ge v0, v7, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/maps/driveabout/e/bf;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    return-void

    :cond_5
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->c:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()Lcom/google/android/maps/driveabout/e/bg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->e:Lcom/google/android/maps/driveabout/e/bg;

    return-object v0
.end method

.method public final a(I[Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bf;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/e/bf;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/bf;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bf;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->d:Lcom/google/android/maps/driveabout/e/l;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/l;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v3, v2

    move v0, v2

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/e/bf;->g:[[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-static {v4, v5, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/bf;->a()Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/e/bg;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/e/bf;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/al;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->f:Lcom/google/android/maps/driveabout/e/al;

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/am;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->d:Lcom/google/android/maps/driveabout/e/l;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bf;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/bf;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/e/bf;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bf;->b:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
