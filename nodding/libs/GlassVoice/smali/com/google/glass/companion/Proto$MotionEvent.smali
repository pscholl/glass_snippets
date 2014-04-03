.class public final Lcom/google/glass/companion/Proto$MotionEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent;


# instance fields
.field public action:Ljava/lang/Integer;

.field public buttonState:Ljava/lang/Integer;

.field private cachedSize:I

.field public deviceId:Ljava/lang/Integer;

.field public downTime:Ljava/lang/Long;

.field public edgeFlags:Ljava/lang/Integer;

.field public eventTime:Ljava/lang/Long;

.field public flags:Ljava/lang/Integer;

.field public metaState:Ljava/lang/Integer;

.field public pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

.field public pointerCount:Ljava/lang/Integer;

.field public pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

.field public source:Ljava/lang/Integer;

.field public xPrecision:Ljava/lang/Float;

.field public yPrecision:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 918
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 921
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1058
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 579
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1240
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 940
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    .line 941
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    .line 942
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    .line 943
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    .line 944
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 945
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 946
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    .line 947
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    .line 948
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    .line 949
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    .line 950
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    .line 951
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    .line 952
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    .line 953
    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    .line 954
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 955
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 960
    if-ne p1, p0, :cond_1

    .line 963
    :cond_0
    :goto_0
    return v1

    .line 961
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 962
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    .line 963
    .local v0, other:Lcom/google/glass/companion/Proto$MotionEvent;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent;->getSerializedSize()I

    .line 1065
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1070
    const/4 v4, 0x0

    .line 1071
    .local v4, size:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 1072
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1075
    :cond_0
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 1076
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1079
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1080
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1083
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 1084
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1087
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v5, :cond_4

    .line 1088
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1089
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1093
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v5, :cond_5

    .line 1094
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1095
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    const/4 v5, 0x6

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1094
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1099
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 1100
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1103
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 1104
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1107
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    if-eqz v5, :cond_8

    .line 1108
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 1111
    :cond_8
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    if-eqz v5, :cond_9

    .line 1112
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 1115
    :cond_9
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 1116
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1119
    :cond_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    if-eqz v5, :cond_b

    .line 1120
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1123
    :cond_b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    if-eqz v5, :cond_c

    .line 1124
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1127
    :cond_c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    if-eqz v5, :cond_d

    .line 1128
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1131
    :cond_d
    iput v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 1132
    return v4
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x0

    .line 980
    const/16 v1, 0x11

    .line 981
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 982
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 983
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 984
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 985
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 991
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 997
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    if-nez v2, :cond_a

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 998
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    if-nez v2, :cond_b

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 999
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    if-nez v2, :cond_c

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 1000
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    if-nez v2, :cond_d

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 1001
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    if-nez v2, :cond_e

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 1002
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    if-nez v2, :cond_f

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 1003
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    if-nez v2, :cond_10

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 1004
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    if-nez v4, :cond_11

    :goto_b
    add-int v1, v2, v3

    .line 1005
    return v1

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v9

    xor-long/2addr v4, v6

    long-to-int v2, v4

    goto :goto_0

    .line 982
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto/16 :goto_1

    .line 983
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_2

    .line 984
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_3

    .line 987
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 988
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 988
    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->hashCode()I

    move-result v2

    goto :goto_d

    .line 993
    .end local v0           #i:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 994
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 994
    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hashCode()I

    move-result v2

    goto :goto_f

    .line 997
    .end local v0           #i:I
    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_4

    .line 998
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_5

    .line 999
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_6

    .line 1000
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_7

    .line 1001
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_8

    .line 1002
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_9

    .line 1003
    :cond_10
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_a

    .line 1004
    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_b
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1140
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1141
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1145
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1146
    :sswitch_0
    return-object p0

    .line 1151
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    goto :goto_0

    .line 1155
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    goto :goto_0

    .line 1159
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    goto :goto_0

    .line 1163
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    goto :goto_0

    .line 1167
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1168
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v5, :cond_2

    move v1, v4

    .line 1169
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1170
    .local v2, newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v5, :cond_1

    .line 1171
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    :cond_1
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1174
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1175
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 1176
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1177
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1168
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v1, v5

    goto :goto_1

    .line 1180
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 1181
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1185
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1186
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v5, :cond_5

    move v1, v4

    .line 1187
    .restart local v1       #i:I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1188
    .local v2, newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v5, :cond_4

    .line 1189
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1191
    :cond_4
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1192
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 1193
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 1194
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1195
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1186
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v1, v5

    goto :goto_3

    .line 1198
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 1199
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1203
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1207
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1211
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1215
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    goto/16 :goto_0

    .line 1219
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1223
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1227
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1231
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1141
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 1011
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1013
    :cond_0
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 1014
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1016
    :cond_1
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 1017
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1019
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 1020
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1022
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v4, :cond_4

    .line 1023
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1024
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1023
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1027
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v4, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1029
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1032
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 1033
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1035
    :cond_6
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 1036
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1038
    :cond_7
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    if-eqz v4, :cond_8

    .line 1039
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1041
    :cond_8
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    if-eqz v4, :cond_9

    .line 1042
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1044
    :cond_9
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 1045
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1047
    :cond_a
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    if-eqz v4, :cond_b

    .line 1048
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1050
    :cond_b
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    if-eqz v4, :cond_c

    .line 1051
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1053
    :cond_c
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    if-eqz v4, :cond_d

    .line 1054
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1056
    :cond_d
    return-void
.end method
