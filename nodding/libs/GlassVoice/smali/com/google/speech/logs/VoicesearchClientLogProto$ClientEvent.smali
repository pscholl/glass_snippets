.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientEvent"
.end annotation


# static fields
.field public static final ACTION_TYPE_FIELD_NUMBER:I = 0x5

.field public static final ALTERNATE_CORRECTION_FIELD_NUMBER:I = 0x7

.field public static final AUDIO_INPUT_DEVICE_FIELD_NUMBER:I = 0xa

.field public static final BUG_REPORT_FIELD_NUMBER:I = 0x8

.field public static final CLIENT_TIME_MS_FIELD_NUMBER:I = 0x1

.field public static final CONTACT_INFO_FIELD_NUMBER:I = 0xc

.field public static final EMBEDDED_RECOGNIZER_LOG_FIELD_NUMBER:I = 0x9

.field public static final EVENT_SOURCE_FIELD_NUMBER:I = 0xb

.field public static final EVENT_TYPE_APP_EVENT_ACTION_FROM_EMBEDDED_PARSER:I = 0x5d

.field public static final EVENT_TYPE_APP_EVENT_ACTION_FROM_NETWORK_PARSER:I = 0x5e

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_CREATE_LATENCY:I = 0x64

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_RESTART_LATENCY:I = 0x65

.field public static final EVENT_TYPE_APP_EVENT_ACTIVITY_RESUME_LATENCY:I = 0x66

.field public static final EVENT_TYPE_APP_EVENT_APPLICATION_CREATE_LATENCY:I = 0x63

.field public static final EVENT_TYPE_APP_EVENT_APPLICATION_STATE_NOT_RESTORED:I = 0x45

.field public static final EVENT_TYPE_APP_EVENT_CONTACT_GRAMMAR_LOADING_LATENCY:I = 0x52

.field public static final EVENT_TYPE_APP_EVENT_EMBEDDED_RESULTS_MERGED_WITH_NETWORK_RESULTS:I = 0x57

.field public static final EVENT_TYPE_APP_EVENT_ESTABLISH_AUDIO_PATH:I = 0x4c

.field public static final EVENT_TYPE_APP_EVENT_ESTABLISH_BT_SCO_CONNECTION_LATENCY:I = 0x6a

.field public static final EVENT_TYPE_APP_EVENT_FAIL_IN_ESTABLISH_BT_SCO_CONNECTION_LATENCY:I = 0x6b

.field public static final EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_CREATE:I = 0x4f

.field public static final EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_PAUSE:I = 0x4e

.field public static final EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_RESUME:I = 0x4d

.field public static final EVENT_TYPE_APP_EVENT_IME_CLOSE:I = 0x28

.field public static final EVENT_TYPE_APP_EVENT_IME_DISPLAY_ERROR:I = 0x26

.field public static final EVENT_TYPE_APP_EVENT_IME_FINISH_INPUT_VIEW:I = 0x29

.field public static final EVENT_TYPE_APP_EVENT_IME_INTERRUPTED:I = 0x2a

.field public static final EVENT_TYPE_APP_EVENT_IME_JUMP_TO_OTHER_FIELD:I = 0x24

.field public static final EVENT_TYPE_APP_EVENT_IME_PARTIAL_RESULT_OVERRIDDEN:I = 0x4a

.field public static final EVENT_TYPE_APP_EVENT_IME_RESULT_DISPLAYED:I = 0x27

.field public static final EVENT_TYPE_APP_EVENT_IME_ROTATE_WHILE_RECORDING:I = 0x4b

.field public static final EVENT_TYPE_APP_EVENT_IME_START_INPUT_VIEW:I = 0x23

.field public static final EVENT_TYPE_APP_EVENT_INTENT_ACTIVITY_PAUSE:I = 0x3e

.field public static final EVENT_TYPE_APP_EVENT_INTENT_ACTIVITY_RESUME:I = 0x3d

.field public static final EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_CREATE:I = 0x2b

.field public static final EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_PAUSE:I = 0x2

.field public static final EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_RESUME:I = 0x1

.field public static final EVENT_TYPE_APP_EVENT_NETWORK_RESULTS_MERGED_WITH_EMBEDDED_RESULTS:I = 0x5c

