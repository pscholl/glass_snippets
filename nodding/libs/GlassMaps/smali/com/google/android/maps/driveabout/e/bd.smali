.class public Lcom/google/android/maps/driveabout/e/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/i;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/av;

.field private final b:I

.field private final c:[Lcom/google/android/maps/driveabout/e/j;

.field private final d:Lcom/google/android/maps/driveabout/e/aq;

.field private final e:[Ljava/lang/String;

.field private final f:J

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:I

.field private final k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private final l:[Lcom/google/android/maps/driveabout/e/ba;

.field private final m:I

.field private n:J


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/av;II[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/android/maps/driveabout/e/j;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;[Lcom/google/android/maps/driveabout/e/ba;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bd;->h:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/bd;->d:Lcom/google/android/maps/driveabout/e/aq;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/bd;->e:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/bd;->a:Lcom/google/android/maps/driveabout/e/av;

    iput p4, p0, Lcom/google/android/maps/driveabout/e/bd;->b:I

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/bd;->g:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/bd;->i:[Ljava/lang/String;

    iput p8, p0, Lcom/google/android/maps/driveabout/e/bd;->j:I

    iput-object p9, p0, Lcom/google/android/maps/driveabout/e/bd;->c:[Lcom/google/android/maps/driveabout/e/j;

    iput-object p10, p0, Lcom/google/android/maps/driveabout/e/bd;->k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iput-object p11, p0, Lcom/google/android/maps/driveabout/e/bd;->l:[Lcom/google/android/maps/driveabout/e/ba;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/bd;->m:I

    iput-wide p12, p0, Lcom/google/android/maps/driveabout/e/bd;->f:J

    iput-wide p14, p0, Lcom/google/android/maps/driveabout/e/bd;->n:J

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/av;Ljava/io/DataInput;IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/e/bd;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/bd;->a(Ljava/io/DataInput;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/av;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected tile coords: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v11, -0x1

    const/16 v3, 0x8

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit16 v3, v3, 0x7d0

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v9, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v10, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v11, v3

    :goto_2
    invoke-static/range {p1 .. p2}, Lcom/google/android/maps/driveabout/e/aq;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/aq;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v10, v3, [Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v12, v6, [Lcom/google/android/maps/driveabout/e/j;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/e/bd;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v7

    aput-object v7, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v14, v6, [Lcom/google/android/maps/driveabout/e/ba;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/e/ba;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/ba;

    move-result-object v7

    aput-object v7, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/maps/driveabout/e/bd;

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    move-wide/from16 v15, p6

    move-wide/from16 v17, p8

    invoke-direct/range {v3 .. v18}, Lcom/google/android/maps/driveabout/e/bd;-><init>(Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/av;II[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/android/maps/driveabout/e/j;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;[Lcom/google/android/maps/driveabout/e/ba;JJ)V

    return-object v3
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/av;[BILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/e/bd;
    .locals 14

    invoke-static/range {p1 .. p2}, Lcom/google/android/maps/driveabout/e/bd;->a([BI)[J

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-wide v3, v0, v1

    long-to-int v8, v3

    const/4 v1, 0x2

    aget-wide v2, v0, v2

    long-to-int v9, v2

    const/4 v2, 0x3

    aget-wide v3, v0, v1

    long-to-int v1, v3

    const/4 v3, 0x4

    aget-wide v4, v0, v2

    long-to-int v2, v4

    aget-wide v3, v0, v3

    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    const/16 v0, 0x1a

    :goto_0
    add-int v6, p2, v0

    array-length v0, p1

    sub-int v7, v0, v6

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/bd;->a(Lcom/google/android/maps/driveabout/e/av;IIJ[BII)V

    new-instance v13, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_0
    invoke-virtual {v13, p1, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    mul-int/lit8 v0, v7, 0x4

    invoke-static {v0}, Lcom/google/googlenav/e/c;->a(I)[B

    move-result-object v2

    if-nez v2, :cond_0

    new-array v2, v0, [B

    :cond_0
    invoke-virtual {v13, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    move-object v12, v2

    :goto_1
    invoke-virtual {v13}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_2

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v13, v2, v0, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    add-int/2addr v0, v3

    move-object v12, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v3, v12}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    move-object v2, p0

    move v4, v1

    move v5, v8

    move v6, v9

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v2 .. v11}, Lcom/google/android/maps/driveabout/e/bd;->a(Lcom/google/android/maps/driveabout/e/av;Ljava/io/DataInput;IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/e/bd;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/a;->a()I

    move-result v2

    if-eq v2, v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte stream not fully read for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/bd;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

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

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_3
    :try_start_2
    invoke-static {v12}, Lcom/google/googlenav/e/c;->a([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    return-object v1
.end method

.method static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/j;
    .locals 4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {p0, p1, p3}, Lcom/google/android/maps/driveabout/e/h;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;)Lcom/google/android/maps/driveabout/e/h;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/an;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/an;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/d;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/d;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/e;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/e;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/x;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/x;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1, p3}, Lcom/google/android/maps/driveabout/e/ak;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;)Lcom/google/android/maps/driveabout/e/ak;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/ac;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/ac;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/v;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/v;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/ax;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/w;->b(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/v;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static a(II[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/google/android/maps/driveabout/e/z;->a(I[BI)V

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/e/z;->a(I[BI)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/av;IIJ[BII)V
    .locals 12

    new-instance v11, Lcom/google/android/maps/driveabout/store/bu;

    invoke-direct {v11}, Lcom/google/android/maps/driveabout/store/bu;-><init>()V

    const/16 v3, 0x9

    if-ge p1, v3, :cond_0

    const/16 v3, 0x20

    new-array v8, v3, [B

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v5

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v8}, Lcom/google/android/maps/driveabout/store/bu;->a(IIIII[B)V

    const/16 v3, 0x100

    invoke-virtual {v11, v8, v3}, Lcom/google/android/maps/driveabout/store/bu;->b([BI)V

    :goto_0
    move-object/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bu;->a([BII)V

    return-void

    :cond_0
    const/16 v3, 0x28

    new-array v10, v3, [B

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v5

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-static/range {v3 .. v10}, Lcom/google/android/maps/driveabout/store/bu;->a(IIIIIJ[B)V

    const/16 v3, 0x100

    invoke-virtual {v11, v10, v3}, Lcom/google/android/maps/driveabout/store/bu;->a([BI)V

    goto :goto_0
.end method

.method private static a(Ljava/io/DataInput;)V
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TILE_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static a([BI)[J
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/bd;->a(Ljava/io/DataInput;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version mismatch: 7 or 8 or 9 expected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUnsignedShort()I

    move-result v4

    const/4 v0, 0x5

    new-array v0, v0, [J

    int-to-long v5, v1

    aput-wide v5, v0, v9

    int-to-long v1, v2

    aput-wide v1, v0, v10

    int-to-long v1, v3

    aput-wide v1, v0, v11

    int-to-long v1, v4

    aput-wide v1, v0, v12

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v13

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readLong()J

    move-result-wide v5

    const/4 v0, 0x5

    new-array v0, v0, [J

    int-to-long v7, v1

    aput-wide v7, v0, v9

    int-to-long v1, v2

    aput-wide v1, v0, v10

    int-to-long v1, v3

    aput-wide v1, v0, v11

    int-to-long v1, v4

    aput-wide v1, v0, v12

    aput-wide v5, v0, v13

    goto :goto_0
.end method

.method public static e()I
    .locals 4

    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->g()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->g()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private static g()J
    .locals 2

    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/a/c;->a()Lcom/google/googlenav/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/a/c;->a()Lcom/google/googlenav/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a/h;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bd;->a:Lcom/google/android/maps/driveabout/e/av;

    return-object v0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/e/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bd;->c:[Lcom/google/android/maps/driveabout/e/j;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/bd;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/e/bd;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/bd;->f:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/bd;->b:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/bd;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/e/bd;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b_()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/bd;->n:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/bd;->m:I

    return v0
.end method

.method public final c(Lcom/google/googlenav/common/a;)V
    .locals 4

    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->g()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/e/bd;->n:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/e/bd;->n:J

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bd;->c:[Lcom/google/android/maps/driveabout/e/j;

    array-length v0, v0

    return v0
.end method
