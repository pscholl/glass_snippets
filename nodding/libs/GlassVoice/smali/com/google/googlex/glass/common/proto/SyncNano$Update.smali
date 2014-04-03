.class public final Lcom/google/googlex/glass/common/proto/SyncNano$Update;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;


# instance fields
.field private cachedSize:I

.field public mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

.field public timelineItemId:Ljava/lang/String;

.field public userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    .line 1101
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->cachedSize:I

    .line 921
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1104
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    .line 1105
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    .line 1106
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1107
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->cachedSize:I

    .line 1108
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1113
    if-ne p1, p0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return v1

    .line 1114
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1115
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 1116
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->cachedSize:I

    if-gez v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->getSerializedSize()I

    .line 1156
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1161
    const/4 v4, 0x0

    .line 1162
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-eqz v5, :cond_0

    .line 1163
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1166
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1167
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1170
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1172
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1176
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->cachedSize:I

    .line 1177
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1122
    const/16 v1, 0x11

    .line 1123
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1124
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1125
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 1131
    :cond_0
    return v1

    .line 1123
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1124
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1127
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1128
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1128
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1186
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1190
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1191
    :sswitch_0
    return-object p0

    .line 1196
    :sswitch_1
    new-instance v5, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    .line 1197
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1201
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    goto :goto_0

    .line 1205
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1206
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v5, :cond_2

    move v1, v4

    .line 1207
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1208
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_1

    .line 1209
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1212
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1213
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1214
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1215
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1206
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v1, v5

    goto :goto_1

    .line 1218
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1219
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 917
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-eqz v4, :cond_0

    .line 1137
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->mutations:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1139
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1140
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->timelineItemId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1142
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v4, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1144
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method
