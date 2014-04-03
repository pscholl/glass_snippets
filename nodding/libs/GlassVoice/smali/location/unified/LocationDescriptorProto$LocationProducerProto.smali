.class public final Llocation/unified/LocationDescriptorProto$LocationProducerProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProducerProto"
.end annotation


# static fields
.field public static final LOCATION_PRODUCER_ADS_CRITERIA_ID:I = 0x17

.field public static final LOCATION_PRODUCER_ADS_GEO_PARAM:I = 0x26

.field public static final LOCATION_PRODUCER_ADS_PARTNER_GEO_PARAM:I = 0x27

.field public static final LOCATION_PRODUCER_CALENDAR:I = 0x1c

.field public static final LOCATION_PRODUCER_CARRIER_COUNTRY:I = 0x11

.field public static final LOCATION_PRODUCER_CIRCULARS_FRONTEND:I = 0x21

.field public static final LOCATION_PRODUCER_DEFAULT_LOCATION_OVERRIDE_PRODUCER:I = 0x20

.field public static final LOCATION_PRODUCER_DEVICE_LOCATION:I = 0xc

.field public static final LOCATION_PRODUCER_GMAIL_THEME:I = 0x1a

.field public static final LOCATION_PRODUCER_GOOGLE_HOST_DOMAIN:I = 0x4

.field public static final LOCATION_PRODUCER_GWS_MOBILE_HISTORY_ZWIEBACK:I = 0x22

.field public static final LOCATION_PRODUCER_IGOOGLE:I = 0x1b

.field public static final LOCATION_PRODUCER_IP_ADDRESS:I = 0x3

.field public static final LOCATION_PRODUCER_IP_ADDRESS_REALTIME:I = 0x2a

.field public static final LOCATION_PRODUCER_LEGACY_GL_COOKIE:I = 0x23

.field public static final LOCATION_PRODUCER_LEGACY_GL_PARAM:I = 0x1e

.field public static final LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_GLL:I = 0xa

.field public static final LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_NEAR:I = 0x13

.field public static final LOCATION_PRODUCER_LEGACY_NEAR_PARAM:I = 0xb

.field public static final LOCATION_PRODUCER_LEGACY_PARTNER_GL_PARAM:I = 0x1f

.field public static final LOCATION_PRODUCER_LEGACY_TOOLBAR_HEADER:I = 0x9

.field public static final LOCATION_PRODUCER_LOCAL_UNIVERSAL:I = 0x8

.field public static final LOCATION_PRODUCER_LOGGED_IN_USER_SPECIFIED:I = 0x1

.field public static final LOCATION_PRODUCER_MAPS_FRONTEND:I = 0x15

.field public static final LOCATION_PRODUCER_MOBILE_APP:I = 0x18

.field public static final LOCATION_PRODUCER_MOBILE_FE_HISTORY:I = 0xe

.field public static final LOCATION_PRODUCER_MOBILE_SELECTED:I = 0xf

.field public static final LOCATION_PRODUCER_OZ_FRONTEND:I = 0x25

.field public static final LOCATION_PRODUCER_PARTNER:I = 0x10

.field public static final LOCATION_PRODUCER_PREF_L_FIELD_ADDRESS:I = 0x2

.field public static final LOCATION_PRODUCER_PRODUCT_SEARCH_FRONTEND:I = 0x16

.field public static final LOCATION_PRODUCER_QUERY_HISTORY_INFERRED:I = 0x19

.field public static final LOCATION_PRODUCER_QUERY_LOCATION_OVERRIDE_PRODUCER:I = 0x29

.field public static final LOCATION_PRODUCER_RQUERY:I = 0x5

.field public static final LOCATION_PRODUCER_SEARCH_TOOLBELT:I = 0xd

.field public static final LOCATION_PRODUCER_SHOPPING_SEARCH_API:I = 0x24

.field public static final LOCATION_PRODUCER_SHOWTIME_ONEBOX:I = 0x7

.field public static final LOCATION_PRODUCER_SMS_SEARCH:I = 0x1d

.field public static final LOCATION_PRODUCER_SQUERY:I = 0x6

.field public static final LOCATION_PRODUCER_UNKNOWN_PRODUCER:I = 0x0

.field public static final LOCATION_PRODUCER_VIEWPORT_PARAMS:I = 0x28

.field public static final LOCATION_PRODUCER_WEB_SEARCH_PREFERENCES_PAGE:I = 0x14

.field public static final LOCATION_PRODUCER_WEB_SEARCH_RESULTS_PAGE_SHARED:I = 0x12

.field public static final WILDCARD_PRODUCER:I = -0x1


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->cachedSize:I

    .line 155
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 1

    .prologue
    .line 204
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->cachedSize:I

    .line 205
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->getSerializedSize()I

    .line 223
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, size:I
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->cachedSize:I

    .line 230
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 209
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
    .line 152
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationProducerProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 239
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 243
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LocationProducerProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :pswitch_0
    return-object p0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 214
    return-void
.end method
