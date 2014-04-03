.class public final Lcom/google/protobuf/micro/WireFormatMicro;
.super Ljava/lang/Object;
.source "WireFormatMicro.java"


# static fields
.field static final MESSAGE_SET_ITEM:I = 0x1

#the value of this static final field might be set in the static constructor
.field static final MESSAGE_SET_ITEM_END_TAG:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MESSAGE_SET_ITEM_TAG:I = 0x0

.field static final MESSAGE_SET_MESSAGE:I = 0x3

#the value of this static final field might be set in the static constructor
.field static final MESSAGE_SET_MESSAGE_TAG:I = 0x0

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

#the value of this static final field might be set in the static constructor
.field static final MESSAGE_SET_TYPE_ID_TAG:I = 0x0

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 79
    invoke-static {v1, v3}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_ITEM_TAG:I

    .line 81
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_ITEM_END_TAG:I

    .line 83
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 85
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 65
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1
    .parameter "fieldNumber"
    .parameter "wireType"

    .prologue
    .line 70
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
