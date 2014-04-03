.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddedRecognizer"
.end annotation


# static fields
.field public static final GRAMMAR_COMPILATION_FREQUENCY_MS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private grammarCompilationFrequencyMs_:I

.field private hasGrammarCompilationFrequencyMs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1236
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 1268
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    .line 1231
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1314
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->clearGrammarCompilationFrequencyMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 1252
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    .line 1253
    return-object p0
.end method

.method public clearGrammarCompilationFrequencyMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1245
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->hasGrammarCompilationFrequencyMs:Z

    .line 1246
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 1247
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    if-gez v0, :cond_0

    .line 1273
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->getSerializedSize()I

    .line 1275
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    return v0
.end method

.method public getGrammarCompilationFrequencyMs()I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->hasGrammarCompilationFrequencyMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->getGrammarCompilationFrequencyMs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1285
    :cond_0
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    .line 1286
    return v0
.end method

.method public hasGrammarCompilationFrequencyMs()Z
    .locals 1

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->hasGrammarCompilationFrequencyMs:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1257
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
    .line 1228
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1295
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1299
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1300
    :sswitch_0
    return-object p0

    .line 1305
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->setGrammarCompilationFrequencyMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    goto :goto_0

    .line 1295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setGrammarCompilationFrequencyMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1
    .parameter "value"

    .prologue
    .line 1240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->hasGrammarCompilationFrequencyMs:Z

    .line 1241
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 1242
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
    .line 1263
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->hasGrammarCompilationFrequencyMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->getGrammarCompilationFrequencyMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1266
    :cond_0
    return-void
.end method
