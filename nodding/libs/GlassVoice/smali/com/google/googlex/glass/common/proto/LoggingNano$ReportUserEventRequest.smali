.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportUserEventRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;


# instance fields
.field public action:Ljava/lang/String;

.field private cachedSize:I

.field public data:Ljava/lang/String;

.field public hardwareVersion:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public softwareVersion:Ljava/lang/String;

.field public timestamp:Ljava/lang/Long;

.field public userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 210
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    .line 195
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    .line 217
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    .line 221
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    if-ne p1, p0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 228
    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 229
    .local v0, other:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->getSerializedSize()I

    .line 289
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 296
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 299
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 300
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 303
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 304
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 307
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 308
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 311
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 312
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 315
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 316
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 319
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v5, :cond_6

    .line 320
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 321
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v5, 0x7

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    iput v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    .line 326
    return v4
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 239
    const/16 v1, 0x11

    .line 240
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 241
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 242
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 243
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 244
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 245
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 246
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 252
    :cond_0
    return v1

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 242
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_3

    .line 244
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 245
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 248
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 249
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 249
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hashCode()I

    move-result v2

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 335
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 339
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 340
    :sswitch_0
    return-object p0

    .line 345
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    goto :goto_0

    .line 349
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    goto :goto_0

    .line 353
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 357
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    goto :goto_0

    .line 361
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    goto :goto_0

    .line 365
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    goto :goto_0

    .line 369
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 370
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v5, :cond_2

    move v1, v4

    .line 371
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 372
    .local v2, newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v5, :cond_1

    .line 373
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 376
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 377
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v6, v5, v1

    .line 378
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 379
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 370
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v1, v5

    goto :goto_1

    .line 382
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v6, v5, v1

    .line 383
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 258
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 261
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 263
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 264
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 266
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 267
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 269
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 270
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 273
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 275
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v4, :cond_6

    .line 276
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 277
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    return-void
.end method
