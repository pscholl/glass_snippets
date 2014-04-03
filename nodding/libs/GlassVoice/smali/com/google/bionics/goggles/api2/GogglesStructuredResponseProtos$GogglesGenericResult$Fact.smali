.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fact"
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasValue:Z

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->name_:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->value_:Ljava/lang/String;

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->cachedSize:I

    .line 174
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->clearName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    .line 212
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->clearValue()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->cachedSize:I

    .line 214
    return-object p0
.end method

.method public clearName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasName:Z

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->name_:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public clearValue()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasValue:Z

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->value_:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->cachedSize:I

    if-gez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->getSerializedSize()I

    .line 239
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_1
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->cachedSize:I

    .line 254
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasName:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 263
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    :sswitch_0
    return-object p0

    .line 273
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->setName(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    goto :goto_0

    .line 277
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->setValue(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    goto :goto_0

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 171
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1
    .parameter "value"

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasName:Z

    .line 184
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->name_:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1
    .parameter "value"

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasValue:Z

    .line 201
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->value_:Ljava/lang/String;

    .line 202
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
    .line 224
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 230
    :cond_1
    return-void
.end method
