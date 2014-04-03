.class public final Lcom/google/android/maps/driveabout/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/i;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/e/av;

.field private final c:I

.field private final d:J

.field private final e:[Lcom/google/android/maps/driveabout/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RoadGraphPiece"

    sput-object v0, Lcom/google/android/maps/driveabout/g/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/googlenav/common/io/b/a;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/g/d;->c:I

    iput-wide p3, p0, Lcom/google/android/maps/driveabout/g/d;->d:J

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/e;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/g/d;->a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/g/d;->a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/e/ab;)V

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/g/d;->b(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public static a([BI)I
    .locals 4

    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    const v2, 0x45504752

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORMAT_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 1 expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v0

    return v0
.end method

.method private static a([BLcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/af;
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    :goto_0
    new-instance v5, Lcom/google/android/maps/driveabout/e/ah;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v5, v3}, Lcom/google/android/maps/driveabout/e/ah;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v5, p1}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    :cond_0
    move v3, v2

    move v4, v2

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/az;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/az;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->c(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v5, p2}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ah;->d()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/av;[BIJ)Lcom/google/android/maps/driveabout/g/d;
    .locals 6

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/g/d;->a([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/maps/driveabout/g/d;->a(Lcom/google/android/maps/driveabout/e/av;I[BI)V

    array-length v0, p1

    sub-int/2addr v0, v1

    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_0
    invoke-virtual {v3, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v0, p3, p4}, Lcom/google/android/maps/driveabout/g/d;->b(Lcom/google/android/maps/driveabout/e/av;[BIJ)Lcom/google/android/maps/driveabout/g/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/av;I[BI)V
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v3

    invoke-static {v1, v2, v3, p1, v0}, Lcom/google/android/maps/driveabout/store/bu;->a(IIII[B)V

    new-instance v1, Lcom/google/android/maps/driveabout/store/bu;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/store/bu;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/store/bu;->b([BI)V

    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/maps/driveabout/store/bu;->a([BII)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/av;->e()Lcom/google/android/maps/driveabout/e/al;

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_4

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v13, v1, 0x1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    const/4 v1, 0x2

    invoke-static {v6, v1}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v7

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v11

    const/4 v1, 0x2

    invoke-static {v11, v1}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v14

    const/4 v1, 0x0

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v9

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v8

    move-object/from16 v0, p1

    invoke-static {v6, v8, v0}, Lcom/google/android/maps/driveabout/g/d;->a(Lcom/google/googlenav/common/io/b/a;ILcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/g/f;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v2, 0x4

    aget-object v15, p2, v13

    aget-object v16, p2, v12

    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Lcom/google/android/maps/driveabout/g/d;->a([BLcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v5

    if-nez v15, :cond_1

    if-nez v16, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Both polyline endpoints are missing for segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez v15, :cond_2

    const/4 v2, 0x2

    const/4 v1, 0x5

    :goto_1
    const/4 v3, 0x4

    const/4 v15, 0x0

    invoke-static {v6, v3, v15}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    or-int/lit8 v6, v2, 0x8

    :goto_2
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x8

    move v11, v1

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    new-instance v1, Lcom/google/android/maps/driveabout/g/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-static {v2, v12}, Lcom/google/android/maps/driveabout/g/e;->a(Lcom/google/android/maps/driveabout/e/av;I)J

    move-result-wide v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/g/e;-><init>(J[Lcom/google/android/maps/driveabout/g/f;Lcom/google/android/maps/driveabout/e/af;IIII)V

    aput-object v1, v15, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    new-instance v1, Lcom/google/android/maps/driveabout/g/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-static {v2, v13}, Lcom/google/android/maps/driveabout/g/e;->a(Lcom/google/android/maps/driveabout/e/av;I)J

    move-result-wide v2

    move v6, v11

    move v7, v14

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/g/e;-><init>(J[Lcom/google/android/maps/driveabout/g/f;Lcom/google/android/maps/driveabout/e/af;IIII)V

    aput-object v1, v15, v13

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Segment polyline had fewer than two points for segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez v16, :cond_7

    const/4 v2, 0x1

    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    move v11, v1

    goto :goto_3

    :cond_6
    move v6, v2

    goto :goto_2

    :cond_7
    move v1, v2

    move v2, v3

    goto/16 :goto_1
.end method

.method private static a([B)[I
    .locals 5

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v3, v2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/e/ab;
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    array-length v0, v0

    new-array v3, v0, [Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v8, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/e/ab;->a(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/d;->a([B)[I

    move-result-object v6

    move v0, v1

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_0

    aget v7, v6, v0

    aput-object v5, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;ILcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/g/f;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v5

    if-ne p1, v4, :cond_1

    move v3, v4

    :goto_0
    if-lez v5, :cond_3

    new-array v1, v5, [Lcom/google/android/maps/driveabout/g/f;

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v9, v2}, Lcom/google/googlenav/common/io/b/a;->b(II)I

    move-result v0

    const/4 v6, 0x5

    invoke-virtual {p2, v6, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v7, Lcom/google/android/maps/driveabout/g/f;

    invoke-virtual {v6, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v0, v3}, Lcom/google/android/maps/driveabout/g/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v7, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    new-array v0, v4, [Lcom/google/android/maps/driveabout/g/f;

    sget-object v1, Lcom/google/android/maps/driveabout/g/e;->a:Lcom/google/android/maps/driveabout/g/f;

    aput-object v1, v0, v2

    goto :goto_2
.end method

.method private static b(Lcom/google/android/maps/driveabout/e/av;[BIJ)Lcom/google/android/maps/driveabout/g/d;
    .locals 2

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/e/b/a/a/b;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;I)I

    new-instance v1, Lcom/google/android/maps/driveabout/g/d;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/google/android/maps/driveabout/g/d;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/googlenav/common/io/b/a;J)V

    return-object v1
.end method

.method private b(Lcom/google/googlenav/common/io/b/a;)V
    .locals 18

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v7

    new-instance v8, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v9, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v9}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v7, :cond_4

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/g/d;->a([B)[I

    move-result-object v10

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/g/d;->a([B)[I

    move-result-object v11

    const/4 v2, 0x0

    array-length v1, v10

    new-array v12, v1, [Lcom/google/android/maps/driveabout/g/a;

    const/4 v1, 0x0

    :goto_1
    array-length v3, v10

    if-ge v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget v4, v10, v1

    aget-object v13, v3, v4

    const/4 v4, 0x0

    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    :goto_2
    array-length v5, v10

    if-ge v1, v5, :cond_2

    array-length v5, v11

    if-lt v2, v5, :cond_1

    array-length v1, v10

    move v4, v1

    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    aget v14, v11, v2

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget v15, v10, v1

    xor-int/lit8 v15, v15, 0x1

    aget-object v15, v5, v15

    add-int/lit8 v5, v3, 0x1

    new-instance v16, Lcom/google/android/maps/driveabout/g/a;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v14}, Lcom/google/android/maps/driveabout/g/a;-><init>(Lcom/google/android/maps/driveabout/g/e;I)V

    aput-object v16, v12, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v13, v8}, Lcom/google/android/maps/driveabout/g/e;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v9}, Lcom/google/android/maps/driveabout/g/e;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Polylines did not line up when creating arc:  intersection: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " fromIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point1: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-array v1, v3, [Lcom/google/android/maps/driveabout/g/a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v14, v1

    invoke-static {v12, v3, v1, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13, v1}, Lcom/google/android/maps/driveabout/g/e;->a([Lcom/google/android/maps/driveabout/g/a;)V

    add-int/lit8 v1, v4, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    move v3, v5

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    return-object v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/g/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/g/e;)Lcom/google/android/maps/driveabout/g/e;
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/g/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/g/e;->a(Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/maps/driveabout/g/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entering segment found in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/g/d;->b:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/av;->e()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for leaving segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024

    mul-double/2addr v2, v4

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_2

    sget-object v5, Lcom/google/android/maps/driveabout/g/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nearby segment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public final a(Lcom/google/googlenav/common/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/g/d;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/d;->d:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/d;->c:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b_()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final c(Lcom/google/googlenav/common/a;)V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->e:[Lcom/google/android/maps/driveabout/g/e;

    array-length v0, v0

    return v0
.end method
