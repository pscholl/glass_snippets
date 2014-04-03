.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionMetadata"
.end annotation


# static fields
.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasSessionId:Z

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 770
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    .line 733
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 816
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->clearSessionId()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 754
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    .line 755
    return-object p0
.end method

.method public clearSessionId()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->hasSessionId:Z

    .line 748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 749
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->getSerializedSize()I

    .line 777
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->hasSessionId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 787
    :cond_0
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    .line 788
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->hasSessionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 797
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 801
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    :sswitch_0
    return-object p0

    .line 807
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->setSessionId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    goto :goto_0

    .line 797
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
    .line 730
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->hasSessionId:Z

    .line 743
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 744
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
    .line 765
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 768
    :cond_0
    return-void
.end method
