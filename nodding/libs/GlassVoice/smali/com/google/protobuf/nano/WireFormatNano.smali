.class public final Lcom/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z = null

.field public static final EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean; = null

.field public static final EMPTY_BYTES:[B = null

.field public static final EMPTY_BYTES_ARRAY:[[B = null

.field public static final EMPTY_DOUBLE_ARRAY:[D = null

.field public static final EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double; = null

.field public static final EMPTY_FLOAT_ARRAY:[F = null

.field public static final EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float; = null

.field public static final EMPTY_INT_ARRAY:[I = null

.field public static final EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer; = null

.field public static final EMPTY_LONG_ARRAY:[J = null

.field public static final EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long; = null

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

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
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-static {v2, v4}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    .line 86
    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    .line 88
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 90
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    .line 93
    new-array v0, v1, [I

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 94
    new-array v0, v1, [J

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 95
    new-array v0, v1, [F

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 96
    new-array v0, v1, [D

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 98
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 99
    new-array v0, v1, [[B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 100
    new-array v0, v1, [B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    .line 102
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    .line 103
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

    .line 104
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

    .line 105
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

    .line 106
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeWireSize(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, unknownFields:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    if-nez p0, :cond_1

    .line 342
    const/4 v1, 0x0

    .line 349
    :cond_0
    return v1

    .line 344
    :cond_1
    const/4 v1, 0x0

    .line 345
    .local v1, size:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 346
    .local v2, unknownField:Lcom/google/protobuf/nano/UnknownFieldData;
    iget v3, v2, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 347
    iget-object v3, v2, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 348
    goto :goto_0
.end method

.method public static getExtension(Lcom/google/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .local p0, extension:Lcom/google/protobuf/nano/Extension;,"Lcom/google/protobuf/nano/Extension<TT;>;"
    .local p1, unknownFields:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    const/4 v5, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v5

    .line 183
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, dataForField:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 185
    .local v0, data:Lcom/google/protobuf/nano/UnknownFieldData;
    iget v6, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v6}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v6

    iget v7, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    if-ne v6, v7, :cond_2

    .line 186
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v0           #data:Lcom/google/protobuf/nano/UnknownFieldData;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    iget-boolean v5, p0, Lcom/google/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v5, :cond_5

    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 196
    .restart local v0       #data:Lcom/google/protobuf/nano/UnknownFieldData;
    iget-object v5, p0, Lcom/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v6, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    .end local v0           #data:Lcom/google/protobuf/nano/UnknownFieldData;
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 203
    .end local v4           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 204
    .local v3, lastData:Lcom/google/protobuf/nano/UnknownFieldData;
    iget-object v5, p0, Lcom/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v6, v3, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I
    .locals 4
    .parameter "input"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x1

    .line 162
    .local v0, arrayLength:I
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 163
    .local v1, startPos:I
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    .line 166
    .local v2, thisTag:I
    if-eq v2, p1, :cond_1

    .line 172
    .end local v2           #thisTag:I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 173
    return v0

    .line 169
    .restart local v2       #thisTag:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 171
    goto :goto_0
.end method

.method public static getTagFieldNumber(I)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 70
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 65
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1
    .parameter "fieldNumber"
    .parameter "wireType"

    .prologue
    .line 75
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 1
    .parameter "input"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method

.method private static readData(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    array-length v3, p1

    if-nez v3, :cond_0

    .line 214
    const/4 v3, 0x0

    .line 236
    :goto_0
    return-object v3

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 218
    .local v0, buffer:Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    :try_start_0
    const-class v3, Ljava/lang/String;

    if-ne p0, v3, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 220
    :cond_1
    const-class v3, Ljava/lang/Integer;

    if-ne p0, v3, :cond_2

    .line 221
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 222
    :cond_2
    const-class v3, Ljava/lang/Long;

    if-ne p0, v3, :cond_3

    .line 223
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 224
    :cond_3
    const-class v3, Ljava/lang/Boolean;

    if-ne p0, v3, :cond_4

    .line 225
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 226
    :cond_4
    const-class v3, Ljava/lang/Float;

    if-ne p0, v3, :cond_5

    .line 227
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 228
    :cond_5
    const-class v3, Ljava/lang/Double;

    if-ne p0, v3, :cond_6

    .line 229
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 230
    :cond_6
    const-class v3, [B

    if-ne p0, v3, :cond_7

    .line 231
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 232
    :cond_7
    const-class v3, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_8

    .line 234
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/nano/MessageNano;

    .line 235
    .local v2, message:Lcom/google/protobuf/nano/MessageNano;
    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 237
    .end local v2           #message:Lcom/google/protobuf/nano/MessageNano;
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating instance of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 245
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 246
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Error reading extension field"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 239
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 240
    .local v1, e:Ljava/lang/InstantiationException;
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating instance of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 243
    .end local v1           #e:Ljava/lang/InstantiationException;
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled extension field type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static setExtension(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<TT;>;TT;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, extension:Lcom/google/protobuf/nano/Extension;,"Lcom/google/protobuf/nano/Extension<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    .local p2, unknownFields:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 255
    .local v0, data:Lcom/google/protobuf/nano/UnknownFieldData;
    iget v4, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    iget v5, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 259
    .end local v0           #data:Lcom/google/protobuf/nano/UnknownFieldData;
    :cond_1
    if-nez p1, :cond_3

    .line 270
    .end local p1           #value:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    return-void

    .line 263
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 264
    check-cast p1, Ljava/util/List;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, item:Ljava/lang/Object;
    iget v4, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/protobuf/nano/UnknownFieldData;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Ljava/lang/Object;
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_4
    iget v4, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v4, p1}, Lcom/google/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/protobuf/nano/UnknownFieldData;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 5
    .parameter
    .parameter "input"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;",
            "Lcom/google/protobuf/nano/CodedInputByteBufferNano;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 139
    .local v3, startPos:I
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v2

    .line 140
    .local v2, skip:Z
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 141
    .local v1, endPos:I
    sub-int v4, v1, v3

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    .line 142
    .local v0, bytes:[B
    new-instance v4, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v0}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return v2
.end method

.method private static write(ILjava/lang/Object;)Lcom/google/protobuf/nano/UnknownFieldData;
    .locals 20
    .parameter "fieldNumber"
    .parameter "object"

    .prologue
    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 283
    .local v5, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 284
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 285
    .local v15, str:Ljava/lang/String;
    invoke-static {v15}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 286
    .local v6, data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 287
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 334
    .end local v15           #str:Ljava/lang/String;
    .end local p1
    .local v16, tag:I
    :goto_0
    new-instance v17, Lcom/google/protobuf/nano/UnknownFieldData;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    return-object v17

    .line 288
    .end local v6           #data:[B
    .end local v16           #tag:I
    .restart local p1
    :cond_0
    :try_start_1
    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_1

    .line 289
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    .line 290
    .local v11, integer:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 291
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 292
    const/16 v17, 0x0

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 293
    .restart local v16       #tag:I
    goto :goto_0

    .end local v6           #data:[B
    .end local v11           #integer:Ljava/lang/Integer;
    .end local v16           #tag:I
    :cond_1
    const-class v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 294
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v12, v0

    .line 295
    .local v12, longValue:Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 296
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 297
    const/16 v17, 0x0

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 298
    .restart local v16       #tag:I
    goto :goto_0

    .end local v6           #data:[B
    .end local v12           #longValue:Ljava/lang/Long;
    .end local v16           #tag:I
    :cond_2
    const-class v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 299
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 300
    .local v2, boolValue:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 301
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 302
    const/16 v17, 0x0

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 303
    .restart local v16       #tag:I
    goto/16 :goto_0

    .end local v2           #boolValue:Ljava/lang/Boolean;
    .end local v6           #data:[B
    .end local v16           #tag:I
    :cond_3
    const-class v17, Ljava/lang/Float;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_4

    .line 304
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    move-object v10, v0

    .line 305
    .local v10, floatValue:Ljava/lang/Float;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 306
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 307
    const/16 v17, 0x5

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 308
    .restart local v16       #tag:I
    goto/16 :goto_0

    .end local v6           #data:[B
    .end local v10           #floatValue:Ljava/lang/Float;
    .end local v16           #tag:I
    :cond_4
    const-class v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_5

    .line 309
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v8, v0

    .line 310
    .local v8, doubleValue:Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 311
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 312
    const/16 v17, 0x1

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 313
    .restart local v16       #tag:I
    goto/16 :goto_0

    .end local v6           #data:[B
    .end local v8           #doubleValue:Ljava/lang/Double;
    .end local v16           #tag:I
    :cond_5
    const-class v17, [B

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 314
    check-cast p1, [B

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v4, v0

    .line 315
    .local v4, byteArrayValue:[B
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 316
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    .line 317
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 318
    .restart local v16       #tag:I
    goto/16 :goto_0

    .end local v4           #byteArrayValue:[B
    .end local v6           #data:[B
    .end local v16           #tag:I
    .restart local p1
    :cond_6
    const-class v17, Lcom/google/protobuf/nano/MessageNano;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 319
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    move-object v14, v0

    .line 321
    .local v14, messageValue:Lcom/google/protobuf/nano/MessageNano;
    invoke-virtual {v14}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v13

    .line 322
    .local v13, messageSize:I
    invoke-static {v13}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v7

    .line 323
    .local v7, delimiterSize:I
    add-int v17, v13, v7

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 324
    .restart local v6       #data:[B
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    .line 325
    .local v3, buffer:Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {v3, v13}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 326
    invoke-static {v14}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 327
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .line 328
    .restart local v16       #tag:I
    goto/16 :goto_0

    .line 329
    .end local v3           #buffer:Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .end local v6           #data:[B
    .end local v7           #delimiterSize:I
    .end local v13           #messageSize:I
    .end local v14           #messageValue:Lcom/google/protobuf/nano/MessageNano;
    .end local v16           #tag:I
    :cond_7
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unhandled extension field type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 331
    .end local p1
    :catch_0
    move-exception v9

    .line 332
    .local v9, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method

.method public static writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .parameter
    .parameter "outBuffer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;",
            "Lcom/google/protobuf/nano/CodedOutputByteBufferNano;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    .local p0, unknownFields:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    if-nez p0, :cond_1

    .line 364
    :cond_0
    return-void

    .line 360
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 361
    .local v0, data:Lcom/google/protobuf/nano/UnknownFieldData;
    iget v2, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    iget v3, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 362
    iget-object v2, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    goto :goto_0
.end method
