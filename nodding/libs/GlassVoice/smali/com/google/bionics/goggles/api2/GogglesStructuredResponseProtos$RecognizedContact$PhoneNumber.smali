.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneNumber"
.end annotation


# static fields
.field public static final FULL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private full_:Ljava/lang/String;

.field private hasFull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->full_:Ljava/lang/String;

    .line 877
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->cachedSize:I

    .line 840
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->clearFull()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    .line 861
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->cachedSize:I

    .line 862
    return-object p0
.end method

.method public clearFull()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->hasFull:Z

    .line 855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->full_:Ljava/lang/String;

    .line 856
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->cachedSize:I

    if-gez v0, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->getSerializedSize()I

    .line 884
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->cachedSize:I

    return v0
.end method

.method public getFull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->full_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->hasFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->getFull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 894
    :cond_0
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->cachedSize:I

    .line 895
    return v0
.end method

.method public hasFull()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->hasFull:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 904
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 908
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    :sswitch_0
    return-object p0

    .line 914
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->setFull(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    goto :goto_0

    .line 904
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 837
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 923
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    return-object v0
.end method

.method public setFull(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 1
    .parameter "value"

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->hasFull:Z

    .line 850
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->full_:Ljava/lang/String;

    .line 851
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
    .line 872
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->hasFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->getFull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 875
    :cond_0
    return-void
.end method