.field public static final EVENT_TYPE_APP_EVENT_PUMPKIN_LATENCY:I = 0x60

.field public static final EVENT_TYPE_APP_EVENT_PUMPKIN_LATENCY_INITIALIZATION:I = 0x61

.field public static final EVENT_TYPE_APP_EVENT_PUMPKIN_NO_MATCH_RECEIVED:I = 0x62

.field public static final EVENT_TYPE_APP_EVENT_RESULTS_FROM_EMBEDDED_RECOGNIZER:I = 0x46

.field public static final EVENT_TYPE_APP_EVENT_RESULTS_FROM_NETWORK_RECOGNIZER:I = 0x47

.field public static final EVENT_TYPE_APP_EVENT_SCREEN_TRANSITION:I = 0x4

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_CANCEL:I = 0x39

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_ENDED:I = 0x38

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_ERROR:I = 0x3b

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_RESULTS:I = 0x3c

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_START_LISTENING:I = 0x37

.field public static final EVENT_TYPE_APP_EVENT_SERVICE_API_STOP_LISTENING:I = 0x3a

.field public static final EVENT_TYPE_APP_EVENT_START_RECORDING_USER_SPEECH:I = 0x5

.field public static final EVENT_TYPE_APP_EVENT_STOP_RECORDING_END_POINTER_TRIGGERED:I = 0x6

.field public static final EVENT_TYPE_APP_EVENT_STOP_RECORDING_NO_SPEECH_DETECTED:I = 0x5a

.field public static final EVENT_TYPE_APP_EVENT_TRIGGER_SPEECH_RECOGNITION:I = 0x15

.field public static final EVENT_TYPE_APP_EVENT_UNUSED_ACTION_FROM_NETWORK_PARSER:I = 0x6c

.field public static final EVENT_TYPE_APP_EVENT_WAIT_FOR_CONFIGURATION:I = 0x3

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_GOGGLES:I = 0x67

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_SOUNDSEARCH:I = 0x68

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_TEXT:I = 0x56

.field public static final EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_VOICE:I = 0x55

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_CREATE_LATENCY:I = 0x53

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_EMBEDDED_RECOGNIZER_RESULT_USED:I = 0x35

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_PUMPKIN_RESULT_RECEIVED:I = 0x5f

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_RESUME_LATENCY:I = 0x54

.field public static final EVENT_TYPE_DEPRECATED_APP_EVENT_S3_RECOGNIZER_RESULT_USED:I = 0x36

.field public static final EVENT_TYPE_DEPRECATED_USER_EVENT_ACTION_CANCEL_AND_RETRY:I = 0x51

.field public static final EVENT_TYPE_DEPRECATED_USER_EVENT_ACTION_EXPIRED_COUNTDOWN:I = 0x50

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_COMPLETED:I = 0x59

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_STARTED:I = 0x58

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_COMPLETED:I = 0x34

.field public static final EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_STARTED:I = 0x33

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_DONE:I = 0xa

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_ERROR:I = 0x9

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_OPEN:I = 0x7

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_OPEN_LATENCY:I = 0x8

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_MAJEL_RESULT_RECEIVED:I = 0xc

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_NO_RETRY_MAX_COUNT_REACHED:I = 0x1b

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_NO_RETRY_TIMEOUT_EXCEEDED:I = 0x1c

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_MAJEL_RESULT:I = 0x20

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_RECOGNITION_COMPLETE:I = 0x1f

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TEXT_MAJEL_RESULT:I = 0x49

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TTS_RESULT:I = 0x21

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_RECOGNITION_COMPLETED:I = 0xb

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_RETRY:I = 0x19

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_RETRY_AUTH_FAILURE:I = 0x1a

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_END_OF_DATA:I = 0x17

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_RECOGNIZE_REQUEST:I = 0x16

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_TEXT_RECOGNITION_REQUEST:I = 0x18

.field public static final EVENT_TYPE_PROTOCOL_EVENT_S3_TTS_RECEIVED:I = 0x1e

.field public static final EVENT_TYPE_UNEXPECTED_CLIENT_ERROR:I = 0x1d

