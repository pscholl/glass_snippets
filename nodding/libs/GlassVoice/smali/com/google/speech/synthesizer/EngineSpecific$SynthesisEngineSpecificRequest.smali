.class public final Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EngineSpecific.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/synthesizer/EngineSpecific;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesisEngineSpecificRequest"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-direct {v0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-direct {v0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    check-cast v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1

    .prologue
    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->cachedSize:I

    .line 14
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->getSerializedSize()I

    .line 32
    :cond_0
    iget v0, p0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, size:I
    iput v0, p0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->cachedSize:I

    .line 39
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 18
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 48
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :pswitch_0
    return-object p0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 23
    return-void
.end method
