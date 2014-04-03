.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenTransitionData"
.end annotation


# static fields
.field public static final FROM_FIELD_NUMBER:I = 0x1

.field public static final SCREEN_ADD_CALENDAR_EVENT_CARD:I = 0x5

.field public static final SCREEN_AT_HOME_POWER_CONTROL_CARD:I = 0x21

.field public static final SCREEN_CONTACT_SELECT_CARD:I = 0x13

.field public static final SCREEN_DEPRECATED_CALL_BUSINESS:I = 0x6

.field public static final SCREEN_DEPRECATED_DIRECTIONS:I = 0x7

.field public static final SCREEN_DEPRECATED_MAP:I = 0x9

.field public static final SCREEN_DEPRECATED_NAVIGATION:I = 0xb

.field public static final SCREEN_DEPRECATED_STREAMING_TEXT:I = 0x3

.field public static final SCREEN_DEPRECATED_WEB_RESULT:I = 0x4

.field public static final SCREEN_DICTIONARY_RESULTS_CARD:I = 0x1d

.field public static final SCREEN_DISPLAY_ANSWER_CARD:I = 0x14

.field public static final SCREEN_DOWNLOAD_APP_CARD:I = 0x29

.field public static final SCREEN_EMAIL_CARD:I = 0x8

.field public static final SCREEN_FLIGHT_RESULT_CARD:I = 0x1a

.field public static final SCREEN_HELP_CARD:I = 0x2a

.field public static final SCREEN_HTML_ANSWER_CARD:I = 0x15

.field public static final SCREEN_IMAGE_CARD:I = 0x16

.field public static final SCREEN_MEDIA_PLAYER_CARD:I = 0xf

.field public static final SCREEN_MESSAGE_EDITOR_CARD:I = 0xa

.field public static final SCREEN_MULTIPLE_LOCAL_RESULTS_CARD:I = 0x19

.field public static final SCREEN_NONE:I = 0x1

.field public static final SCREEN_OPEN_APPLICATION_CARD:I = 0xc

.field public static final SCREEN_OPEN_BOOK_CARD:I = 0x24

.field public static final SCREEN_OPEN_URL_CARD:I = 0xd

.field public static final SCREEN_PHONE_CALL_CONTACT_CARD:I = 0xe

.field public static final SCREEN_PHONE_CALL_NUMBER_CARD:I = 0x20

.field public static final SCREEN_PLAY_MOVIE_CARD:I = 0x23

.field public static final SCREEN_PLAY_MUSIC_CARD:I = 0x22

.field public static final SCREEN_POST_UPDATE_CARD:I = 0x10

.field public static final SCREEN_PUNT_CARD:I = 0x1b

.field public static final SCREEN_RELATIONSHIP_SELECT_CARD:I = 0x27

.field public static final SCREEN_SELF_NOTE_CARD:I = 0x11

.field public static final SCREEN_SETTINGS:I = 0x1c

.field public static final SCREEN_SET_ALARM_CARD:I = 0x12

.field public static final SCREEN_SET_LOCATION_REMINDER_CARD:I = 0x26

.field public static final SCREEN_SHOW_CALENDAR_EVENT_CARD:I = 0x1f

.field public static final SCREEN_SHOW_CONTACT_INFORMATION_CARD:I = 0x25

.field public static final SCREEN_SINGLE_LOCAL_RESULT_CARD:I = 0x18

.field public static final SCREEN_SPEAK_NOW:I = 0x2

.field public static final SCREEN_SPORTS_RESULTS_CARD:I = 0x1e

.field public static final SCREEN_VIDEO_CALL_CARD:I = 0x28

.field public static final SCREEN_WEATHER_CARD:I = 0x17

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private from_:I

.field private hasFrom:Z

.field private hasTo:Z

.field private to_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1485
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1534
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 1551
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 1587
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    .line 1485
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1647
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1641
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->clearFrom()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 1567
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->clearTo()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 1568
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    .line 1569
    return-object p0
.end method

.method public clearFrom()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1543
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasFrom:Z

    .line 1544
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 1545
    return-object p0
.end method

.method public clearTo()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1560
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasTo:Z

    .line 1561
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 1562
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1590
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    if-gez v0, :cond_0

    .line 1592
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->getSerializedSize()I

    .line 1594
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    return v0
.end method

.method public getFrom()I
    .locals 1

    .prologue
    .line 1535
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1599
    const/4 v0, 0x0

    .line 1600
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->getFrom()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasTo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->getTo()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1608
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->cachedSize:I

    .line 1609
    return v0
.end method

.method public getTo()I
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    return v0
.end method

.method public hasFrom()Z
    .locals 1

    .prologue
    .line 1536
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasFrom:Z

    return v0
.end method

.method public hasTo()Z
    .locals 1

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasTo:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1573
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
    .line 1482
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1618
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1622
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    :sswitch_0
    return-object p0

    .line 1628
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->setFrom(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    goto :goto_0

    .line 1632
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->setTo(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    goto :goto_0

    .line 1618
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFrom(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasFrom:Z

    .line 1539
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->from_:I

    .line 1540
    return-object p0
.end method

.method public setTo(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasTo:Z

    .line 1556
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->to_:I

    .line 1557
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->getFrom()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->hasTo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;->getTo()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1585
    :cond_1
    return-void
.end method
