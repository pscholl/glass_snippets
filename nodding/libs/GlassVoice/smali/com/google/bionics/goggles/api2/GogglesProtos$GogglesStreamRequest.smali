.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesStreamRequest"
.end annotation


# static fields
.field public static final IMAGE_FIELD_NUMBER:I = 0x3

.field public static final IMPORTANT_PAYLOAD_FIELD_NUMBER:I = 0x11

.field public static final POSE_FIELD_NUMBER:I = 0x4

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final SESSION_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final TEXT_FIELD_NUMBER:I = 0x10


# instance fields
.field private cachedSize:I

.field private hasImage:Z

.field private hasImportantPayload:Z

.field private hasPose:Z

.field private hasSequenceNumber:Z

.field private hasSessionOptions:Z

.field private hasText:Z

.field private image_:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

.field private importantPayload_:Z

.field private pose_:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

.field private sequenceNumber_:I

.field private sessionOptions_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1177
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1182
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1199
    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 1219
    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image_:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 1239
    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose_:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1276
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1328
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    .line 1177
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1420
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clearSequenceNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1292
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clearSessionOptions()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1293
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clearImage()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1294
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clearPose()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1295
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clearText()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1296
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->clearImportantPayload()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 1297
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    .line 1298
    return-object p0
.end method

.method public clearImage()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImage:Z

    .line 1232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image_:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 1233
    return-object p0
.end method

.method public clearImportantPayload()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1285
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImportantPayload:Z

    .line 1286
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1287
    return-object p0
.end method

.method public clearPose()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasPose:Z

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose_:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1253
    return-object p0
.end method

.method public clearSequenceNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1191
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSequenceNumber:Z

    .line 1192
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1193
    return-object p0
.end method

.method public clearSessionOptions()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSessionOptions:Z

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 1213
    return-object p0
.end method

.method public clearText()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasText:Z

    .line 1269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1270
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1331
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getSerializedSize()I

    .line 1335
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    return v0
.end method

.method public getImage()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image_:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    return-object v0
.end method

.method public getImportantPayload()Z
    .locals 1

    .prologue
    .line 1277
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    return v0
.end method

.method public getPose()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose_:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1340
    const/4 v0, 0x0

    .line 1341
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSequenceNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getSequenceNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1345
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSessionOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getSessionOptions()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1349
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1350
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getImage()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1353
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasPose()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1354
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getPose()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1357
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1358
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1361
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImportantPayload()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1362
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getImportantPayload()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1365
    :cond_5
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->cachedSize:I

    .line 1366
    return v0
.end method

.method public getSessionOptions()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImage:Z

    return v0
.end method

.method public hasImportantPayload()Z
    .locals 1

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImportantPayload:Z

    return v0
.end method

.method public hasPose()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasPose:Z

    return v0
.end method

.method public hasSequenceNumber()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSequenceNumber:Z

    return v0
.end method

.method public hasSessionOptions()Z
    .locals 1

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSessionOptions:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 1261
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1302
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1374
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1375
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1379
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1380
    :sswitch_0
    return-object p0

    .line 1385
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->setSequenceNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    goto :goto_0

    .line 1389
    :sswitch_2
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;-><init>()V

    .line 1390
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1391
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->setSessionOptions(Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    goto :goto_0

    .line 1395
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    :sswitch_3
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;-><init>()V

    .line 1396
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1397
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->setImage(Lcom/google/bionics/goggles/api2/GogglesProtos$Image;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    goto :goto_0

    .line 1401
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    :sswitch_4
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;-><init>()V

    .line 1402
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1403
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->setPose(Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    goto :goto_0

    .line 1407
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->setText(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    goto :goto_0

    .line 1411
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->setImportantPayload(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    goto :goto_0

    .line 1375
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x82 -> :sswitch_5
        0x88 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Lcom/google/bionics/goggles/api2/GogglesProtos$Image;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1223
    if-nez p1, :cond_0

    .line 1224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImage:Z

    .line 1227
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->image_:Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 1228
    return-object p0
.end method

.method public setImportantPayload(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImportantPayload:Z

    .line 1281
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->importantPayload_:Z

    .line 1282
    return-object p0
.end method

.method public setPose(Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1243
    if-nez p1, :cond_0

    .line 1244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1246
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasPose:Z

    .line 1247
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->pose_:Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1248
    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSequenceNumber:Z

    .line 1187
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sequenceNumber_:I

    .line 1188
    return-object p0
.end method

.method public setSessionOptions(Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1203
    if-nez p1, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSessionOptions:Z

    .line 1207
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->sessionOptions_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 1208
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasText:Z

    .line 1264
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->text_:Ljava/lang/String;

    .line 1265
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSequenceNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getSequenceNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1311
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasSessionOptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1312
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getSessionOptions()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1314
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getImage()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1317
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasPose()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1318
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getPose()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1320
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1321
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1323
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->hasImportantPayload()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1324
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;->getImportantPayload()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1326
    :cond_5
    return-void
.end method