.field public static final EVENT_TYPE_USER_EVENT_ACTION_BAIL_OUT:I = 0x32

.field public static final EVENT_TYPE_USER_EVENT_ACTION_CANCEL:I = 0xe

.field public static final EVENT_TYPE_USER_EVENT_ACTION_CANCEL_COUNTDOWN:I = 0x48

.field public static final EVENT_TYPE_USER_EVENT_ACTION_COMPLETE:I = 0xd

.field public static final EVENT_TYPE_USER_EVENT_ALTERNATE_SELECTED:I = 0xf

.field public static final EVENT_TYPE_USER_EVENT_CANCEL_WHILE_RECOGNITION_WORKING:I = 0x12

.field public static final EVENT_TYPE_USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS:I = 0x44

.field public static final EVENT_TYPE_USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS_FROM_IME:I = 0x43

.field public static final EVENT_TYPE_USER_EVENT_CHANGE_VOICE_LANGUAGE_SETTINGS:I = 0x42

.field public static final EVENT_TYPE_USER_EVENT_CLICK_ON_DEVICE_RESULT:I = 0x69

.field public static final EVENT_TYPE_USER_EVENT_CLICK_PLAY_STORE_LINK:I = 0x5b

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_DISMISS:I = 0x2d

.field public static final EVENT_TYPE_USER_EVENT_CONTACT_SELECT_PICK:I = 0x2c

.field public static final EVENT_TYPE_USER_EVENT_DELETE_RECOGNIZED_TEXT:I = 0x22

.field public static final EVENT_TYPE_USER_EVENT_EDIT_RECOGNIZED_TEXT:I = 0x10

.field public static final EVENT_TYPE_USER_EVENT_IME_CLICK_DONE:I = 0x25

.field public static final EVENT_TYPE_USER_EVENT_IME_PAUSE_RECORDING:I = 0x3f

.field public static final EVENT_TYPE_USER_EVENT_IME_RESTART_RECORDING:I = 0x40

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_CLICK_DASHBOARD:I = 0x2f

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_CLICK_MORE_INFO:I = 0x2e

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_DISABLED_FROM_SETTING:I = 0x31

.field public static final EVENT_TYPE_USER_EVENT_PERSONALIZATION_ENABLED_FROM_SETTING:I = 0x30

.field public static final EVENT_TYPE_USER_EVENT_STOP_RECORDING:I = 0x11

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION:I = 0x14

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_HOTWORD:I = 0x41

.field public static final EVENT_TYPE_USER_EVENT_TRIGGER_TEXT_RECOGNITION:I = 0x13

.field public static final INTENT_TYPE_FIELD_NUMBER:I = 0x10

.field public static final INTENT_TYPE_INTENT_ASSIST:I = 0x1

.field public static final INTENT_TYPE_INTENT_GLOBAL_SEARCH:I = 0x2

.field public static final INTENT_TYPE_INTENT_MAIN:I = 0x0

.field public static final INTENT_TYPE_INTENT_NDEF_DISCOVERED:I = 0x6

.field public static final INTENT_TYPE_INTENT_SEARCH_LONG_PRESS:I = 0x3

.field public static final INTENT_TYPE_INTENT_SEND:I = 0x4

.field public static final INTENT_TYPE_INTENT_TEXT_WEB_SEARCH:I = 0x5

.field public static final INTENT_TYPE_INTENT_VOICE_WEB_SEARCH:I = 0x7

.field public static final LATENCY_FIELD_NUMBER:I = 0x6

.field public static final NETWORK_TYPE_FIELD_NUMBER:I = 0x11

.field public static final ON_DEVICE_SOURCE_FIELD_NUMBER:I = 0xf

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_TYPE_FIELD_NUMBER:I = 0xd

.field public static final SCO_OUTPUT_DISABLED_FIELD_NUMBER:I = 0x12

.field public static final SCREEN_TRANSITION_FIELD_NUMBER:I = 0x4

.field public static final TYPING_CORRECTION_FIELD_NUMBER:I = 0xe


# instance fields
.field private actionType_:I

.field private alternateCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

.field private audioInputDevice_:I

.field private bugReport_:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

.field private cachedSize:I

