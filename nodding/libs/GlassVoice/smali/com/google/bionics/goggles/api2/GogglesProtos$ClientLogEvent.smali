.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientLogEvent"
.end annotation


# static fields
.field public static final CLIENT_EVENT_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_TIME_MS_FIELD_NUMBER:I = 0x1

.field public static final IMPRESSION_FIELD_NUMBER:I = 0x4

.field public static final USER_EVENT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

.field private clientTimeMs_:J

.field private hasClientEvent:Z

.field private hasClientTimeMs:Z

.field private hasImpression:Z

.field private hasUserEvent:Z

.field private impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

.field private userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2901
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2906
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2923
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2943
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2963
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 3010
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 2901
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3092
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3086
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 2981
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearClientTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 2982
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 2983
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 2984
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clearImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 2985
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 2986
    return-object p0
.end method

.method public clearClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 2955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent:Z

    .line 2956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2957
    return-object p0
.end method

.method public clearClientTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 2

    .prologue
    .line 2915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs:Z

    .line 2916
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2917
    return-object p0
.end method

.method public clearImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 2975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression:Z

    .line 2976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2977
    return-object p0
.end method

.method public clearUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1

    .prologue
    .line 2935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent:Z

    .line 2936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2937
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3013
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getSerializedSize()I

    .line 3017
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    return v0
.end method

.method public getClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    return-object v0
.end method

.method public getClientTimeMs()J
    .locals 2

    .prologue
    .line 2907
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    return-wide v0
.end method

.method public getImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3022
    const/4 v0, 0x0

    .line 3023
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3024
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3027
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3028
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3031
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3032
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3035
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3036
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3039
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->cachedSize:I

    .line 3040
    return v0
.end method

.method public getUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    return-object v0
.end method

.method public hasClientEvent()Z
    .locals 1

    .prologue
    .line 2944
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent:Z

    return v0
.end method

.method public hasClientTimeMs()Z
    .locals 1

    .prologue
    .line 2908
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs:Z

    return v0
.end method

.method public hasImpression()Z
    .locals 1

    .prologue
    .line 2964
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression:Z

    return v0
.end method

.method public hasUserEvent()Z
    .locals 1

    .prologue
    .line 2924
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2990
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3048
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3049
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3053
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3054
    :sswitch_0
    return-object p0

    .line 3059
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setClientTimeMs(J)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3063
    :sswitch_2
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    .line 3064
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3065
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setUserEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3069
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    :sswitch_3
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    .line 3070
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3071
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setClientEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3075
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    :sswitch_4
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    .line 3076
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3077
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->setImpression(Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    goto :goto_0

    .line 3049
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2898
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public setClientEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2947
    if-nez p1, :cond_0

    .line 2948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2950
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent:Z

    .line 2951
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2952
    return-object p0
.end method

.method public setClientTimeMs(J)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs:Z

    .line 2911
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->clientTimeMs_:J

    .line 2912
    return-object p0
.end method

.method public setImpression(Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2967
    if-nez p1, :cond_0

    .line 2968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2970
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression:Z

    .line 2971
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->impression_:Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2972
    return-object p0
.end method

.method public setUserEvent(Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2927
    if-nez p1, :cond_0

    .line 2928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2930
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent:Z

    .line 2931
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->userEvent_:Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2932
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
    .line 2996
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientTimeMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2999
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasUserEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3000
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getUserEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3002
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasClientEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3003
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getClientEvent()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3005
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->hasImpression()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3006
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;->getImpression()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3008
    :cond_3
    return-void
.end method
