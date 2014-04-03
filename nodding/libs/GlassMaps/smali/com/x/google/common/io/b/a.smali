.class public final Lcom/x/google/common/io/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/Boolean;

.field public static final c:[B

.field private static final h:Lcom/x/google/common/io/b/c;


# instance fields
.field private d:Lcom/x/google/common/io/b/d;

.field private final e:Lcom/x/google/common/util/a;

.field private f:Lcom/x/google/common/util/a;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/x/google/common/io/b/a;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/x/google/common/io/b/a;->b:Ljava/lang/Boolean;

    new-array v0, v2, [B

    sput-object v0, Lcom/x/google/common/io/b/a;->c:[B

    new-instance v0, Lcom/x/google/common/io/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/x/google/common/io/b/c;-><init>(Lcom/x/google/common/io/b/b;)V

    sput-object v0, Lcom/x/google/common/io/b/a;->h:Lcom/x/google/common/io/b/c;

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/io/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/x/google/common/io/b/a;->g:I

    iput-object p1, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    new-instance v0, Lcom/x/google/common/util/a;

    invoke-direct {v0}, Lcom/x/google/common/util/a;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    return-void
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/io/b/a;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private a(ILcom/x/google/common/io/b;)I
    .locals 15

    invoke-direct/range {p0 .. p1}, Lcom/x/google/common/io/b/a;->a(I)I

    move-result v8

    invoke-direct/range {p0 .. p1}, Lcom/x/google/common/io/b/a;->d(I)I

    move-result v9

    shl-int/lit8 v1, p1, 0x3

    or-int v10, v1, v9

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v7, v1

    move v1, v2

    :goto_0
    if-ge v7, v8, :cond_6

    int-to-long v2, v10

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move-result v2

    add-int v4, v1, v2

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/x/google/common/io/b;->b()I

    move-result v11

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_1
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/x/google/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v1, 0x5

    if-ne v9, v1, :cond_0

    const/4 v1, 0x4

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_1

    const-wide/16 v12, 0xff

    and-long/2addr v12, v5

    long-to-int v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/x/google/common/io/b;->write(I)V

    const/16 v12, 0x8

    shr-long/2addr v5, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    move v2, v3

    move v1, v4

    :goto_3
    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/x/google/common/io/b;->b()I

    move-result v2

    sub-int/2addr v2, v11

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/x/google/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct/range {p0 .. p1}, Lcom/x/google/common/io/b/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v2}, Lcom/x/google/common/io/b/a;->b(J)J

    move-result-wide v1

    :cond_3
    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move v2, v3

    move v1, v4

    goto :goto_3

    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/x/google/common/io/b/a;->b(I)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_4

    const/16 v1, 0x10

    :goto_4
    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/x/google/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_5

    check-cast v1, [B

    check-cast v1, [B

    array-length v2, v1

    int-to-long v5, v2

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/x/google/common/io/b;->write([B)V

    move v2, v3

    move v1, v4

    goto :goto_3

    :cond_4
    const/16 v1, 0x19

    goto :goto_4

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/x/google/common/io/b;->b()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/x/google/common/io/b;->b(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/x/google/common/io/b;->a()I

    move-result v2

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/x/google/common/io/b;->b(I)V

    check-cast v1, Lcom/x/google/common/io/b/a;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/x/google/common/io/b/a;->a(Lcom/x/google/common/io/b;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Lcom/x/google/common/io/b;->a(II)V

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/x/google/common/io/b/a;->a(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v4, v1

    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto/16 :goto_3

    :pswitch_4
    const/16 v1, 0x1a

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/x/google/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/google/common/io/b/a;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/x/google/common/io/b/a;->a(Lcom/x/google/common/io/b;)I

    move-result v1

    add-int/2addr v1, v4

    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto/16 :goto_3

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_0
.end method

.method private a(Lcom/x/google/common/io/b;)I
    .locals 3

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v0}, Lcom/x/google/common/util/a;->a()Lcom/x/google/common/util/b;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/x/google/common/util/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/x/google/common/util/b;->b()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/x/google/common/io/b/a;->a(ILcom/x/google/common/io/b;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private a(Ljava/io/InputStream;I)I
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/x/google/common/io/b/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/x/google/common/io/b/c;-><init>(Lcom/x/google/common/io/b/b;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/x/google/common/io/b/a;->a(Ljava/io/InputStream;IZLcom/x/google/common/io/b/c;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/io/InputStream;IZLcom/x/google/common/io/b/c;)I
    .locals 10

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/x/google/common/io/b/a;->a()V

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Lcom/x/google/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/x/google/common/io/b/c;)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    if-gez v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    iget v1, p4, Lcom/x/google/common/io/b/c;->a:I

    sub-int v2, v0, v1

    long-to-int v0, v3

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    ushr-long/2addr v3, v1

    long-to-int v6, v3

    invoke-direct {p0, v6}, Lcom/x/google/common/io/b/a;->b(I)I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/x/google/common/io/b/a;->f:Lcom/x/google/common/util/a;

    if-nez v1, :cond_4

    new-instance v1, Lcom/x/google/common/util/a;

    invoke-direct {v1}, Lcom/x/google/common/util/a;-><init>()V

    iput-object v1, p0, Lcom/x/google/common/io/b/a;->f:Lcom/x/google/common/util/a;

    :cond_4
    iget-object v1, p0, Lcom/x/google/common/io/b/a;->f:Lcom/x/google/common/util/a;

    invoke-static {v0}, Lcom/x/google/common/util/c;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/x/google/common/util/a;->a(ILjava/lang/Object;)V

    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", reading garbage data?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/x/google/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/x/google/common/io/b/c;)J

    move-result-wide v0

    iget v3, p4, Lcom/x/google/common/io/b/c;->a:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v6}, Lcom/x/google/common/io/b/a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Lcom/x/google/common/io/b/a;->c(J)J

    move-result-wide v0

    :cond_6
    invoke-static {v0, v1}, Lcom/x/google/common/util/c;->a(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    :cond_7
    :goto_2
    invoke-direct {p0, v6, v0}, Lcom/x/google/common/io/b/a;->a(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    const/4 v0, 0x4

    :goto_3
    sub-int v1, v2, v0

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_9

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    goto :goto_4

    :cond_8
    const/16 v0, 0x8

    goto :goto_3

    :cond_9
    invoke-static {v4, v5}, Lcom/x/google/common/util/c;->a(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/x/google/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/x/google/common/io/b/c;)J

    move-result-wide v0

    long-to-int v3, v0

    iget v0, p4, Lcom/x/google/common/io/b/c;->a:I

    sub-int v0, v2, v0

    sub-int v1, v0, v3

    if-nez v3, :cond_a

    sget-object v0, Lcom/x/google/common/io/b/a;->c:[B

    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_7

    sub-int v4, v3, v2

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-array v0, v3, [B

    goto :goto_5

    :cond_b
    add-int/2addr v2, v4

    goto :goto_6

    :pswitch_4
    new-instance v1, Lcom/x/google/common/io/b/a;

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-direct {v1, v0}, Lcom/x/google/common/io/b/a;-><init>(Lcom/x/google/common/io/b/d;)V

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Lcom/x/google/common/io/b/a;->a(Ljava/io/InputStream;IZLcom/x/google/common/io/b/c;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    invoke-virtual {v0, v6}, Lcom/x/google/common/io/b/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/io/b/d;

    goto :goto_7

    :cond_d
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/io/OutputStream;J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x7f

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;ZLcom/x/google/common/io/b/c;)J
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iput v0, p2, Lcom/x/google/common/io/b/c;->a:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/x/google/common/io/b/c;->a:I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private a([B)Lcom/x/google/common/io/b/a;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/x/google/common/io/b/a;->a(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method private a(III)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/io/b/a;->a(Ljava/lang/Object;)I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/x/google/common/io/b/a;->a(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_2

    check-cast p4, Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p3, p1}, Lcom/x/google/common/io/b/a;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p4, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_2
    return-object p1

    :cond_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object p1, Lcom/x/google/common/io/b/a;->a:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/x/google/common/io/b/a;->b:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/x/google/common/util/c;->a(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :pswitch_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/x/google/common/io/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/x/google/common/io/b/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast p1, Lcom/x/google/common/io/b/a;

    invoke-virtual {p1, v0}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/x/google/common/io/a;->a([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    if-lez p3, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/x/google/common/io/b/a;

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    invoke-virtual {v0, p3}, Lcom/x/google/common/io/b/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/x/google/common/io/b/a;-><init>(Lcom/x/google/common/io/b/d;)V

    move-object v0, v1

    :goto_2
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/x/google/common/io/b/a;->a([B)Lcom/x/google/common/io/b/a;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/x/google/common/io/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/x/google/common/io/b/a;-><init>(Lcom/x/google/common/io/b/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v0}, Lcom/x/google/common/util/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/io/b/a;->f:Lcom/x/google/common/util/a;

    return-void
.end method

.method private a(IILjava/lang/Object;Z)V
    .locals 3

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v1, p1, v0}, Lcom/x/google/common/util/a;->a(ILjava/lang/Object;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/x/google/common/io/b/a;->a(IILjava/lang/Object;Z)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Z)V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Lcom/x/google/common/io/b;

    invoke-direct {v3}, Lcom/x/google/common/io/b;-><init>()V

    invoke-direct {p0, v3}, Lcom/x/google/common/io/b/a;->a(Lcom/x/google/common/io/b;)I

    move-result v2

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    invoke-virtual {v3}, Lcom/x/google/common/io/b;->a()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/x/google/common/io/b;->a(I)I

    move-result v2

    sub-int v5, v2, v1

    invoke-virtual {v3, p1, v1, v5}, Lcom/x/google/common/io/b;->a(Ljava/io/OutputStream;II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Lcom/x/google/common/io/b;->a(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {p1, v5, v6}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/x/google/common/io/b;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3}, Lcom/x/google/common/io/b;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, p1, v1, v0}, Lcom/x/google/common/io/b;->a(Ljava/io/OutputStream;II)V

    :cond_2
    return-void
.end method

.method private b(I)I
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x10

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    invoke-virtual {v0, p1}, Lcom/x/google/common/io/b/d;->a(I)I

    move-result v2

    :goto_0
    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->f:Lcom/x/google/common/util/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/x/google/common/io/b/a;->f:Lcom/x/google/common/util/a;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    if-ne v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/x/google/common/io/b/a;->a(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, p1, v1, v3}, Lcom/x/google/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_3
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method private static b(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/b/a;->e:Lcom/x/google/common/util/a;

    invoke-virtual {v0, p1, p2}, Lcom/x/google/common/util/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private static c(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private c(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/x/google/common/io/b/a;->b(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d(I)I
    .locals 5

    const/16 v4, 0x2f

    invoke-direct {p0, p1}, Lcom/x/google/common/io/b/a;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/io/b/a;->d:Lcom/x/google/common/io/b/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(IF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/common/io/b/a;->a(II)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/x/google/common/io/b/a;->a(IJ)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    invoke-static {p2, p3}, Lcom/x/google/common/util/c;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(ILcom/x/google/common/io/b/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/io/b/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/io/b/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/x/google/common/io/b/a;->b:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/x/google/common/io/b/a;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final a(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public final b(ILcom/x/google/common/io/b/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/io/b/a;->b(ILjava/lang/Object;)V

    return-void
.end method
