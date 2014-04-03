.class public final Lcom/x/google/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;


# static fields
.field public static isGzipResponseSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProtoBuf(Lcom/x/google/common/io/protocol/ProtoBuf;I)Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static cloneProtoBuf(Lcom/x/google/common/io/protocol/ProtoBuf;)Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/x/google/common/io/protocol/ProtoBuf;->getType()Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    invoke-virtual {p0}, Lcom/x/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/x/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public static createProtoBuf(Lcom/x/google/common/io/protocol/ProtoBuf;I)Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v0, Lcom/x/google/common/io/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/x/google/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    if-gez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/x/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    invoke-static {v0}, Lcom/x/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getProtoLongValueOrDefault(Lcom/x/google/common/io/protocol/ProtoBuf;IJ)J
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :cond_0
    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getProtoLongValueOrZero(Lcom/x/google/common/io/protocol/ProtoBuf;I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getProtoValueOrDefault(Lcom/x/google/common/io/protocol/ProtoBuf;II)I
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getProtoValueOrEmpty(Lcom/x/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getProtoValueOrFalse(Lcom/x/google/common/io/protocol/ProtoBuf;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getProtoValueOrNegativeOne(Lcom/x/google/common/io/protocol/ProtoBuf;I)J
    .locals 3

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getProtoValueOrNull(Lcom/x/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getProtoValueOrNull(Lcom/x/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-le v1, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/x/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getProtoValueOrZero(Lcom/x/google/common/io/protocol/ProtoBuf;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/x/google/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static getSubProtoOrNull(Lcom/x/google/common/io/protocol/ProtoBuf;I)Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubProtoValueOrDefault(Lcom/x/google/common/io/protocol/ProtoBuf;III)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/x/google/common/io/protocol/ProtoBuf;I)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/x/google/common/io/protocol/ProtoBuf;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    :goto_0
    return p3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getSubProtoValueOrEmpty(Lcom/x/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/x/google/common/io/protocol/ProtoBuf;I)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Lcom/x/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getSubProtoValueOrNegativeOne(Lcom/x/google/common/io/protocol/ProtoBuf;II)J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/x/google/common/io/protocol/ProtoBuf;I)Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Lcom/x/google/common/io/protocol/ProtoBuf;I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static readNextProtoBuf(Lcom/x/google/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/x/google/common/io/protocol/ProtoBuf;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/x/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p2, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->setType(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p2, p1, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move v0, v1

    goto :goto_0
.end method

.method public static readProtoBufResponse(Lcom/x/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p0}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    invoke-static {p1}, Lcom/x/google/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/x/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Lcom/x/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lcom/x/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
