.class public Lcom/x/google/common/io/ByteArrayDataInput;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private mBytes:[B

.field private mLength:I

.field private mPos:I

.field private mUtfCharBuf:[C


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    array-length v0, v0

    iput v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    return-void
.end method

.method public static convertUTF8WithBuf([B[CII)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v7, 0x80

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_8

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    int-to-char v2, v2

    aput-char v2, p1, v0

    if-ge v2, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    aget-char v5, p1, v0

    and-int/lit16 v2, v5, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_3

    if-lt v3, p3, :cond_1

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int v2, p2, v3

    aget-byte v3, p0, v2

    and-int/lit16 v2, v3, 0xc0

    if-eq v2, v7, :cond_2

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    move v2, v4

    goto :goto_0

    :cond_3
    and-int/lit16 v2, v5, 0xf0

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_7

    add-int/lit8 v2, v3, 0x1

    if-lt v2, p3, :cond_4

    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Third byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v4, p0, v3

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v6, p0, v2

    and-int/lit16 v2, v4, 0xc0

    if-ne v2, v7, :cond_5

    and-int/lit16 v2, v6, 0xc0

    if-eq v2, v7, :cond_6

    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second or third byte at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v0

    move v0, v2

    move v2, v3

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match UTF8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Specification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method


# virtual methods
.method public getBytesRead()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    return v0
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/x/google/common/io/ByteArrayDataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/x/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/x/google/common/io/ByteArrayDataInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    iput v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    goto :goto_0
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v4, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 5

    const/16 v4, 0xa

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readLong()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v11, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v16, v16, v17
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x38

    shl-long v2, v2, v18

    const/16 v18, 0x30

    shl-long v4, v4, v18

    or-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v8, v4

    or-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long v4, v10, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long v4, v12, v4

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long v4, v14, v4

    or-long/2addr v2, v4

    or-long v2, v2, v16

    return-wide v2

    :catch_0
    move-exception v2

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/x/google/common/io/ByteArrayDataInput;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    iput v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    array-length v0, v0

    if-le v1, v0, :cond_2

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    :cond_2
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget-object v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    iget v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    invoke-static {v0, v2, v3, v1}, Lcom/x/google/common/io/ByteArrayDataInput;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    goto :goto_0
.end method

.method public readUnsignedByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mBytes:[B

    iget v2, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 2

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mLength:I

    iget v1, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    sub-int p1, v0, v1

    :cond_0
    iget v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/x/google/common/io/ByteArrayDataInput;->mPos:I

    return p1
.end method