.field private clientTimeMs_:J

.field private contactInfo_:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

.field private embeddedRecognizerLog_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

.field private eventSource_:I

.field private eventType_:I

.field private hasActionType:Z

.field private hasAlternateCorrection:Z

.field private hasAudioInputDevice:Z

.field private hasBugReport:Z

.field private hasClientTimeMs:Z

.field private hasContactInfo:Z

.field private hasEmbeddedRecognizerLog:Z

.field private hasEventSource:Z

.field private hasEventType:Z

.field private hasIntentType:Z

.field private hasLatency:Z

.field private hasNetworkType:Z

.field private hasOnDeviceSource:Z

.field private hasRequestId:Z

.field private hasRequestType:Z

.field private hasScoOutputDisabled:Z

.field private hasScreenTransition:Z

.field private hasTypingCorrection:Z

.field private intentType_:I

.field private latency_:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

.field private networkType_:I

.field private onDeviceSource_:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

.field private requestId_:Ljava/lang/String;

.field private requestType_:I

.field private scoOutputDisabled_:Z

.field private screenTransition_:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

.field private typingCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 763
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 780
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 814
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition_:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 834
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->actionType_:I

    .line 851
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency_:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 871
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 891
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport_:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    .line 911
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 931
    iput v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 948
    iput v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 965
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo_:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 985
    iput v4, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 1002
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 1022
    iput-object v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource_:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 1042
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 1059
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 1076
    iput-boolean v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 1176
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    .line 638
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1380
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1374
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearClientTimeMs()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1092
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearEventType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1093
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearRequestId()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1094
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearScreenTransition()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1095
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearActionType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1096
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearLatency()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1097
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearAlternateCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1098
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearBugReport()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1099
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearEmbeddedRecognizerLog()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1100
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearAudioInputDevice()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1101
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearEventSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1102
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearContactInfo()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1103
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearRequestType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1104
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearTypingCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1105
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearOnDeviceSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1106
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearIntentType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1107
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearNetworkType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1108
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clearScoOutputDisabled()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 1109
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    .line 1110
    return-object p0
.end method

.method public clearActionType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasActionType:Z

    .line 844
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->actionType_:I

    .line 845
    return-object p0
.end method

.method public clearAlternateCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAlternateCorrection:Z

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 885
    return-object p0
.end method

.method public clearAudioInputDevice()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAudioInputDevice:Z

    .line 941
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 942
    return-object p0
.end method

.method public clearBugReport()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasBugReport:Z

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport_:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    .line 905
    return-object p0
.end method

.method public clearClientTimeMs()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 2

    .prologue
    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasClientTimeMs:Z

    .line 773
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 774
    return-object p0
.end method

.method public clearContactInfo()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasContactInfo:Z

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo_:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 979
    return-object p0
.end method

.method public clearEmbeddedRecognizerLog()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEmbeddedRecognizerLog:Z

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 925
    return-object p0
.end method

.method public clearEventSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventSource:Z

    .line 958
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 959
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventType:Z

    .line 790
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 791
    return-object p0
.end method

.method public clearIntentType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1051
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasIntentType:Z

    .line 1052
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 1053
    return-object p0
.end method

.method public clearLatency()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasLatency:Z

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency_:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 865
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1068
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasNetworkType:Z

    .line 1069
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 1070
    return-object p0
.end method

.method public clearOnDeviceSource()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasOnDeviceSource:Z

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource_:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 1036
    return-object p0
.end method

.method public clearRequestId()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestId:Z

    .line 807
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 808
    return-object p0
.end method

.method public clearRequestType()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestType:Z

    .line 995
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 996
    return-object p0
.end method

.method public clearScoOutputDisabled()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1085
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScoOutputDisabled:Z

    .line 1086
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 1087
    return-object p0
.end method

.method public clearScreenTransition()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScreenTransition:Z

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition_:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 828
    return-object p0
.end method

.method public clearTypingCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasTypingCorrection:Z

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 1016
    return-object p0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->actionType_:I

    return v0
.end method

.method public getAlternateCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    return-object v0
.end method

.method public getAudioInputDevice()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    return v0
.end method

