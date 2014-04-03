.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkRecognizer"
.end annotation


# static fields
.field public static final MAX_RETRIES_FIELD_NUMBER:I = 0x1

.field public static final MAX_RETRY_TIMEOUT_MSEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasMaxRetries:Z

.field private hasMaxRetryTimeoutMsec:Z

.field private maxRetries_:I

.field private maxRetryTimeoutMsec_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1328
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1333
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1350
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1386
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    .line 1328
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1446
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1440
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->clearMaxRetries()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 1366
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->clearMaxRetryTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 1367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    .line 1368
    return-object p0
.end method

.method public clearMaxRetries()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1342
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetries:Z

    .line 1343
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1344
    return-object p0
.end method

.method public clearMaxRetryTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1359
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetryTimeoutMsec:Z

    .line 1360
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1361
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1389
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    if-gez v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getSerializedSize()I

    .line 1393
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    return v0
.end method

.method public getMaxRetries()I
    .locals 1

    .prologue
    .line 1334
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    return v0
.end method

.method public getMaxRetryTimeoutMsec()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetries()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetryTimeoutMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1404
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetryTimeoutMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1407
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    .line 1408
    return v0
.end method

.method public hasMaxRetries()Z
    .locals 1

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetries:Z

    return v0
.end method

.method public hasMaxRetryTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetryTimeoutMsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x1

    return v0
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
    .line 1325
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1416
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1417
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1421
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1422
    :sswitch_0
    return-object p0

    .line 1427
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->setMaxRetries(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    goto :goto_0

    .line 1431
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->setMaxRetryTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    goto :goto_0

    .line 1417
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMaxRetries(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .parameter "value"

    .prologue
    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetries:Z

    .line 1338
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1339
    return-object p0
.end method

.method public setMaxRetryTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .parameter "value"

    .prologue
    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetryTimeoutMsec:Z

    .line 1355
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1356
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
    .line 1378
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetries()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1381
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->hasMaxRetryTimeoutMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetryTimeoutMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1384
    :cond_1
    return-void
.end method
