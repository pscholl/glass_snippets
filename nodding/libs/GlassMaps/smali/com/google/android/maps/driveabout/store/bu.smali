.class public final Lcom/google/android/maps/driveabout/store/bu;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final e:[B

.field private static final f:[B


# instance fields
.field private final b:[B

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x100

    const/16 v3, 0x10

    new-array v0, v4, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    sget-object v1, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/store/bu;->e:[B

    new-array v0, v3, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/bu;->f:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x5at
        0xeet
        0x3t
        0x9dt
        0xet
        0xd7t
        0x6at
        0xb2t
        0x74t
        0x3ft
        0x36t
        0x50t
        0x28t
        0x87t
        0xe0t
        0xeft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    return-void
.end method

.method private a(I)V
    .locals 6

    iget v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v3, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    return-void
.end method

.method public static a(IIIIIJ[B)V
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/bu;->a(IIIII[B)V

    const/16 v0, 0x20

    invoke-static {v0, p5, p6, p7}, Lcom/google/android/maps/driveabout/store/bu;->a(IJ[B)V

    return-void
.end method

.method public static a(IIIII[B)V
    .locals 4

    const v3, 0xffff

    invoke-static {p5}, Lcom/google/android/maps/driveabout/store/bu;->a([B)V

    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/16 v0, 0x10

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x11

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x12

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x13

    int-to-byte v1, p0

    aput-byte v1, p5, v0

    const/16 v0, 0x14

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x15

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x16

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x17

    int-to-byte v1, p1

    aput-byte v1, p5, v0

    const/16 v0, 0x18

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x19

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x1a

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    const/16 v0, 0x1b

    int-to-byte v1, p2

    aput-byte v1, p5, v0

    and-int v0, p3, v3

    const/16 v1, 0x1c

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    const/16 v1, 0x1d

    int-to-byte v0, v0

    aput-byte v0, p5, v1

    and-int v0, p4, v3

    const/16 v1, 0x1e

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    const/16 v1, 0x1f

    int-to-byte v0, v0

    aput-byte v0, p5, v1

    return-void
.end method

.method public static a(IIII[B)V
    .locals 2

    invoke-static {p4}, Lcom/google/android/maps/driveabout/store/bu;->a([B)V

    const/16 v0, 0x10

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x11

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x12

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x13

    int-to-byte v1, p0

    aput-byte v1, p4, v0

    const/16 v0, 0x14

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x15

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x16

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x17

    int-to-byte v1, p1

    aput-byte v1, p4, v0

    const/16 v0, 0x18

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x19

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x1a

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x1b

    int-to-byte v1, p2

    aput-byte v1, p4, v0

    const/16 v0, 0x1c

    shr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x1d

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x1e

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const/16 v0, 0x1f

    int-to-byte v1, p3

    aput-byte v1, p4, v0

    return-void
.end method

.method private static a(IJ[B)V
    .locals 3

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p0

    add-int/lit8 v0, p0, 0x1

    const/16 v1, 0x30

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p0, 0x2

    const/16 v1, 0x28

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p0, 0x3

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p0, 0x4

    const/16 v1, 0x18

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p0, 0x5

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p0, 0x6

    const/16 v1, 0x8

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p0, 0x7

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/bu;->f:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static a([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/maps/driveabout/store/bu;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/maps/driveabout/store/bu;->e:[B

    aget-byte v1, v1, v0

    mul-int/lit8 v1, v1, 0x2f

    sget-object v2, Lcom/google/android/maps/driveabout/store/bu;->f:[B

    aget-byte v2, v2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 7

    const/16 v6, 0x100

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    invoke-static {v0, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    array-length v3, p1

    rem-int v3, v2, v3

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/bu;->a(I)V

    return-void
.end method

.method public final a([BII)V
    .locals 8

    iget v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v4, v3, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v3, v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v5, v3, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v4, v3, v1

    add-int/lit8 v3, p2, 0x1

    aget-byte v6, p1, p2

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v7, v4

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    return-void
.end method

.method public final b([BI)V
    .locals 7

    const/16 v6, 0x100

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/store/bu;->a:[B

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    invoke-static {v0, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    and-int/lit8 v3, v2, 0x1f

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bu;->b:[B

    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->c:I

    iput v1, p0, Lcom/google/android/maps/driveabout/store/bu;->d:I

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/bu;->a(I)V

    return-void
.end method