.method public getBugReport()Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport_:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getSerializedSize()I

    .line 1183
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    return v0
.end method

.method public getClientTimeMs()J
    .locals 2

    .prologue
    .line 764
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    return-wide v0
.end method

.method public getContactInfo()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo_:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    return-object v0
.end method

.method public getEmbeddedRecognizerLog()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    return-object v0
.end method

.method public getEventSource()I
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    return v0
.end method

.method public getIntentType()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    return v0
.end method

.method public getLatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency_:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    return v0
.end method

.method public getOnDeviceSource()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource_:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    return v0
.end method

.method public getScoOutputDisabled()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    return v0
.end method

.method public getScreenTransition()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition_:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1188
    const/4 v0, 0x0

    .line 1189
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasClientTimeMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getClientTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1193
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1194
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1197
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1198
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScreenTransition()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1202
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getScreenTransition()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1205
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasActionType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1206
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getActionType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1209
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1210
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getLatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAlternateCorrection()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1214
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getAlternateCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1217
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasBugReport()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1218
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getBugReport()Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1221
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEmbeddedRecognizerLog()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1222
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getEmbeddedRecognizerLog()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1225
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAudioInputDevice()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1226
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getAudioInputDevice()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1229
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventSource()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1230
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getEventSource()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1233
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasContactInfo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1234
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getContactInfo()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1237
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestType()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1238
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getRequestType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1241
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasTypingCorrection()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1242
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getTypingCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1245
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasOnDeviceSource()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1246
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getOnDeviceSource()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1249
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasIntentType()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1250
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getIntentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1253
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasNetworkType()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1254
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScoOutputDisabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1258
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getScoOutputDisabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1261
    :cond_11
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->cachedSize:I

    .line 1262
    return v0
.end method

.method public getTypingCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    return-object v0
.end method

.method public hasActionType()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasActionType:Z

    return v0
.end method

.method public hasAlternateCorrection()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAlternateCorrection:Z

    return v0
.end method

.method public hasAudioInputDevice()Z
    .locals 1

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAudioInputDevice:Z

    return v0
.end method

.method public hasBugReport()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasBugReport:Z

    return v0
.end method

.method public hasClientTimeMs()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasClientTimeMs:Z

    return v0
.end method

.method public hasContactInfo()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasContactInfo:Z

    return v0
.end method

.method public hasEmbeddedRecognizerLog()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEmbeddedRecognizerLog:Z

    return v0
.end method

.method public hasEventSource()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventSource:Z

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventType:Z

    return v0
.end method

.method public hasIntentType()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasIntentType:Z

    return v0
.end method

.method public hasLatency()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasLatency:Z

    return v0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasNetworkType:Z

    return v0
.end method

.method public hasOnDeviceSource()Z
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasOnDeviceSource:Z

    return v0
.end method

.method public hasRequestId()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestId:Z

    return v0
.end method

.method public hasRequestType()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestType:Z

    return v0
.end method

.method public hasScoOutputDisabled()Z
    .locals 1

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScoOutputDisabled:Z

    return v0
.end method

.method public hasScreenTransition()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScreenTransition:Z

    return v0
.end method

