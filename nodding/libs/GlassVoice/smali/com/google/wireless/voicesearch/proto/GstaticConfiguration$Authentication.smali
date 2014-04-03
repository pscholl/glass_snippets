.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Authentication"
.end annotation


# static fields
.field public static final AUTH_TOKEN_INVALIDATE_BEFORE_USE_PERIOD_MSEC_FIELD_NUMBER:I = 0x1

.field public static final AUTH_TOKEN_PROACTIVELY_INVALIDATE_PERIOD_MSEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private authTokenInvalidateBeforeUsePeriodMsec_:I

.field private authTokenProactivelyInvalidatePeriodMsec_:I

.field private cachedSize:I

.field private hasAuthTokenInvalidateBeforeUsePeriodMsec:Z

.field private hasAuthTokenProactivelyInvalidatePeriodMsec:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1110
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 1127
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 1163
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    .line 1105
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1217
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->clearAuthTokenInvalidateBeforeUsePeriodMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 1143
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->clearAuthTokenProactivelyInvalidatePeriodMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 1144
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    .line 1145
    return-object p0
.end method

.method public clearAuthTokenInvalidateBeforeUsePeriodMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1119
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenInvalidateBeforeUsePeriodMsec:Z

    .line 1120
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 1121
    return-object p0
.end method

.method public clearAuthTokenProactivelyInvalidatePeriodMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1136
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenProactivelyInvalidatePeriodMsec:Z

    .line 1137
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 1138
    return-object p0
.end method

.method public getAuthTokenInvalidateBeforeUsePeriodMsec()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    return v0
.end method

.method public getAuthTokenProactivelyInvalidatePeriodMsec()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    if-gez v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->getSerializedSize()I

    .line 1170
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenInvalidateBeforeUsePeriodMsec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->getAuthTokenInvalidateBeforeUsePeriodMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenProactivelyInvalidatePeriodMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->getAuthTokenProactivelyInvalidatePeriodMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1184
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->cachedSize:I

    .line 1185
    return v0
.end method

.method public hasAuthTokenInvalidateBeforeUsePeriodMsec()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenInvalidateBeforeUsePeriodMsec:Z

    return v0
.end method

.method public hasAuthTokenProactivelyInvalidatePeriodMsec()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenProactivelyInvalidatePeriodMsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1149
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
    .line 1102
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1194
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1198
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1199
    :sswitch_0
    return-object p0

    .line 1204
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->setAuthTokenInvalidateBeforeUsePeriodMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    goto :goto_0

    .line 1208
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->setAuthTokenProactivelyInvalidatePeriodMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    goto :goto_0

    .line 1194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAuthTokenInvalidateBeforeUsePeriodMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .parameter "value"

    .prologue
    .line 1114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenInvalidateBeforeUsePeriodMsec:Z

    .line 1115
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenInvalidateBeforeUsePeriodMsec_:I

    .line 1116
    return-object p0
.end method

.method public setAuthTokenProactivelyInvalidatePeriodMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1
    .parameter "value"

    .prologue
    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenProactivelyInvalidatePeriodMsec:Z

    .line 1132
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->authTokenProactivelyInvalidatePeriodMsec_:I

    .line 1133
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
    .line 1155
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenInvalidateBeforeUsePeriodMsec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->getAuthTokenInvalidateBeforeUsePeriodMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->hasAuthTokenProactivelyInvalidatePeriodMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;->getAuthTokenProactivelyInvalidatePeriodMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1161
    :cond_1
    return-void
.end method
