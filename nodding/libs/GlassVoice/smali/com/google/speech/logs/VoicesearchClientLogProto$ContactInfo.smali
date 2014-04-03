.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactInfo"
.end annotation


# static fields
.field public static final GRAMMAR_WEIGHT_FIELD_NUMBER:I = 0x1

.field public static final RECOGNIZER_EMBEDDED:I = 0x2

.field public static final RECOGNIZER_NETWORK:I = 0x1

.field public static final RECOGNIZER_NETWORK_AND_EMBEDDED:I = 0x3

.field public static final SOURCE_FIELD_NUMBER:I = 0x3

.field public static final SYNCED_CONTACT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private grammarWeight_:D

.field private hasGrammarWeight:Z

.field private hasSource:Z

.field private hasSyncedContact:Z

.field private source_:I

.field private syncedContact_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2303
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 2330
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 2347
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 2387
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    .line 2303
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2455
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2449
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1

    .prologue
    .line 2362
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->clearGrammarWeight()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 2363
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->clearSyncedContact()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 2364
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->clearSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 2365
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    .line 2366
    return-object p0
.end method

.method public clearGrammarWeight()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 2

    .prologue
    .line 2322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasGrammarWeight:Z

    .line 2323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 2324
    return-object p0
.end method

.method public clearSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2356
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSource:Z

    .line 2357
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 2358
    return-object p0
.end method

.method public clearSyncedContact()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2339
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSyncedContact:Z

    .line 2340
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 2341
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2390
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2392
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getSerializedSize()I

    .line 2394
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    return v0
.end method

.method public getGrammarWeight()D
    .locals 2

    .prologue
    .line 2314
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2399
    const/4 v0, 0x0

    .line 2400
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasGrammarWeight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2401
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getGrammarWeight()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2404
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSyncedContact()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2405
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getSyncedContact()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2408
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2409
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getSource()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2412
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->cachedSize:I

    .line 2413
    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 2348
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    return v0
.end method

.method public getSyncedContact()Z
    .locals 1

    .prologue
    .line 2331
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    return v0
.end method

.method public hasGrammarWeight()Z
    .locals 1

    .prologue
    .line 2315
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasGrammarWeight:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 2349
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSource:Z

    return v0
.end method

.method public hasSyncedContact()Z
    .locals 1

    .prologue
    .line 2332
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSyncedContact:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2370
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
    .line 2300
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2421
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2422
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2426
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2427
    :sswitch_0
    return-object p0

    .line 2432
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->setGrammarWeight(D)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    goto :goto_0

    .line 2436
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->setSyncedContact(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    goto :goto_0

    .line 2440
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->setSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    goto :goto_0

    .line 2422
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setGrammarWeight(D)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasGrammarWeight:Z

    .line 2318
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->grammarWeight_:D

    .line 2319
    return-object p0
.end method

.method public setSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSource:Z

    .line 2352
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->source_:I

    .line 2353
    return-object p0
.end method

.method public setSyncedContact(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSyncedContact:Z

    .line 2335
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->syncedContact_:Z

    .line 2336
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
    .line 2376
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasGrammarWeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getGrammarWeight()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 2379
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSyncedContact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getSyncedContact()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2382
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2383
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;->getSource()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2385
    :cond_2
    return-void
.end method