.method public hasTypingCorrection()Z
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasTypingCorrection:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1114
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
    .line 635
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1271
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1275
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1276
    :sswitch_0
    return-object p0

    .line 1281
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setClientTimeMs(J)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1285
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setEventType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1289
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1293
    :sswitch_4
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;-><init>()V

    .line 1294
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1295
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setScreenTransition(Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1299
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setActionType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1303
    :sswitch_6
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;-><init>()V

    .line 1304
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1305
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setLatency(Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1309
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    :sswitch_7
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    .line 1310
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1311
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setAlternateCorrection(Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1315
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    :sswitch_8
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;-><init>()V

    .line 1316
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1317
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setBugReport(Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1321
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;
    :sswitch_9
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    .line 1322
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1323
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setEmbeddedRecognizerLog(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1327
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setAudioInputDevice(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1331
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setEventSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto :goto_0

    .line 1335
    :sswitch_c
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;-><init>()V

    .line 1336
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1337
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setContactInfo(Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1341
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setRequestType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1345
    :sswitch_e
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    .line 1346
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1347
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setTypingCorrection(Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1351
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    :sswitch_f
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;-><init>()V

    .line 1352
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1353
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setOnDeviceSource(Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1357
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setIntentType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1361
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setNetworkType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1365
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setScoOutputDisabled(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    goto/16 :goto_0

    .line 1271
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
    .end sparse-switch
.end method

.method public setActionType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasActionType:Z

    .line 839
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->actionType_:I

    .line 840
    return-object p0
.end method

.method public setAlternateCorrection(Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 878
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAlternateCorrection:Z

    .line 879
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->alternateCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 880
    return-object p0
.end method

.method public setAudioInputDevice(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAudioInputDevice:Z

    .line 936
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->audioInputDevice_:I

    .line 937
    return-object p0
.end method

.method public setBugReport(Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 898
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasBugReport:Z

    .line 899
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->bugReport_:Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    .line 900
    return-object p0
.end method

.method public setClientTimeMs(J)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasClientTimeMs:Z

    .line 768
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->clientTimeMs_:J

    .line 769
    return-object p0
.end method

.method public setContactInfo(Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 972
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasContactInfo:Z

    .line 973
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->contactInfo_:Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    .line 974
    return-object p0
.end method

.method public setEmbeddedRecognizerLog(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 918
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEmbeddedRecognizerLog:Z

    .line 919
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->embeddedRecognizerLog_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 920
    return-object p0
.end method

.method public setEventSource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventSource:Z

    .line 953
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventSource_:I

    .line 954
    return-object p0
.end method

.method public setEventType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventType:Z

    .line 785
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->eventType_:I

    .line 786
    return-object p0
.end method

.method public setIntentType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasIntentType:Z

    .line 1047
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->intentType_:I

    .line 1048
    return-object p0
.end method

.method public setLatency(Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 858
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasLatency:Z

    .line 859
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->latency_:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 860
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasNetworkType:Z

    .line 1064
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->networkType_:I

    .line 1065
    return-object p0
.end method

.method public setOnDeviceSource(Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1026
    if-nez p1, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasOnDeviceSource:Z

    .line 1030
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->onDeviceSource_:Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    .line 1031
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestId:Z

    .line 802
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestId_:Ljava/lang/String;

    .line 803
    return-object p0
.end method

.method public setRequestType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestType:Z

    .line 990
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->requestType_:I

    .line 991
    return-object p0
.end method

.method public setScoOutputDisabled(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScoOutputDisabled:Z

    .line 1081
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->scoOutputDisabled_:Z

    .line 1082
    return-object p0
.end method

.method public setScreenTransition(Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 821
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScreenTransition:Z

    .line 822
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->screenTransition_:Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    .line 823
    return-object p0
.end method

.method public setTypingCorrection(Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1009
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasTypingCorrection:Z

    .line 1010
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->typingCorrection_:Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 1011
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasClientTimeMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getClientTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1129
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScreenTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1130
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getScreenTransition()Lcom/google/speech/logs/VoicesearchClientLogProto$ScreenTransitionData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1132
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1133
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getActionType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1135
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1136
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getLatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1138
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAlternateCorrection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1139
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getAlternateCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1141
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasBugReport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1142
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getBugReport()Lcom/google/speech/logs/VoicesearchClientLogProto$BugReport;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1144
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEmbeddedRecognizerLog()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1145
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getEmbeddedRecognizerLog()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1147
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasAudioInputDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1148
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getAudioInputDevice()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1150
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasEventSource()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1151
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getEventSource()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1153
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasContactInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1154
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getContactInfo()Lcom/google/speech/logs/VoicesearchClientLogProto$ContactInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1156
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasRequestType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1157
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getRequestType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1159
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasTypingCorrection()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1160
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getTypingCorrection()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1162
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasOnDeviceSource()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1163
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getOnDeviceSource()Lcom/google/speech/logs/VoicesearchClientLogProto$OnDeviceSource;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1165
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasIntentType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1166
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getIntentType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1168
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasNetworkType()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1169
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getNetworkType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1171
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->hasScoOutputDisabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1172
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->getScoOutputDisabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1174
    :cond_11
    return-void
.end method
