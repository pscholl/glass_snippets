.class public final Lcom/google/glass/companion/Proto$Envelope;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Envelope;


# instance fields
.field public apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

.field public apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

.field private cachedSize:I

.field public command:Lcom/google/glass/companion/Proto$Command;

.field public companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

.field public error:Lcom/google/glass/companion/Proto$Error;

.field public glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

.field public glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

.field public glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

.field public glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

.field public inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

.field public inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

.field public locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

.field public locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

.field public messageC2G:Ljava/lang/String;

.field public motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

.field public navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

.field public screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

.field public serialNumber:Ljava/lang/Integer;

.field public setupWifiC2G:Ljava/lang/String;

.field public timeMillis:Ljava/lang/Long;

.field public timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

.field public timezoneC2G:Ljava/lang/String;

.field public uptimeMillis:Ljava/lang/Long;

.field public urlG2C:Ljava/lang/String;

.field public version:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Envelope;

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Envelope;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 25
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 28
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 31
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 38
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 45
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 48
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    .line 51
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 54
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    .line 57
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 60
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 63
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 66
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 69
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 72
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 75
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 78
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 81
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 11
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    .line 85
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    .line 86
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    .line 87
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    .line 88
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 89
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 90
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 91
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 92
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 95
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 98
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    .line 99
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 100
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    .line 101
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 102
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 103
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 104
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 105
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 106
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 107
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 108
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 109
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 111
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Envelope;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    .line 119
    .local v0, other:Lcom/google/glass/companion/Proto$Envelope;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_3

    :goto_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    if-nez v3, :cond_3

    :goto_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_3

    :goto_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_3

    :goto_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_3

    :goto_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_3

    :goto_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_3

    :goto_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_3

    :goto_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_3

    :goto_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_3

    :goto_15
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_3

    :goto_16
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_3

    :goto_17
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocationMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$NavigationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ScreenShot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Command;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ApiRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ApiResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_11

    :cond_15
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$MotionEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_12

    :cond_16
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$InputBoxRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_15

    :cond_19
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$InputBoxResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_16

    :cond_1a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_17

    :cond_1b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    if-gez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Envelope;->getSerializedSize()I

    .line 279
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 284
    const/4 v4, 0x0

    .line 285
    .local v4, size:I
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 287
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 288
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 291
    :cond_0
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 292
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 295
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 296
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 299
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v5, :cond_3

    .line 300
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 301
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v5, :cond_4

    .line 306
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 309
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v5, :cond_5

    .line 310
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 313
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 314
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 317
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 318
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 321
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v5, :cond_8

    .line 322
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 325
    :cond_8
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 326
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 329
    :cond_9
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 330
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 333
    :cond_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v5, :cond_b

    .line 334
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 337
    :cond_b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    if-eqz v5, :cond_c

    .line 338
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 341
    :cond_c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v5, :cond_d

    .line 342
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 345
    :cond_d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    if-eqz v5, :cond_e

    .line 346
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 349
    :cond_e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v5, :cond_f

    .line 350
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    .line 351
    .local v1, element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    const/16 v5, 0x11

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v1           #element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v5, :cond_10

    .line 356
    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 359
    :cond_10
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v5, :cond_11

    .line 360
    const/16 v5, 0x13

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 363
    :cond_11
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v5, :cond_12

    .line 364
    const/16 v5, 0x14

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 367
    :cond_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v5, :cond_13

    .line 368
    const/16 v5, 0x15

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 371
    :cond_13
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v5, :cond_14

    .line 372
    const/16 v5, 0x16

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 375
    :cond_14
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v5, :cond_15

    .line 376
    const/16 v5, 0x17

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 379
    :cond_15
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v5, :cond_16

    .line 380
    const/16 v5, 0x18

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 383
    :cond_16
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v5, :cond_17

    .line 384
    const/16 v5, 0x19

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 387
    :cond_17
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v5, :cond_18

    .line 388
    const/16 v5, 0x1a

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 391
    :cond_18
    iput v4, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 392
    return v4
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x0

    .line 148
    const/16 v1, 0x11

    .line 149
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 150
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 151
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 152
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 153
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 165
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v2, :cond_a

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 166
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v2, :cond_b

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 167
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 168
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 169
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v2, :cond_e

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 170
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 171
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 172
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v2, :cond_11

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 173
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    if-nez v2, :cond_12

    move v2, v3

    :goto_c
    add-int v1, v4, v2

    .line 174
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v2, :cond_13

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 175
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    if-nez v2, :cond_14

    move v2, v3

    :goto_e
    add-int v1, v4, v2

    .line 176
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v2, :cond_15

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 177
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v2, :cond_16

    move v2, v3

    :goto_10
    add-int v1, v4, v2

    .line 178
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v2, :cond_17

    move v2, v3

    :goto_11
    add-int v1, v4, v2

    .line 179
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v2, :cond_18

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 180
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v2, :cond_19

    move v2, v3

    :goto_13
    add-int v1, v4, v2

    .line 181
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v2, :cond_1a

    move v2, v3

    :goto_14
    add-int v1, v4, v2

    .line 182
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v2, :cond_1b

    move v2, v3

    :goto_15
    add-int v1, v4, v2

    .line 183
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v2, :cond_1c

    move v2, v3

    :goto_16
    add-int v1, v4, v2

    .line 184
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v4, :cond_1d

    :goto_17
    add-int v1, v2, v3

    .line 185
    return v1

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto/16 :goto_2

    .line 152
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto/16 :goto_3

    .line 155
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 156
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_19
    add-int v1, v4, v2

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 156
    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_19

    .line 161
    .end local v0           #i:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 162
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 162
    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 165
    .end local v0           #i:I
    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 166
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 167
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 168
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 169
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$NavigationRequest;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 170
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 171
    :cond_10
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 172
    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 173
    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 174
    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ScreenShot;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 175
    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Command;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 176
    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiRequest;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 177
    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiResponse;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 178
    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 179
    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 180
    :cond_19
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 181
    :cond_1a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$InputBoxRequest;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 182
    :cond_1b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$InputBoxResponse;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 183
    :cond_1c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 184
    :cond_1d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->hashCode()I

    move-result v3

    goto/16 :goto_17
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 400
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 401
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 405
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 406
    :sswitch_0
    return-object p0

    .line 411
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    goto :goto_0

    .line 415
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    goto :goto_0

    .line 419
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    goto :goto_0

    .line 423
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    goto :goto_0

    .line 427
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 428
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_2

    move v1, v4

    .line 429
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 430
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v5, :cond_1

    .line 431
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_1
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 434
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 435
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v6, v5, v1

    .line 436
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 437
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 428
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v1, v5

    goto :goto_1

    .line 440
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v6, v5, v1

    .line 441
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 445
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :sswitch_6
    new-instance v5, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 446
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 450
    :sswitch_7
    new-instance v5, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 451
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 455
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    goto/16 :goto_0

    .line 459
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    goto/16 :goto_0

    .line 463
    :sswitch_a
    new-instance v5, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 464
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 468
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    goto/16 :goto_0

    .line 476
    :sswitch_d
    new-instance v5, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 477
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 481
    :sswitch_e
    new-instance v5, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    .line 482
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 486
    :sswitch_f
    new-instance v5, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 487
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 491
    :sswitch_10
    new-instance v5, Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Command;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    .line 492
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 496
    :sswitch_11
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 497
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v5, :cond_5

    move v1, v4

    .line 498
    .restart local v1       #i:I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 499
    .local v2, newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v5, :cond_4

    .line 500
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    :cond_4
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 503
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 504
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v6, v5, v1

    .line 505
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 506
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 497
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v1, v5

    goto :goto_3

    .line 509
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v6, v5, v1

    .line 510
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 514
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :sswitch_12
    new-instance v5, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 515
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 519
    :sswitch_13
    new-instance v5, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 520
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 524
    :sswitch_14
    new-instance v5, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 525
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 529
    :sswitch_15
    new-instance v5, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 530
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 534
    :sswitch_16
    new-instance v5, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 535
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 539
    :sswitch_17
    new-instance v5, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 540
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 544
    :sswitch_18
    new-instance v5, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 545
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 549
    :sswitch_19
    new-instance v5, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 550
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 554
    :sswitch_1a
    new-instance v5, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 555
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 401
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
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

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
    .line 190
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 191
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 192
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 195
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 198
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 200
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_3

    .line 201
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 202
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v4, :cond_4

    .line 206
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 208
    :cond_4
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v4, :cond_5

    .line 209
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 211
    :cond_5
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 212
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 214
    :cond_6
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 215
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 217
    :cond_7
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v4, :cond_8

    .line 218
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 220
    :cond_8
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 221
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 223
    :cond_9
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 224
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 226
    :cond_a
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v4, :cond_b

    .line 227
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 229
    :cond_b
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    if-eqz v4, :cond_c

    .line 230
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 232
    :cond_c
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v4, :cond_d

    .line 233
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 235
    :cond_d
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    if-eqz v4, :cond_e

    .line 236
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 238
    :cond_e
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v4, :cond_f

    .line 239
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    .line 240
    .local v1, element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    const/16 v4, 0x11

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v1           #element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v4, :cond_10

    .line 244
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 246
    :cond_10
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v4, :cond_11

    .line 247
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 249
    :cond_11
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v4, :cond_12

    .line 250
    const/16 v4, 0x14

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 252
    :cond_12
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v4, :cond_13

    .line 253
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 255
    :cond_13
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v4, :cond_14

    .line 256
    const/16 v4, 0x16

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 258
    :cond_14
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v4, :cond_15

    .line 259
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 261
    :cond_15
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v4, :cond_16

    .line 262
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 264
    :cond_16
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v4, :cond_17

    .line 265
    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 267
    :cond_17
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v4, :cond_18

    .line 268
    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 270
    :cond_18
    return-void
.end method
