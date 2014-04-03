.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$ContactGroup;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Type;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$MessagingOption;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# instance fields
.field public acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

.field public acceptType:[Ljava/lang/String;

.field private cachedSize:I

.field public contactGroup:[I

.field public creationTime:Ljava/lang/Long;

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageUrl:[Ljava/lang/String;

.field public isCommunicationTarget:Ljava/lang/Boolean;

.field public messagingOption:I

.field public messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

.field public nickname:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

.field public secondaryEmail:[Ljava/lang/String;

.field public secondaryPhoneNumber:[Ljava/lang/String;

.field public sharingFeature:[I

.field public shouldSync:Ljava/lang/Boolean;

.field public source:Ljava/lang/String;

.field public speakableName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1735
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 1736
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2051
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 2054
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    .line 2057
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 2066
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 2071
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    .line 2076
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 2081
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 2084
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 2089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 2092
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 2097
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 2310
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    .line 1736
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2655
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2649
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 2102
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    .line 2103
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    .line 2104
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 2105
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    .line 2106
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 2107
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 2108
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    .line 2109
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    .line 2110
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 2111
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    .line 2112
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    .line 2113
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 2114
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 2115
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    .line 2116
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 2117
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 2118
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    .line 2119
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 2120
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 2121
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    .line 2122
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 2123
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    .line 2124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    .line 2125
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2130
    if-ne p1, p0, :cond_1

    .line 2133
    :cond_0
    :goto_0
    return v1

    .line 2131
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2132
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2133
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2313
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    if-gez v0, :cond_0

    .line 2315
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSerializedSize()I

    .line 2317
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const/high16 v9, -0x8000

    .line 2322
    const/4 v5, 0x0

    .line 2323
    .local v5, size:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2324
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2327
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 2328
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2331
    :cond_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2332
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2335
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 2336
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 2339
    :cond_3
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    if-eq v6, v9, :cond_4

    .line 2340
    const/4 v6, 0x6

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 2343
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 2344
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2347
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 2348
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2351
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_8

    .line 2352
    const/4 v1, 0x0

    .line 2353
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    .line 2354
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2353
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2357
    .end local v2           #element:Ljava/lang/String;
    :cond_7
    add-int/2addr v5, v1

    .line 2358
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2360
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    if-eqz v6, :cond_9

    .line 2361
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 2364
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_b

    .line 2365
    const/4 v1, 0x0

    .line 2366
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 2367
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2366
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2370
    .end local v2           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v5, v1

    .line 2371
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2373
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_d

    .line 2374
    const/4 v1, 0x0

    .line 2375
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_c

    aget-object v2, v0, v3

    .line 2376
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2375
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2379
    .end local v2           #element:Ljava/lang/String;
    :cond_c
    add-int/2addr v5, v1

    .line 2380
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2382
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v6, :cond_e

    .line 2383
    const/16 v6, 0xe

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2386
    :cond_e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_10

    .line 2387
    const/4 v1, 0x0

    .line 2388
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_f

    aget-object v2, v0, v3

    .line 2389
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2388
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2392
    .end local v2           #element:Ljava/lang/String;
    :cond_f
    add-int/2addr v5, v1

    .line 2393
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2395
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v6, :cond_11

    .line 2396
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v4, :cond_11

    aget-object v2, v0, v3

    .line 2397
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    const/16 v6, 0x10

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2396
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2401
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_11
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 2402
    const/16 v6, 0x11

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2405
    :cond_12
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v6, v6

    if-lez v6, :cond_14

    .line 2406
    const/4 v1, 0x0

    .line 2407
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v4, :cond_13

    aget v2, v0, v3

    .line 2408
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 2407
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2411
    .end local v2           #element:I
    :cond_13
    add-int/2addr v5, v1

    .line 2412
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 2414
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_14
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    if-eqz v6, :cond_15

    .line 2415
    const/16 v6, 0x15

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 2418
    :cond_15
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v6, :cond_16

    .line 2419
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v4, :cond_16

    aget-object v2, v0, v3

    .line 2420
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/16 v6, 0x16

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2419
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2424
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_16
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 2425
    const/16 v6, 0x17

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2428
    :cond_17
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    if-eq v6, v9, :cond_18

    .line 2429
    const/16 v6, 0x19

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 2432
    :cond_18
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    if-eqz v6, :cond_19

    .line 2433
    const/16 v6, 0x1a

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2436
    :cond_19
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v6, v6

    if-lez v6, :cond_1b

    .line 2437
    const/4 v1, 0x0

    .line 2438
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_7
    if-ge v3, v4, :cond_1a

    aget v2, v0, v3

    .line 2439
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 2438
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2442
    .end local v2           #element:I
    :cond_1a
    add-int/2addr v5, v1

    .line 2443
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 2445
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1b
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    .line 2446
    return v5
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2158
    const/16 v1, 0x11

    .line 2159
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 2160
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 2161
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v2, :cond_b

    mul-int/lit8 v1, v1, 0x1f

    .line 2167
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    add-int v1, v2, v6

    .line 2168
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-nez v2, :cond_d

    mul-int/lit8 v1, v1, 0x1f

    .line 2174
    :cond_1
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v3

    :goto_2
    add-int v1, v6, v2

    .line 2175
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v3

    :goto_3
    add-int v1, v6, v2

    .line 2176
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v3

    :goto_4
    add-int v1, v6, v2

    .line 2177
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-nez v2, :cond_11

    mul-int/lit8 v1, v1, 0x1f

    .line 2183
    :cond_2
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    move v2, v3

    :goto_5
    add-int v1, v6, v2

    .line 2184
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    add-int v1, v2, v6

    .line 2185
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v3

    :goto_6
    add-int v1, v6, v2

    .line 2186
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-nez v2, :cond_16

    mul-int/lit8 v1, v1, 0x1f

    .line 2192
    :cond_3
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    if-nez v2, :cond_18

    move v2, v3

    :goto_7
    add-int v1, v6, v2

    .line 2193
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-nez v2, :cond_19

    mul-int/lit8 v1, v1, 0x1f

    .line 2199
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-nez v2, :cond_1b

    mul-int/lit8 v1, v1, 0x1f

    .line 2205
    :cond_5
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    if-nez v6, :cond_1d

    move v4, v3

    :cond_6
    :goto_8
    add-int v1, v2, v4

    .line 2206
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v2, :cond_1e

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 2207
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v2, :cond_1f

    mul-int/lit8 v1, v1, 0x1f

    .line 2213
    :cond_7
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    if-nez v2, :cond_21

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 2214
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-nez v2, :cond_22

    mul-int/lit8 v1, v1, 0x1f

    .line 2220
    :cond_8
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    if-nez v4, :cond_23

    :goto_b
    add-int v1, v2, v3

    .line 2221
    return v1

    .line 2159
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 2160
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 2163
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2164
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    move v2, v3

    :goto_d
    add-int v1, v6, v2

    .line 2163
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2164
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hashCode()I

    move-result v2

    goto :goto_d

    .line 2170
    .end local v0           #i:I
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2171
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    aget v6, v6, v0

    add-int v1, v2, v6

    .line 2170
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2174
    .end local v0           #i:I
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 2175
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 2176
    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 2179
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2180
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_12

    move v2, v3

    :goto_10
    add-int v1, v6, v2

    .line 2179
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2180
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_10

    .line 2183
    .end local v0           #i:I
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v4

    goto/16 :goto_5

    :cond_14
    move v2, v5

    goto/16 :goto_5

    .line 2185
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 2188
    :cond_16
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2189
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_17

    move v2, v3

    :goto_12
    add-int v1, v6, v2

    .line 2188
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2189
    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    .line 2192
    .end local v0           #i:I
    :cond_18
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 2195
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2196
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1a

    move v2, v3

    :goto_14
    add-int v1, v6, v2

    .line 2195
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2196
    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_14

    .line 2201
    .end local v0           #i:I
    :cond_1b
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 2202
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1c

    move v2, v3

    :goto_16
    add-int v1, v6, v2

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2202
    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_16

    .line 2205
    .end local v0           #i:I
    :cond_1d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    goto/16 :goto_8

    .line 2206
    :cond_1e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 2209
    :cond_1f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 2210
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 2209
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2210
    :cond_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->hashCode()I

    move-result v2

    goto :goto_18

    .line 2213
    .end local v0           #i:I
    :cond_21
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 2216
    :cond_22
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_19
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 2217
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 2216
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 2220
    .end local v0           #i:I
    :cond_23
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    goto/16 :goto_b
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2455
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 2459
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2460
    :sswitch_0
    return-object p0

    .line 2465
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    goto :goto_0

    .line 2469
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    goto :goto_0

    .line 2473
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 2477
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    goto :goto_0

    .line 2481
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 2482
    .local v4, temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    goto :goto_0

    .line 2486
    .end local v4           #temp:I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2490
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    goto :goto_0

    .line 2494
    :sswitch_8
    const/16 v6, 0x4a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2495
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v1, v6

    .line 2496
    .local v1, i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 2497
    .local v2, newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2498
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 2499
    :goto_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_1

    .line 2500
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 2501
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2499
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2504
    :cond_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto :goto_0

    .line 2508
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    goto :goto_0

    .line 2512
    :sswitch_a
    const/16 v6, 0x62

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2513
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v1, v6

    .line 2514
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 2515
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2516
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 2517
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 2518
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 2519
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2517
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2522
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 2526
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_b
    const/16 v6, 0x6a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2527
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v1, v6

    .line 2528
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 2529
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2530
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 2531
    :goto_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 2532
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 2533
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2531
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2536
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 2540
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_c
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 2541
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2545
    :sswitch_d
    const/16 v6, 0x7a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2546
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v1, v6

    .line 2547
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 2548
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2549
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 2550
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 2551
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 2552
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2550
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2555
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 2559
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_e
    const/16 v6, 0x82

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2560
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v6, :cond_6

    move v1, v5

    .line 2561
    .restart local v1       #i:I
    :goto_5
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 2562
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v6, :cond_5

    .line 2563
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2565
    :cond_5
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 2566
    :goto_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 2567
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    aput-object v7, v6, v1

    .line 2568
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2569
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2566
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2560
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v1, v6

    goto :goto_5

    .line 2572
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    aput-object v7, v6, v1

    .line 2573
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2577
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2581
    :sswitch_10
    const/16 v6, 0xa0

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2582
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v1, v6

    .line 2583
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 2584
    .local v2, newArray:[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2585
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 2586
    :goto_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_8

    .line 2587
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 2588
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2586
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2591
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 2595
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[I
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 2599
    :sswitch_12
    const/16 v6, 0xb2

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2600
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v6, :cond_a

    move v1, v5

    .line 2601
    .restart local v1       #i:I
    :goto_8
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 2602
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v6, :cond_9

    .line 2603
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2605
    :cond_9
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 2606
    :goto_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_b

    .line 2607
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    aput-object v7, v6, v1

    .line 2608
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2609
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2606
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2600
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v1, v6

    goto :goto_8

    .line 2612
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    aput-object v7, v6, v1

    .line 2613
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2617
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    goto/16 :goto_0

    .line 2621
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 2622
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    goto/16 :goto_0

    .line 2626
    .end local v4           #temp:I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2630
    :sswitch_16
    const/16 v6, 0xd8

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2631
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v1, v6

    .line 2632
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 2633
    .local v2, newArray:[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2634
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 2635
    :goto_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_c

    .line 2636
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 2637
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2635
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2640
    :cond_c
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 2455
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb2 -> :sswitch_12
        0xba -> :sswitch_13
        0xc8 -> :sswitch_14
        0xd2 -> :sswitch_15
        0xd8 -> :sswitch_16
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
    .line 1732
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v7, -0x8000

    .line 2226
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2227
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2229
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2230
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2232
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2233
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2235
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 2236
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2238
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    if-eq v4, v7, :cond_4

    .line 2239
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2241
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2242
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2244
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2245
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2247
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 2248
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v1, v0, v2

    .line 2249
    .local v1, element:Ljava/lang/String;
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2252
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_7
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    .line 2253
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2255
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 2256
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 2257
    .restart local v1       #element:Ljava/lang/String;
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2260
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_9
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2261
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 2262
    .restart local v1       #element:Ljava/lang/String;
    const/16 v4, 0xd

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2261
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2265
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v4, :cond_b

    .line 2266
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2268
    :cond_b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2269
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_c

    aget-object v1, v0, v2

    .line 2270
    .restart local v1       #element:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2269
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2273
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v4, :cond_d

    .line 2274
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 2275
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    const/16 v4, 0x10

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2274
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2278
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2279
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2281
    :cond_e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v4, v4

    if-lez v4, :cond_f

    .line 2282
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_5
    if-ge v2, v3, :cond_f

    aget v1, v0, v2

    .line 2283
    .local v1, element:I
    const/16 v4, 0x14

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2282
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2286
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    if-eqz v4, :cond_10

    .line 2287
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2289
    :cond_10
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v4, :cond_11

    .line 2290
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_6
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 2291
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/16 v4, 0x16

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2290
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2294
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_11
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 2295
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2297
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    if-eq v4, v7, :cond_13

    .line 2298
    const/16 v4, 0x19

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2300
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 2301
    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2303
    :cond_14
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_15

    .line 2304
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_7
    if-ge v2, v3, :cond_15

    aget v1, v0, v2

    .line 2305
    .local v1, element:I
    const/16 v4, 0x1b

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2304
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2308
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_15
    return-void
.end method
