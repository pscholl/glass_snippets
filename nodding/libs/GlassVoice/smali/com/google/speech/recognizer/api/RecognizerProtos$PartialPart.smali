.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartialPart"
.end annotation


# static fields
.field public static final SEMANTIC_RESULT_FIELD_NUMBER:I = 0x3

.field public static final STABILITY_FIELD_NUMBER:I = 0x2

.field public static final TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasSemanticResult:Z

.field private hasStability:Z

.field private hasText:Z

.field private semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

.field private stability_:D

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1269
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    .line 1269
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1424
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1418
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->clearText()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1327
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->clearStability()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1328
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->clearSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    .line 1329
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    .line 1330
    return-object p0
.end method

.method public clearSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasSemanticResult:Z

    .line 1321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 1322
    return-object p0
.end method

.method public clearStability()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 2

    .prologue
    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability:Z

    .line 1301
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1302
    return-object p0
.end method

.method public clearText()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1

    .prologue
    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText:Z

    .line 1284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1285
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1357
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    if-gez v0, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getSerializedSize()I

    .line 1361
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    return v0
.end method

.method public getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1372
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1375
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasSemanticResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1376
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1379
    :cond_2
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->cachedSize:I

    .line 1380
    return v0
.end method

.method public getStability()D
    .locals 2

    .prologue
    .line 1292
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSemanticResult()Z
    .locals 1

    .prologue
    .line 1309
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasSemanticResult:Z

    return v0
.end method

.method public hasStability()Z
    .locals 1

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasSemanticResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 1266
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1389
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1393
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1394
    :sswitch_0
    return-object p0

    .line 1399
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    goto :goto_0

    .line 1403
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->setStability(D)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    goto :goto_0

    .line 1407
    :sswitch_3
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    .line 1408
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1409
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->setSemanticResult(Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    goto :goto_0

    .line 1389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setSemanticResult(Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .parameter "value"

    .prologue
    .line 1312
    if-nez p1, :cond_0

    .line 1313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1315
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasSemanticResult:Z

    .line 1316
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 1317
    return-object p0
.end method

.method public setStability(D)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .parameter "value"

    .prologue
    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability:Z

    .line 1296
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->stability_:D

    .line 1297
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .locals 1
    .parameter "value"

    .prologue
    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText:Z

    .line 1279
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->text_:Ljava/lang/String;

    .line 1280
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1346
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1347
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1349
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasSemanticResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1350
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1352
    :cond_2
    return-void
.end method
