.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bluetooth"
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_MS_FIELD_NUMBER:I = 0x1

.field public static final SCO_CONNECTION_TIMEOUT_MS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private connectionTimeoutMs_:I

.field private hasConnectionTimeoutMs:Z

.field private hasScoConnectionTimeoutMs:Z

.field private scoConnectionTimeoutMs_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 979
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 984
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 1001
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 1037
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    .line 979
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1097
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1091
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->clearConnectionTimeoutMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->clearScoConnectionTimeoutMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 1018
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    .line 1019
    return-object p0
.end method

.method public clearConnectionTimeoutMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 993
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasConnectionTimeoutMs:Z

    .line 994
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 995
    return-object p0
.end method

.method public clearScoConnectionTimeoutMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1010
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasScoConnectionTimeoutMs:Z

    .line 1011
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 1012
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    if-gez v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->getSerializedSize()I

    .line 1044
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    return v0
.end method

.method public getConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    return v0
.end method

.method public getScoConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasConnectionTimeoutMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1051
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->getConnectionTimeoutMs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasScoConnectionTimeoutMs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->getScoConnectionTimeoutMs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1058
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->cachedSize:I

    .line 1059
    return v0
.end method

.method public hasConnectionTimeoutMs()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasConnectionTimeoutMs:Z

    return v0
.end method

.method public hasScoConnectionTimeoutMs()Z
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasScoConnectionTimeoutMs:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1023
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
    .line 976
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1067
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1068
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1072
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1073
    :sswitch_0
    return-object p0

    .line 1078
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->setConnectionTimeoutMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    goto :goto_0

    .line 1082
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->setScoConnectionTimeoutMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    goto :goto_0

    .line 1068
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConnectionTimeoutMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .parameter "value"

    .prologue
    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasConnectionTimeoutMs:Z

    .line 989
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->connectionTimeoutMs_:I

    .line 990
    return-object p0
.end method

.method public setScoConnectionTimeoutMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1
    .parameter "value"

    .prologue
    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasScoConnectionTimeoutMs:Z

    .line 1006
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->scoConnectionTimeoutMs_:I

    .line 1007
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
    .line 1029
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasConnectionTimeoutMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->getConnectionTimeoutMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->hasScoConnectionTimeoutMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;->getScoConnectionTimeoutMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1035
    :cond_1
    return-void
.end method
