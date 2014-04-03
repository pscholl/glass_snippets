.class public final Lcom/google/android/maps/driveabout/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/k;

.field private final b:Lcom/google/android/maps/driveabout/e/ay;

.field private final c:[B

.field private final d:Lcom/google/android/maps/driveabout/e/ap;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/ay;[BLcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/d;->a:Lcom/google/android/maps/driveabout/e/k;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/e/ay;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/d;->c:[B

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/d;->d:Lcom/google/android/maps/driveabout/e/ap;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/d;->e:I

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/d;->f:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/maps/driveabout/e/d;->g:I

    iput p8, p0, Lcom/google/android/maps/driveabout/e/d;->h:I

    iput-object p9, p0, Lcom/google/android/maps/driveabout/e/d;->i:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/d;
    .locals 13

    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/e/ay;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ay;->a()I

    move-result v1

    new-array v4, v1, [B

    invoke-interface {p0, v4}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v6

    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v7, p4, v6

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v8

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1, v9}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v11

    new-array v10, v11, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v12

    aput v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    invoke-static {v1, v9}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/maps/driveabout/e/d;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/e/d;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/ay;[BLcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/ay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/e/ay;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/d;->d:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/d;->g:I

    return v0
.end method
