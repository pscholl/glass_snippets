.class public final Llocation/unified/LocationDescriptorProto$LocationRoleProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationRoleProto"
.end annotation


# static fields
.field public static final LOCATION_ROLE_CURRENT_LOCATION:I = 0x1

.field public static final LOCATION_ROLE_DEFAULT_LOCATION:I = 0x2

.field public static final LOCATION_ROLE_HISTORICAL_LOCATION:I = 0x6

.field public static final LOCATION_ROLE_HISTORICAL_QUERY:I = 0x5

.field public static final LOCATION_ROLE_QUERY:I = 0x3

.field public static final LOCATION_ROLE_UNKNOWN_ROLE:I = 0x0

.field public static final LOCATION_ROLE_USER_SPECIFIED_FOR_REQUEST:I = 0x4

.field public static final LOCATION_ROLE_VIEWPORT:I = 0x7

.field public static final WILDCARD_ROLE:I = -0x1


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->cachedSize:I

    .line 77
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->cachedSize:I

    .line 92
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->getSerializedSize()I

    .line 110
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, size:I
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->cachedSize:I

    .line 117
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 96
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
    .line 74
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 126
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 130
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :pswitch_0
    return-object p0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 101
    return-void
.end method
