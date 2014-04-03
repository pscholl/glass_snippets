.class public final Lcom/google/android/maps/driveabout/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# static fields
.field private static final m:[B

.field private static final n:[I


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/k;

.field private final b:Lcom/google/android/maps/driveabout/e/ay;

.field private final c:Lcom/google/android/maps/driveabout/e/ay;

.field private final d:[B

.field private final e:Lcom/google/android/maps/driveabout/e/ap;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/e/e;->m:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/maps/driveabout/e/e;->n:[I

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x4t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/ay;Lcom/google/android/maps/driveabout/e/ay;[BIILcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/e;->a:Lcom/google/android/maps/driveabout/e/k;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/e;->b:Lcom/google/android/maps/driveabout/e/ay;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/e;->c:Lcom/google/android/maps/driveabout/e/ay;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/e;->d:[B

    iput p5, p0, Lcom/google/android/maps/driveabout/e/e;->h:I

    iput p6, p0, Lcom/google/android/maps/driveabout/e/e;->i:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/e;->e:Lcom/google/android/maps/driveabout/e/ap;

    iput p8, p0, Lcom/google/android/maps/driveabout/e/e;->f:I

    iput-object p9, p0, Lcom/google/android/maps/driveabout/e/e;->g:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/maps/driveabout/e/e;->j:I

    iput p11, p0, Lcom/google/android/maps/driveabout/e/e;->k:I

    iput-object p12, p0, Lcom/google/android/maps/driveabout/e/e;->l:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/e;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ay;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ay;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ay;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;I)Lcom/google/android/maps/driveabout/e/ay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ay;->a()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ay;->a()I

    move-result v3

    :goto_1
    new-array v7, v3, [B

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/io/DataInput;->readFully([B)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v9

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v12, p4, v11

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v13

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v14

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v14}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v16

    move/from16 v0, v16

    new-array v15, v0, [I

    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v17

    aput v17, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ay;->a()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    invoke-static {v3, v14}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v4

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/google/android/maps/driveabout/e/e;

    invoke-direct/range {v3 .. v15}, Lcom/google/android/maps/driveabout/e/e;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/ay;Lcom/google/android/maps/driveabout/e/ay;[BIILcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V

    return-object v3
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/e;->e:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/e;->j:I

    return v0
.end method
