.class public final Lcom/google/android/maps/driveabout/e/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# static fields
.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/k;

.field private final b:Lcom/google/android/maps/driveabout/e/af;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[Lcom/google/android/maps/driveabout/e/s;

.field private final f:Lcom/google/android/maps/driveabout/e/ap;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/e/an;->m:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/maps/driveabout/e/an;->m:[Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/e/an;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/e/af;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;III[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/an;->a:Lcom/google/android/maps/driveabout/e/k;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/an;->b:Lcom/google/android/maps/driveabout/e/af;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/an;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/an;->d:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/an;->f:Lcom/google/android/maps/driveabout/e/ap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/an;->g:I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/an;->h:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/an;->i:I

    iput p6, p0, Lcom/google/android/maps/driveabout/e/an;->j:I

    iput p7, p0, Lcom/google/android/maps/driveabout/e/an;->k:I

    iput-object p8, p0, Lcom/google/android/maps/driveabout/e/an;->l:[I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Ljava/lang/String;[Ljava/lang/String;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/an;->a:Lcom/google/android/maps/driveabout/e/k;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/an;->b:Lcom/google/android/maps/driveabout/e/af;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/an;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/an;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/an;->f:Lcom/google/android/maps/driveabout/e/ap;

    iput p7, p0, Lcom/google/android/maps/driveabout/e/an;->g:I

    iput-object p8, p0, Lcom/google/android/maps/driveabout/e/an;->h:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/maps/driveabout/e/an;->i:I

    iput p10, p0, Lcom/google/android/maps/driveabout/e/an;->j:I

    iput p11, p0, Lcom/google/android/maps/driveabout/e/an;->k:I

    iput-object p12, p0, Lcom/google/android/maps/driveabout/e/an;->l:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/an;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v10

    sget-object v11, Lcom/google/android/maps/driveabout/e/an;->m:[Ljava/lang/String;

    sget-object v12, Lcom/google/android/maps/driveabout/e/an;->n:[Ljava/lang/String;

    const/4 v2, 0x7

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    if-nez v4, :cond_1

    sget-object v11, Lcom/google/android/maps/driveabout/e/an;->m:[Ljava/lang/String;

    :goto_0
    if-nez v4, :cond_2

    sget-object v2, Lcom/google/android/maps/driveabout/e/an;->n:[Ljava/lang/String;

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-array v11, v4, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v12, v2

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v6

    const/4 v15, -0x1

    const/4 v7, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v15

    move-object/from16 v0, p4

    invoke-static {v15, v0}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v7, p4, v15

    :cond_5
    const/4 v13, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v9

    new-array v13, v9, [Lcom/google/android/maps/driveabout/e/s;

    const/4 v2, 0x0

    move v8, v2

    :goto_3
    if-ge v8, v9, :cond_6

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lcom/google/android/maps/driveabout/e/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/s;

    move-result-object v2

    aput-object v2, v13, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v17

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v18

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v19

    const/4 v2, 0x0

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v2

    :cond_7
    :goto_4
    ushr-int/lit8 v19, v19, 0x2

    move-object v9, v2

    :goto_5
    const/4 v2, 0x0

    const/16 v3, 0x8

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    :cond_9
    new-array v0, v2, [I

    move-object/from16 v20, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v20, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x2

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v2

    goto :goto_4

    :cond_b
    new-instance v8, Lcom/google/android/maps/driveabout/e/an;

    move-object v14, v6

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v20}, Lcom/google/android/maps/driveabout/e/an;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Ljava/lang/String;[Ljava/lang/String;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;III[I)V

    return-object v8

    :cond_c
    move-object v9, v2

    goto :goto_5
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/af;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->b:Lcom/google/android/maps/driveabout/e/af;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/an;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/s;->b()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/s;->a(I)Lcom/google/android/maps/driveabout/e/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/t;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->f:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/e/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/an;->j:I

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/an;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/an;->e:[Lcom/google/android/maps/driveabout/e/s;

    array-length v0, v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/an;->i:I

    return v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/an;->k:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/an;->k:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/an;->k:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/an;->k:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method
