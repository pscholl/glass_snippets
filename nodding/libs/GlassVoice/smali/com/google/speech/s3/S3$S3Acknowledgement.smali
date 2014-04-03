.class public final Lcom/google/speech/s3/S3$S3Acknowledgement;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3Acknowledgement"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3043
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3058
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Acknowledgement;->cachedSize:I

    .line 3043
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Acknowledgement;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3102
    new-instance v0, Lcom/google/speech/s3/S3$S3Acknowledgement;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Acknowledgement;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Acknowledgement;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Acknowledgement;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3Acknowledgement;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3096
    new-instance v0, Lcom/google/speech/s3/S3$S3Acknowledgement;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Acknowledgement;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Acknowledgement;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Acknowledgement;

    check-cast v0, Lcom/google/speech/s3/S3$S3Acknowledgement;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/S3$S3Acknowledgement;
    .locals 1

    .prologue
    .line 3046
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Acknowledgement;->cachedSize:I

    .line 3047
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3061
    iget v0, p0, Lcom/google/speech/s3/S3$S3Acknowledgement;->cachedSize:I

    if-gez v0, :cond_0

    .line 3063
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Acknowledgement;->getSerializedSize()I

    .line 3065
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3Acknowledgement;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 3070
    const/4 v0, 0x0

    .line 3071
    .local v0, size:I
    iput v0, p0, Lcom/google/speech/s3/S3$S3Acknowledgement;->cachedSize:I

    .line 3072
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3051
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
    .line 3040
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3Acknowledgement;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Acknowledgement;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Acknowledgement;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3080
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3081
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 3085
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3Acknowledgement;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3086
    :pswitch_0
    return-object p0

    .line 3081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 3056
    return-void
.end method
