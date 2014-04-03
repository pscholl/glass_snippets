.class public final Lcom/google/speech/logs/VoicesearchClientLogProto;
.super Ljava/lang/Object;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;,
        Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_ADD_CALENDAR_EVENT:I = 0xc

.field public static final ACTION_TYPE_AT_HOME_POWER_CONTROL:I = 0x1d

.field public static final ACTION_TYPE_DEPRECATED_DISPLAY_ANSWER:I = 0x12

.field public static final ACTION_TYPE_DEPRECATED_MULTIPLE_LOCAL_RESULTS:I = 0x15

.field public static final ACTION_TYPE_DEPRECATED_POST_UPDATE:I = 0x10

.field public static final ACTION_TYPE_DEPRECATED_SINGLE_LOCAL_RESULT:I = 0x14

.field public static final ACTION_TYPE_DEPRECATED_WEB_RESULT:I = 0x11

.field public static final ACTION_TYPE_DICTIONARY_RESULT:I = 0x1a

.field public static final ACTION_TYPE_DIRECTIONS:I = 0xd

.field public static final ACTION_TYPE_DOWNLOAD_APP:I = 0x24

.field public static final ACTION_TYPE_EMAIL:I = 0x2

.field public static final ACTION_TYPE_FLIGHT_RESULT:I = 0x18

.field public static final ACTION_TYPE_HELP:I = 0x25

.field public static final ACTION_TYPE_HTML_ANSWER:I = 0x13

.field public static final ACTION_TYPE_IMAGE_RESULTS:I = 0x16

.field public static final ACTION_TYPE_MAP:I = 0xe

.field public static final ACTION_TYPE_NAVIGATION:I = 0xf

.field public static final ACTION_TYPE_OPEN_APP:I = 0x3

.field public static final ACTION_TYPE_OPEN_BOOK:I = 0x20

.field public static final ACTION_TYPE_OPEN_URL:I = 0x5

.field public static final ACTION_TYPE_PHONE_CALL_BUSINESS:I = 0x9

.field public static final ACTION_TYPE_PHONE_CALL_CONTACT:I = 0xa

.field public static final ACTION_TYPE_PHONE_CALL_NUMBER:I = 0x1c

.field public static final ACTION_TYPE_PLAY_MEDIA:I = 0x4

.field public static final ACTION_TYPE_PLAY_MOVIE:I = 0x1f

.field public static final ACTION_TYPE_PLAY_MUSIC:I = 0x1e

.field public static final ACTION_TYPE_PUNT:I = 0x19

.field public static final ACTION_TYPE_SELF_NOTE:I = 0x6

.field public static final ACTION_TYPE_SET_ALARM:I = 0x8

.field public static final ACTION_TYPE_SET_LOCATION_REMINDER:I = 0x22

.field public static final ACTION_TYPE_SHOW_CALENDAR_EVENT:I = 0xb

.field public static final ACTION_TYPE_SHOW_CONTACT_INFORMATION:I = 0x21

.field public static final ACTION_TYPE_SMS:I = 0x1

.field public static final ACTION_TYPE_SPORTS_RESULT:I = 0x1b

.field public static final ACTION_TYPE_UPDATE_SOCIAL_NETWORK:I = 0x7

.field public static final ACTION_TYPE_VIDEO_CALL:I = 0x23

.field public static final ACTION_TYPE_WEATHER_RESULT:I = 0x17

.field public static final AUDIO_INPUT_DEVICE_BLUETOOTH_MICROPHONE:I = 0x3

.field public static final AUDIO_INPUT_DEVICE_EMBEDDED_MICROPHONE:I = 0x1

.field public static final AUDIO_INPUT_DEVICE_WIRED_MICROPHONE:I = 0x2

.field public static final EVENT_SOURCE_NONE:I = 0x3

.field public static final EVENT_SOURCE_TOUCH:I = 0x1

.field public static final EVENT_SOURCE_VOICE:I = 0x2

.field public static final REQUEST_TYPE_SONG_RECOGNITION:I = 0x5

.field public static final REQUEST_TYPE_TEXT_SEARCH:I = 0x6

.field public static final REQUEST_TYPE_VOICE_RECOGNITION:I = 0x1

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_CALL_CONTACT:I = 0x2

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_COMMAND:I = 0x3

.field public static final REQUEST_TYPE_VOICE_RECOGNITION_DISAMBIG:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
