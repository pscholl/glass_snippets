.class public Lcom/google/android/maps/driveabout/e/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/k;

.field private final b:Lcom/google/android/maps/driveabout/e/af;

.field private final c:[Lcom/google/android/maps/driveabout/e/s;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/maps/driveabout/e/ap;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:F

.field private final j:I

.field private final k:Z

.field private final l:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/af;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;IFI[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/v;->a:Lcom/google/android/maps/driveabout/e/k;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/v;->b:Lcom/google/android/maps/driveabout/e/af;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/v;->c:[Lcom/google/android/maps/driveabout/e/s;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/v;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/v;->e:Lcom/google/android/maps/driveabout/e/ap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/v;->f:I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/v;->g:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/maps/driveabout/e/v;->h:I

    iput p5, p0, Lcom/google/android/maps/driveabout/e/v;->i:F

    iput p6, p0, Lcom/google/android/maps/driveabout/e/v;->j:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/v;->l:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/v;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[I)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/e/v;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[IZ)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/v;->a:Lcom/google/android/maps/driveabout/e/k;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/v;->b:Lcom/google/android/maps/driveabout/e/af;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/v;->c:[Lcom/google/android/maps/driveabout/e/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/v;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/v;->e:Lcom/google/android/maps/driveabout/e/ap;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/v;->f:I

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/v;->g:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/maps/driveabout/e/v;->h:I

    iput p8, p0, Lcom/google/android/maps/driveabout/e/v;->i:F

    iput p9, p0, Lcom/google/android/maps/driveabout/e/v;->j:I

    iput-object p10, p0, Lcom/google/android/maps/driveabout/e/v;->l:[I

    iput-boolean p11, p0, Lcom/google/android/maps/driveabout/e/v;->k:Z

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/v;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/v;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/e/v;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/e/v;
    .locals 22

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v6

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v8

    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v7, p4, v8

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v11

    new-array v9, v11, [Lcom/google/android/maps/driveabout/e/s;

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v11, :cond_2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lcom/google/android/maps/driveabout/e/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/s;

    move-result-object v2

    aput-object v2, v9, v10

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_2
    move-object v5, v9

    move/from16 v21, v8

    move-object v8, v7

    move/from16 v7, v21

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/z;->c(I)F

    move-result v10

    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    :goto_2
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v11}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v3

    :cond_3
    :goto_3
    const/4 v2, 0x0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    :cond_5
    new-array v12, v2, [I

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v13

    aput v13, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    or-int v11, v2, v3

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    invoke-static {v2, v11}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v3

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_9

    new-instance v2, Lcom/google/android/maps/driveabout/e/w;

    move-object v4, v14

    invoke-direct/range {v2 .. v12}, Lcom/google/android/maps/driveabout/e/w;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[I)V

    :goto_5
    return-object v2

    :cond_9
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_a

    new-instance v13, Lcom/google/android/maps/driveabout/e/v;

    move-object/from16 v16, v6

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lcom/google/android/maps/driveabout/e/v;-><init>(Lcom/google/android/maps/driveabout/e/af;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;IFI[I)V

    :goto_6
    move-object v2, v13

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/google/android/maps/driveabout/e/v;

    move-object v4, v14

    invoke-direct/range {v2 .. v12}, Lcom/google/android/maps/driveabout/e/v;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[I)V

    move-object v13, v2

    goto :goto_6

    :cond_b
    move-object v8, v7

    move v7, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/v;->e:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/v;->h:I

    return v0
.end method
