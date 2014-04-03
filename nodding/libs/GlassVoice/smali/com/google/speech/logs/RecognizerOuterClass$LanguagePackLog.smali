.class public final Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguagePackLog"
.end annotation


# static fields
.field public static final LOCALE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLocale:Z

.field private hasVersion:Z

.field private locale_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1315
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1373
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1315
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1427
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->clearLocale()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1353
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->clearVersion()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1355
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale:Z

    .line 1330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1331
    return-object p0
.end method

.method public clearVersion()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion:Z

    .line 1347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1348
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1376
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getSerializedSize()I

    .line 1380
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1391
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1394
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1395
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1359
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
    .line 1312
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1403
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1404
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1408
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    :sswitch_0
    return-object p0

    .line 1414
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    goto :goto_0

    .line 1418
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    goto :goto_0

    .line 1404
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale:Z

    .line 1325
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 1326
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion:Z

    .line 1342
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1343
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
    .line 1365
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1371
    :cond_1
    return-void
.end method
