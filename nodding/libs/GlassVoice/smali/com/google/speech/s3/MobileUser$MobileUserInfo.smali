.class public final Lcom/google/speech/s3/MobileUser$MobileUserInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MobileUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/MobileUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileUserInfo"
.end annotation


# static fields
.field public static final NETWORK_MCC_FIELD_NUMBER:I = 0x1

.field public static final NETWORK_MNC_FIELD_NUMBER:I = 0x2

.field public static final NETWORK_TYPE_BLUETOOTH:I = 0x11

.field public static final NETWORK_TYPE_CDMA:I = 0x3

.field public static final NETWORK_TYPE_EDGE:I = 0x4

.field public static final NETWORK_TYPE_EHRPD:I = 0x5

.field public static final NETWORK_TYPE_ETHERNET:I = 0x12

.field public static final NETWORK_TYPE_EVDO_0:I = 0x6

.field public static final NETWORK_TYPE_EVDO_A:I = 0x7

.field public static final NETWORK_TYPE_EVDO_B:I = 0x8

.field public static final NETWORK_TYPE_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_TYPE_GPRS:I = 0x9

.field public static final NETWORK_TYPE_HSDPA:I = 0xa

.field public static final NETWORK_TYPE_HSPA:I = 0xb

.field public static final NETWORK_TYPE_HSPAP:I = 0xc

.field public static final NETWORK_TYPE_HSUPA:I = 0xd

.field public static final NETWORK_TYPE_IDEN:I = 0xe

.field public static final NETWORK_TYPE_LTE:I = 0xf

.field public static final NETWORK_TYPE_RTT:I = 0x2

.field public static final NETWORK_TYPE_UMTS:I = 0x10

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_UNKNOWN_CELLULAR:I = 0x14

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field public static final NETWORK_TYPE_WIMAX:I = 0x13

.field public static final SIM_MCC_FIELD_NUMBER:I = 0x3

.field public static final SIM_MNC_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private hasNetworkMcc:Z

.field private hasNetworkMnc:Z

.field private hasNetworkType:Z

.field private hasSimMcc:Z

.field private hasSimMnc:Z

.field private networkMcc_:I

.field private networkMnc_:I

.field private networkType_:I

.field private simMcc_:I

.field private simMnc_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 38
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 55
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 72
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 89
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 106
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    check-cast v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->clearNetworkMcc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 122
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->clearNetworkMnc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 123
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->clearSimMcc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 124
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->clearSimMnc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 125
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->clearNetworkType()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    .line 127
    return-object p0
.end method

.method public clearNetworkMcc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMcc:Z

    .line 48
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 49
    return-object p0
.end method

.method public clearNetworkMnc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMnc:Z

    .line 65
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 66
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkType:Z

    .line 116
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 117
    return-object p0
.end method

.method public clearSimMcc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMcc:Z

    .line 82
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 83
    return-object p0
.end method

.method public clearSimMnc()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMnc:Z

    .line 99
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 100
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getSerializedSize()I

    .line 161
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    return v0
.end method

.method public getNetworkMcc()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    return v0
.end method

.method public getNetworkMnc()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMcc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getNetworkMcc()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMnc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getNetworkMnc()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMcc()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getSimMcc()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMnc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getSimMnc()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_4
    iput v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->cachedSize:I

    .line 188
    return v0
.end method

.method public getSimMcc()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    return v0
.end method

.method public getSimMnc()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    return v0
.end method

.method public hasNetworkMcc()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMcc:Z

    return v0
.end method

.method public hasNetworkMnc()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMnc:Z

    return v0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkType:Z

    return v0
.end method

.method public hasSimMcc()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMcc:Z

    return v0
.end method

.method public hasSimMnc()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMnc:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 131
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
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 197
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :sswitch_0
    return-object p0

    .line 207
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setNetworkMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    goto :goto_0

    .line 211
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setNetworkMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    goto :goto_0

    .line 215
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setSimMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    goto :goto_0

    .line 219
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setSimMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    goto :goto_0

    .line 223
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setNetworkType(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setNetworkMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMcc:Z

    .line 43
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMcc_:I

    .line 44
    return-object p0
.end method

.method public setNetworkMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMnc:Z

    .line 60
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkMnc_:I

    .line 61
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkType:Z

    .line 111
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->networkType_:I

    .line 112
    return-object p0
.end method

.method public setSimMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMcc:Z

    .line 77
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMcc_:I

    .line 78
    return-object p0
.end method

.method public setSimMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMnc:Z

    .line 94
    iput p1, p0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->simMnc_:I

    .line 95
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
    .line 137
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getNetworkMcc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkMnc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getNetworkMnc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMcc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getSimMcc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasSimMnc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getSimMnc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->hasNetworkType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->getNetworkType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 152
    :cond_4
    return-void
.end method
