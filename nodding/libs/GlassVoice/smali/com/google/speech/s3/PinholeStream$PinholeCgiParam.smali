.class public final Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeCgiParam"
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasKey:Z

.field private hasValue:Z

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    .line 201
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->clearKey()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 239
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->clearValue()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    .line 241
    return-object p0
.end method

.method public clearKey()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasKey:Z

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public clearValue()Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasValue:Z

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    if-gez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->getSerializedSize()I

    .line 266
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->cachedSize:I

    .line 281
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 245
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
    .line 198
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 290
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 294
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    :sswitch_0
    return-object p0

    .line 300
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    goto :goto_0

    .line 304
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .parameter "value"

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasKey:Z

    .line 211
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->key_:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .parameter "value"

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasValue:Z

    .line 228
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->value_:Ljava/lang/String;

    .line 229
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
    .line 251
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 257
    :cond_1
    return-void
.end method
