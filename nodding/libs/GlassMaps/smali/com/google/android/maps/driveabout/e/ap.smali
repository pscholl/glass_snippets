.class public final Lcom/google/android/maps/driveabout/e/ap;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[F

.field private static c:Lcom/google/android/maps/driveabout/e/ap;


# instance fields
.field private final d:I

.field private final e:[I

.field private final f:[I

.field private final g:[F

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:[Lcom/google/android/maps/driveabout/e/ao;

.field private final l:Lcom/google/android/maps/driveabout/e/at;

.field private final m:Lcom/google/android/maps/driveabout/e/as;

.field private final n:Lcom/google/android/maps/driveabout/e/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/maps/driveabout/e/ap;->a:[I

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/maps/driveabout/e/ap;->b:[F

    new-instance v0, Lcom/google/android/maps/driveabout/e/ap;

    sget-object v2, Lcom/google/android/maps/driveabout/e/ap;->a:[I

    sget-object v3, Lcom/google/android/maps/driveabout/e/ap;->a:[I

    sget-object v4, Lcom/google/android/maps/driveabout/e/ap;->b:[F

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/ap;-><init>(I[I[I[FII)V

    sput-object v0, Lcom/google/android/maps/driveabout/e/ap;->c:Lcom/google/android/maps/driveabout/e/ap;

    return-void
.end method

.method private constructor <init>(II[I[Lcom/google/android/maps/driveabout/e/ao;Lcom/google/android/maps/driveabout/e/at;Lcom/google/android/maps/driveabout/e/as;Lcom/google/android/maps/driveabout/e/ao;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ap;->d:I

    iput p2, p0, Lcom/google/android/maps/driveabout/e/ap;->j:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ap;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ap;->i:I

    return-void
.end method

.method private constructor <init>(I[I[I[FII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ap;->d:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    iput p5, p0, Lcom/google/android/maps/driveabout/e/ap;->h:I

    iput p6, p0, Lcom/google/android/maps/driveabout/e/ap;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ap;->j:I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/e/ap;->c:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public static a(ILjava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/ap;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ge p2, v2, :cond_5

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    if-lez v3, :cond_0

    new-array v2, v3, [I

    :goto_0
    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/maps/driveabout/e/ap;->a:[I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    if-lez v0, :cond_2

    new-array v3, v0, [I

    :goto_2
    if-lez v0, :cond_3

    new-array v4, v0, [F

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    aput v5, v3, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/e/z;->a(I)F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    sget-object v3, Lcom/google/android/maps/driveabout/e/ap;->a:[I

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/google/android/maps/driveabout/e/ap;->b:[F

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    new-instance v0, Lcom/google/android/maps/driveabout/e/ap;

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/ap;-><init>(I[I[I[FII)V

    :goto_4
    return-object v0

    :cond_5
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ap;->c(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v3, v5, [I

    move v4, v1

    :goto_5
    if-ge v4, v5, :cond_7

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move-object v3, v0

    :cond_7
    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ap;->d(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v4, v5, [Lcom/google/android/maps/driveabout/e/ao;

    :goto_6
    if-ge v1, v5, :cond_9

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/e/ao;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/ao;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move-object v4, v0

    :cond_9
    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ap;->e(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/e/at;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/at;

    move-result-object v5

    :goto_7
    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ap;->f(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/e/as;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/as;

    move-result-object v6

    :goto_8
    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/e/ao;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/ao;

    move-result-object v7

    :goto_9
    new-instance v0, Lcom/google/android/maps/driveabout/e/ap;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/ap;-><init>(II[I[Lcom/google/android/maps/driveabout/e/ao;Lcom/google/android/maps/driveabout/e/at;Lcom/google/android/maps/driveabout/e/as;Lcom/google/android/maps/driveabout/e/ao;)V

    goto :goto_4

    :cond_a
    move-object v7, v0

    goto :goto_9

    :cond_b
    move-object v6, v0

    goto :goto_8

    :cond_c
    move-object v5, v0

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p1, v2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ap;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static g(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ao;->a()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/at;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    return-object v0
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
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/e/ap;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ao;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->j:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ap;->j:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->d:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ap;->d:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/as;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->h:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ap;->h:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->i:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ap;->i:I

    if-eq v2, v3, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/at;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ao;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/as;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/at;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Style{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fillColors"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->e:[I

    invoke-static {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/ap;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "strokeColors"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->f:[I

    invoke-static {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/ap;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    const-string v0, ", strokeWidths="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", components="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ap;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", strokes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->l:Lcom/google/android/maps/driveabout/e/at;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textBoxStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->m:Lcom/google/android/maps/driveabout/e/as;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", arrowStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ap;->n:Lcom/google/android/maps/driveabout/e/ao;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ap;->k:[Lcom/google/android/maps/driveabout/e/ao;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
