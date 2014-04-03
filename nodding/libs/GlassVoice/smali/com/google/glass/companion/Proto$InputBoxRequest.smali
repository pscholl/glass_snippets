.class public final Lcom/google/glass/companion/Proto$InputBoxRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxRequest;


# instance fields
.field private cachedSize:I

.field public dismissInputBox:Ljava/lang/Boolean;

.field public handlerObject:[B

.field public hintText:Ljava/lang/String;

.field public inputType:Ljava/lang/Integer;

.field public summaryText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3139
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$InputBoxRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3140
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3208
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    .line 3140
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3292
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3286
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3153
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    .line 3154
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    .line 3155
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    .line 3156
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    .line 3157
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    .line 3158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    .line 3159
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3164
    if-ne p1, p0, :cond_1

    .line 3167
    :cond_0
    :goto_0
    return v1

    .line 3165
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3166
    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 3167
    .local v0, other:Lcom/google/glass/companion/Proto$InputBoxRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3211
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 3213
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$InputBoxRequest;->getSerializedSize()I

    .line 3215
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3220
    const/4 v0, 0x0

    .line 3221
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3222
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3225
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3226
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3229
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3230
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3233
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3234
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3237
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    if-eqz v1, :cond_4

    .line 3238
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 3241
    :cond_4
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    .line 3242
    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3175
    const/16 v1, 0x11

    .line 3176
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 3177
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 3178
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 3179
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    if-nez v4, :cond_5

    :goto_3
    add-int v1, v2, v3

    .line 3180
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 3186
    :cond_0
    return v1

    .line 3176
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 3177
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 3178
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 3179
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    .line 3182
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3183
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 3182
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3250
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3251
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3255
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3256
    :sswitch_0
    return-object p0

    .line 3261
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    goto :goto_0

    .line 3265
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    goto :goto_0

    .line 3269
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    goto :goto_0

    .line 3273
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    goto :goto_0

    .line 3277
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    goto :goto_0

    .line 3251
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 3136
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3192
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3194
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3195
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3197
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3198
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3200
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3201
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3203
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    if-eqz v0, :cond_4

    .line 3204
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 3206
    :cond_4
    return-void
.end method
