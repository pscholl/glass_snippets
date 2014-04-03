.class public final Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProvenanceProto"
.end annotation


# static fields
.field public static final LOCATION_PROVENANCE_GWS_MOBILE_CLIENT:I = 0x6

.field public static final LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_GLL_PARAM:I = 0x3

.field public static final LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_NEAR_PARAM:I = 0x5

.field public static final LOCATION_PROVENANCE_MAPS_FRONTEND_IL_DEBUG_IP:I = 0x4

.field public static final LOCATION_PROVENANCE_MOBILE_FE:I = 0x2

.field public static final LOCATION_PROVENANCE_TOOLBAR:I = 0x1

.field public static final LOCATION_PROVENANCE_UNREMARKABLE:I = 0x0

.field public static final LOCATION_PROVENANCE_XFF_HEADER:I = 0x7


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->cachedSize:I

    .line 268
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1

    .prologue
    .line 281
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->cachedSize:I

    .line 282
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->getSerializedSize()I

    .line 300
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, size:I
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->cachedSize:I

    .line 307
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 286
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
    .line 265
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 316
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 320
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    :pswitch_0
    return-object p0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 291
    return-void
.end method
