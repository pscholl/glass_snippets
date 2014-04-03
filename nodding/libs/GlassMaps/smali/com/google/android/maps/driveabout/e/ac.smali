.class public final Lcom/google/android/maps/driveabout/e/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/av;

.field private final b:Lcom/google/android/maps/driveabout/e/ab;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/maps/driveabout/e/k;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/maps/driveabout/e/ap;

.field private final j:I

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:F

.field private p:I

.field private q:F

.field private r:F

.field private final s:[Lcom/google/android/maps/driveabout/e/a;

.field private final t:Lcom/google/android/maps/driveabout/e/s;

.field private final u:Lcom/google/android/maps/driveabout/e/s;

.field private final v:[Lcom/google/android/maps/driveabout/e/c;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/k;[Lcom/google/android/maps/driveabout/e/a;Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/s;[Lcom/google/android/maps/driveabout/e/c;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->p:I

    const/high16 v1, -0x4080

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->q:F

    const/high16 v1, -0x4080

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->r:F

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/ac;->g:Lcom/google/android/maps/driveabout/e/k;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ac;->s:[Lcom/google/android/maps/driveabout/e/a;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/ac;->t:Lcom/google/android/maps/driveabout/e/s;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/ac;->u:Lcom/google/android/maps/driveabout/e/s;

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/ac;->v:[Lcom/google/android/maps/driveabout/e/c;

    iput-object p8, p0, Lcom/google/android/maps/driveabout/e/ac;->e:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/maps/driveabout/e/ac;->i:Lcom/google/android/maps/driveabout/e/ap;

    iput p10, p0, Lcom/google/android/maps/driveabout/e/ac;->w:I

    iput-object p11, p0, Lcom/google/android/maps/driveabout/e/ac;->x:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/maps/driveabout/e/ac;->j:I

    iput p13, p0, Lcom/google/android/maps/driveabout/e/ac;->l:I

    const/4 v1, -0x1

    move/from16 v0, p14

    if-ne v0, v1, :cond_0

    const/16 p14, 0x1e

    :cond_0
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->m:I

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->n:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->y:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->c:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->k:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ac;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/av;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ac;->b:Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ac;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->o:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;II[I)V
    .locals 4

    const/high16 v1, -0x4080

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->p:I

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->q:F

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->r:F

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/av;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ac;->b:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/ac;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/ac;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/ac;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/ac;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/maps/driveabout/e/ac;->i:Lcom/google/android/maps/driveabout/e/ap;

    iput p9, p0, Lcom/google/android/maps/driveabout/e/ac;->j:I

    iput p10, p0, Lcom/google/android/maps/driveabout/e/ac;->n:I

    iput-object p11, p0, Lcom/google/android/maps/driveabout/e/ac;->k:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->p:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->n:I

    ushr-int/lit8 v0, v0, 0x1e

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    shl-int v0, v2, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->o:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ac;->n:I

    ushr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->l:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->n:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->m:I

    :goto_1
    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->s:[Lcom/google/android/maps/driveabout/e/a;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->t:Lcom/google/android/maps/driveabout/e/s;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->u:Lcom/google/android/maps/driveabout/e/s;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->v:[Lcom/google/android/maps/driveabout/e/c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->w:I

    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->x:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->y:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/e/ac;->g:Lcom/google/android/maps/driveabout/e/k;

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/maps/driveabout/e/ac;->l:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->m:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/ac;
    .locals 28

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v12

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    const-string v10, ""

    const/4 v3, 0x0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    :cond_0
    new-array v14, v3, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v15

    aput v15, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/maps/driveabout/e/ac;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v14}, Lcom/google/android/maps/driveabout/e/ac;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;II[I)V

    :goto_1
    return-object v3

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v13, v4, [Lcom/google/android/maps/driveabout/e/a;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/a;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;I)Lcom/google/android/maps/driveabout/e/a;

    move-result-object v5

    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/a;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v19

    const/4 v8, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v8, p4, v19

    :cond_4
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lcom/google/android/maps/driveabout/e/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/s;

    move-result-object v14

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lcom/google/android/maps/driveabout/e/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/s;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v0, v4, [Lcom/google/android/maps/driveabout/e/c;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    invoke-static/range {p0 .. p1}, Lcom/google/android/maps/driveabout/e/c;->b(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/c;

    move-result-object v5

    aput-object v5, v16, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v21

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v22

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v23

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v24

    const/4 v12, 0x0

    const/4 v3, 0x1

    move/from16 v0, v24

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v12

    :cond_6
    :goto_4
    const/16 v17, 0x0

    invoke-static/range {v24 .. v24}, Lcom/google/android/maps/driveabout/e/ac;->a(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    :cond_7
    const/16 v25, 0x0

    invoke-static/range {v24 .. v24}, Lcom/google/android/maps/driveabout/e/ac;->c(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v25

    :cond_8
    invoke-static/range {v24 .. v24}, Lcom/google/android/maps/driveabout/e/ac;->b(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v26

    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    aput v5, v27, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x2

    move/from16 v0, v24

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v12

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/e/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/e/s;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_5

    :cond_c
    new-instance v9, Lcom/google/android/maps/driveabout/e/ac;

    move-object/from16 v10, p2

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v27}, Lcom/google/android/maps/driveabout/e/ac;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/k;[Lcom/google/android/maps/driveabout/e/a;Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/s;[Lcom/google/android/maps/driveabout/e/c;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V

    move-object v3, v9

    goto/16 :goto_1
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->j:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->q:F

    return v0
.end method
