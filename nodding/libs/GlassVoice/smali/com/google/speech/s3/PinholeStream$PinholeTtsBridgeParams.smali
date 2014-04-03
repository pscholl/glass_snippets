.class public final Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeTtsBridgeParams"
.end annotation


# static fields
.field public static final TTS_STRING_PREFIX_FIELD_NUMBER:I = 0x1

.field public static final TTS_STRING_SUFFIX_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasTtsStringPrefix:Z

.field private hasTtsStringSuffix:Z

.field private ttsStringPrefix_:Ljava/lang/String;

.field private ttsStringSuffix_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 896
    const-string v0, "\\u003C!-- ectanstts "

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 913
    const-string v0, " ectanstts --\\u003E"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 949
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    .line 891
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->clearTtsStringPrefix()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 929
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->clearTtsStringSuffix()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 930
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    .line 931
    return-object p0
.end method

.method public clearTtsStringPrefix()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringPrefix:Z

    .line 906
    const-string v0, "\\u003C!-- ectanstts "

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 907
    return-object p0
.end method

.method public clearTtsStringSuffix()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringSuffix:Z

    .line 923
    const-string v0, " ectanstts --\\u003E"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 924
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->getSerializedSize()I

    .line 956
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringPrefix()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->getTtsStringPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringSuffix()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->getTtsStringSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->cachedSize:I

    .line 971
    return v0
.end method

.method public getTtsStringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsStringSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTtsStringPrefix()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringPrefix:Z

    return v0
.end method

.method public hasTtsStringSuffix()Z
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringSuffix:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 935
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
    .line 888
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 980
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 984
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    :sswitch_0
    return-object p0

    .line 990
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->setTtsStringPrefix(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    goto :goto_0

    .line 994
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->setTtsStringSuffix(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    goto :goto_0

    .line 980
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setTtsStringPrefix(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringPrefix:Z

    .line 901
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringPrefix_:Ljava/lang/String;

    .line 902
    return-object p0
.end method

.method public setTtsStringSuffix(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringSuffix:Z

    .line 918
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->ttsStringSuffix_:Ljava/lang/String;

    .line 919
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
    .line 941
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->getTtsStringPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->hasTtsStringSuffix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;->getTtsStringSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 947
    :cond_1
    return-void
.end method
