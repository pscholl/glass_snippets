.class public final Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelClientInfo"
.end annotation


# static fields
.field public static final CLIENT_FIELD_NUMBER:I = 0xa

.field public static final CLIENT_NAME_FIELD_NUMBER:I = 0xb

.field public static final GSERVICES_COUNTRY_CODE_FIELD_NUMBER:I = 0xc

.field public static final SYSTEM_TIME_MS_FIELD_NUMBER:I = 0x7

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x8

.field public static final USE_COMPRESSED_RESPONSE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private clientName_:Ljava/lang/String;

.field private client_:I

.field private gservicesCountryCode_:Ljava/lang/String;

.field private hasClient:Z

.field private hasClientName:Z

.field private hasGservicesCountryCode:Z

.field private hasSystemTimeMs:Z

.field private hasTimeZone:Z

.field private hasUseCompressedResponse:Z

.field private systemTimeMs_:J

.field private timeZone_:Ljava/lang/String;

.field private useCompressedResponse_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-boolean v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearUseCompressedResponse()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 116
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearSystemTimeMs()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 117
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearTimeZone()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 118
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearClient()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 119
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearClientName()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 120
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clearGservicesCountryCode()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 122
    return-object p0
.end method

.method public clearClient()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient:Z

    .line 76
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 77
    return-object p0
.end method

.method public clearClientName()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public clearGservicesCountryCode()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public clearSystemTimeMs()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 43
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public clearUseCompressedResponse()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse:Z

    .line 25
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 26
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSerializedSize()I

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    return v0
.end method

.method public getClient()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    return v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGservicesCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getUseCompressedResponse()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSystemTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClient()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getGservicesCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_5
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->cachedSize:I

    .line 190
    return v0
.end method

.method public getSystemTimeMs()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCompressedResponse()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    return v0
.end method

.method public hasClient()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient:Z

    return v0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName:Z

    return v0
.end method

.method public hasGservicesCountryCode()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode:Z

    return v0
.end method

.method public hasSystemTimeMs()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone:Z

    return v0
.end method

.method public hasUseCompressedResponse()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 126
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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 199
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :sswitch_0
    return-object p0

    .line 209
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setUseCompressedResponse(Z)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 213
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setSystemTimeMs(J)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 217
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setTimeZone(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 221
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setClient(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 225
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setClientName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 229
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->setGservicesCountryCode(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x38 -> :sswitch_2
        0x42 -> :sswitch_3
        0x50 -> :sswitch_4
        0x5a -> :sswitch_5
        0x62 -> :sswitch_6
    .end sparse-switch
.end method

.method public setClient(I)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient:Z

    .line 71
    iput p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->client_:I

    .line 72
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName:Z

    .line 88
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->clientName_:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setGservicesCountryCode(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode:Z

    .line 105
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setSystemTimeMs(J)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs:Z

    .line 37
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->systemTimeMs_:J

    .line 38
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone:Z

    .line 54
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->timeZone_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setUseCompressedResponse(Z)Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse:Z

    .line 20
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->useCompressedResponse_:Z

    .line 21
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasUseCompressedResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getUseCompressedResponse()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasSystemTimeMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getSystemTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClient()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClient()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasClientName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->hasGservicesCountryCode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;->getGservicesCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 150
    :cond_5
    return-void
.end method
