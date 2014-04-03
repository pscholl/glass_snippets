.class public final Lcom/google/speech/s3/S3$S3ExperimentInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ExperimentInfo"
.end annotation


# static fields
.field public static final APPLICABLE_EXPERIMENTS_FIELD_NUMBER:I = 0x1

.field public static final ENABLED_EXPERIMENTS_FIELD_NUMBER:I = 0x2


# instance fields
.field private applicableExperiments_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private enabledExperiments_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    .line 1218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    .line 1265
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    .line 1187
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1335
    new-instance v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ExperimentInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1329
    new-instance v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    check-cast v0, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    return-object v0
.end method


# virtual methods
.method public addApplicableExperiments(I)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    return-object p0
.end method

.method public addEnabledExperiments(I)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->clearApplicableExperiments()Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 1245
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->clearEnabledExperiments()Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 1246
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    .line 1247
    return-object p0
.end method

.method public clearApplicableExperiments()Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1

    .prologue
    .line 1212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    .line 1213
    return-object p0
.end method

.method public clearEnabledExperiments()Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1

    .prologue
    .line 1239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    .line 1240
    return-object p0
.end method

.method public getApplicableExperiments(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getApplicableExperimentsCount()I
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApplicableExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getSerializedSize()I

    .line 1272
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    return v0
.end method

.method public getEnabledExperiments(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnabledExperimentsCount()I
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1277
    const/4 v3, 0x0

    .line 1279
    .local v3, size:I
    const/4 v0, 0x0

    .line 1280
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getApplicableExperimentsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1281
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1284
    .end local v1           #element:I
    :cond_0
    add-int/2addr v3, v0

    .line 1285
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getApplicableExperimentsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1288
    const/4 v0, 0x0

    .line 1289
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getEnabledExperimentsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1290
    .restart local v1       #element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1293
    .end local v1           #element:I
    :cond_1
    add-int/2addr v3, v0

    .line 1294
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getEnabledExperimentsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1296
    iput v3, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->cachedSize:I

    .line 1297
    return v3
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1251
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
    .line 1184
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ExperimentInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1306
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1310
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1311
    :sswitch_0
    return-object p0

    .line 1316
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->addApplicableExperiments(I)Lcom/google/speech/s3/S3$S3ExperimentInfo;

    goto :goto_0

    .line 1320
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->addEnabledExperiments(I)Lcom/google/speech/s3/S3$S3ExperimentInfo;

    goto :goto_0

    .line 1306
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setApplicableExperiments(II)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->applicableExperiments_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1202
    return-object p0
.end method

.method public setEnabledExperiments(II)Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ExperimentInfo;->enabledExperiments_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1229
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
    .line 1257
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getApplicableExperimentsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1258
    .local v0, element:I
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 1260
    .end local v0           #element:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ExperimentInfo;->getEnabledExperimentsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1261
    .restart local v0       #element:I
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_1

    .line 1263
    .end local v0           #element:I
    :cond_1
    return-void
.end method
