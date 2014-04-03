.class public final enum Lcom/google/glass/userevent/UserEventAction;
.super Ljava/lang/Enum;
.source "UserEventAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/userevent/UserEventAction$Obsolete;,
        Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/userevent/UserEventAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final ACCOUNT_RELOGIN_FAILURE:Ljava/lang/String; = "2"

.field public static final ACCOUNT_RELOGIN_STARTED:Ljava/lang/String; = "0"

.field public static final ACCOUNT_RELOGIN_SUCCESS:Ljava/lang/String; = "1"

.field public static final ACTIVATED_CAMERA_LONG:Ljava/lang/String; = "4"

.field public static final ACTIVATED_CAMERA_SHORT:Ljava/lang/String; = "3"

.field public static final ACTIVATED_DON:Ljava/lang/String; = "11"

.field public static final ACTIVATED_GLOBAL_LOOK_UP:Ljava/lang/String; = "7"

.field public static final ACTIVATED_GUARD_PHRASE:Ljava/lang/String; = "12"

.field public static final ACTIVATED_POWER_CONNECTED:Ljava/lang/String; = "6"

.field public static final ACTIVATED_POWER_SHORT:Ljava/lang/String; = "5"

.field public static final ACTIVATED_RELATIVE_LOOK_UP:Ljava/lang/String; = "10"

.field public static final ACTIVATED_SWIPE_LISTEN:Ljava/lang/String; = "2"

.field public static final ACTIVATED_TAP:Ljava/lang/String; = "9"

.field public static final ACTIVATED_WINK:Ljava/lang/String; = "8"

.field public static final enum ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum ARE_YOU_THERE_DIALOG_SHOWN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final BARCODE_PICTURE_EMAIL:Ljava/lang/String; = "7"

.field public static final BARCODE_PICTURE_GEO:Ljava/lang/String; = "3"

.field public static final BARCODE_PICTURE_GLASSCAST:Ljava/lang/String; = "2"

.field public static final BARCODE_PICTURE_HANGOUT:Ljava/lang/String; = "1"

.field public static final BARCODE_PICTURE_LINK:Ljava/lang/String; = "6"

.field public static final BARCODE_PICTURE_PHONE:Ljava/lang/String; = "5"

.field public static final enum BARCODE_PICTURE_SCAN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final BARCODE_PICTURE_SMS:Ljava/lang/String; = "8"

.field public static final BARCODE_PICTURE_SPEAK:Ljava/lang/String; = "4"

.field public static final enum BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final BATTERY_STATE_KEY_ACTION:Ljava/lang/String; = "a"

.field public static final BATTERY_STATE_KEY_CHARGED:Ljava/lang/String; = "cd"

.field public static final BATTERY_STATE_KEY_CHARGING:Ljava/lang/String; = "cg"

.field public static final BATTERY_STATE_KEY_GAS_GAUGE_DATA:Ljava/lang/String; = "gg"

.field public static final BATTERY_STATE_KEY_PERCENT:Ljava/lang/String; = "p"

.field public static final BATTERY_STATE_KEY_POWERED:Ljava/lang/String; = "ip"

.field public static final BATTERY_STATE_KEY_TIME_TO_EMPTY:Ljava/lang/String; = "t"

.field public static final BATTERY_STATE_VALUE_ACTION_BOOT:Ljava/lang/String; = "boot"

.field public static final BATTERY_STATE_VALUE_ACTION_LOW:Ljava/lang/String; = "low"

.field public static final BATTERY_STATE_VALUE_ACTION_OKAY:Ljava/lang/String; = "ok"

.field public static final BATTERY_STATE_VALUE_ACTION_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final BATTERY_STATE_VALUE_ACTION_UNPLUGGED:Ljava/lang/String; = "unplugged"

.field public static final enum BLUETOOTH_DISCOVERABLE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final BROWSER_EXTERNAL_URL_SOURCE:Ljava/lang/String; = "us"

.field public static final enum BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PRELOAD_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final BUGREPORT_AUDIO_CONTENTION:Ljava/lang/String; = "14"

.field public static final BUGREPORT_BT_DHCP:Ljava/lang/String; = "11"

.field public static final BUGREPORT_CAMERA:Ljava/lang/String; = "9"

.field public static final BUGREPORT_FPGA_RESET:Ljava/lang/String; = "17"

.field public static final BUGREPORT_HEAP_ADDR:Ljava/lang/String; = "13"

.field public static final BUGREPORT_MEM_HEAP:Ljava/lang/String; = "12"

.field public static final enum BUGREPORT_SENT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final BUGREPORT_SYSPROXY_TEARDOWN:Ljava/lang/String; = "15"

.field public static final BUGREPORT_TOUCHPAD:Ljava/lang/String; = "10"

.field public static final BUGREPORT_TWL_RESET:Ljava/lang/String; = "16"

.field public static final BUNDLE_NUM_TOTAL:Ljava/lang/String; = "n"

.field public static final BUNDLE_NUM_VIEWED:Ljava/lang/String; = "v"

.field public static final enum CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final CAMERA_TIMINGS_CAPTURED:Ljava/lang/String; = "c"

.field public static final CAMERA_TIMINGS_GCAM:Ljava/lang/String; = "g"

.field public static final CAMERA_TIMINGS_GCAM_TYPE_GCAM:Ljava/lang/String; = "1"

.field public static final CAMERA_TIMINGS_GCAM_TYPE_HQ:Ljava/lang/String; = "0"

.field public static final CAMERA_TIMINGS_GCAM_TYPE_HQ_FALLBACK:Ljava/lang/String; = "2"

.field public static final CAMERA_TIMINGS_LOCATION_AGE_MILLIS:Ljava/lang/String; = "la"

.field public static final CAMERA_TIMINGS_PREPARE_SAVINGS:Ljava/lang/String; = "p"

.field public static final CAMERA_TIMINGS_REQUEST_JPEG:Ljava/lang/String; = "j"

.field public static final CAMERA_TIMINGS_REQUEST_SHUTTER:Ljava/lang/String; = "s"

.field public static final CAMERA_TIMINGS_REQUEST_THUMBNAIL:Ljava/lang/String; = "t"

.field public static final CAMERA_TIMINGS_SCREEN:Ljava/lang/String; = "d"

.field public static final enum CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final COMPANION_CONNECTION_ANDROID:Ljava/lang/String; = "1"

.field public static final COMPANION_CONNECTION_IOS:Ljava/lang/String; = "2"

.field public static final enum COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final COMPANION_SCREENCAST_CONNECTED:Ljava/lang/String; = "2"

.field public static final COMPANION_SCREENCAST_QRCODE:Ljava/lang/String; = "1"

.field public static final enum COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_CHECKER:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_STATE_TIME:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final DEFERRED_CONTENT_LOAD_LATENCY:Ljava/lang/String; = "l"

.field public static final DEFERRED_CONTENT_LOAD_TAG:Ljava/lang/String; = "t"

.field public static final DEFERRED_CONTENT_LOAD_TAG_CACHED_WEBVIEW:Ljava/lang/String; = "cw"

.field public static final DEFERRED_CONTENT_LOAD_TAG_ENTITY_IMAGE:Ljava/lang/String; = "ei"

.field public static final DEFERRED_CONTENT_LOAD_TAG_GLASSWARE_ICON:Ljava/lang/String; = "gi"

.field public static final DEFERRED_CONTENT_LOAD_TAG_GLASSWARE_MESSAGES:Ljava/lang/String; = "gm"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_ATTACHMENT:Ljava/lang/String; = "ia"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_PROXY:Ljava/lang/String; = "ip"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_PROXY_BITMAP:Ljava/lang/String; = "ipb"

.field public static final DEFERRED_CONTENT_LOAD_TAG_IMAGE_URI:Ljava/lang/String; = "iuri"

.field public static final DEFERRED_CONTENT_LOAD_TAG_SEARCH_HTML:Ljava/lang/String; = "sh"

.field public static final DEFERRED_CONTENT_LOAD_TAG_SEARCH_PROTO:Ljava/lang/String; = "sp"

.field public static final DEFERRED_CONTENT_LOAD_TAG_VIDEO:Ljava/lang/String; = "v"

.field public static final enum DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final DEVICE_STORAGE_FULL:Ljava/lang/String; = "3"

.field public static final DEVICE_STORAGE_FULL_BLOCKED_PHOTO:Ljava/lang/String; = "1"

.field public static final DEVICE_STORAGE_FULL_BLOCKED_VIDEO:Ljava/lang/String; = "2"

.field public static final DEVICE_STORAGE_FULL_DURING_VIDEO:Ljava/lang/String; = "3"

.field public static final DEVICE_STORAGE_LOW:Ljava/lang/String; = "2"

.field public static final DEVICE_STORAGE_OK:Ljava/lang/String; = "1"

.field public static final enum DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final DISMISSED_DOWNSWIPE:Ljava/lang/String; = "1"

.field public static final DISMISSED_NUDGE:Ljava/lang/String; = "2"

.field public static final DISMISSED_QUICK_TIMEOUT:Ljava/lang/String; = "4"

.field public static final DISMISSED_SYSTEM_TIMEOUT:Ljava/lang/String; = "3"

.field public static final enum DOFFED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final DOFFED_DON_TIME_MS_KEY:Ljava/lang/String; = "don_time_ms"

.field public static final DOFFED_OHD_ACTIVE_KEY:Ljava/lang/String; = "ohd_active"

.field public static final enum DONNED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum ENTITY_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final FAILED_TO_UPLOAD_ALL_ATTACHMENTS:Ljava/lang/String; = "1"

.field public static final enum FILTERED_TIMELINE_DISMISS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final FILTERED_TIMELINE_DISMISS_POSITION_KEY:Ljava/lang/String; = "p"

.field public static final enum FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY:Ljava/lang/String; = "c"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_BLUETOOTH:Ljava/lang/String; = "1"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_OTHER:Ljava/lang/String; = "3"

.field public static final GLASSWARE_INSTALLED_CONNECTIVITY_WIFI:Ljava/lang/String; = "2"

.field public static final GLASSWARE_INSTALLED_DOWNLOAD_TIME:Ljava/lang/String; = "d"

.field public static final GLASSWARE_INSTALLED_FAILED:J = -0x1L

.field public static final GLASSWARE_INSTALLED_INSTALL_TIME:Ljava/lang/String; = "i"

.field public static final GLASSWARE_INSTALLED_TIME_TO_DOWNLOAD_START:Ljava/lang/String; = "s"

.field public static final GLASSWARE_INSTALLED_UPDATE:J = -0x2L

.field public static final enum GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final GLASSWARE_UNINSTALLED_BLACKLIST:J = -0x3L

.field public static final GLASSWARE_UNINSTALLED_CONNECTIVITY:Ljava/lang/String; = "c"

.field public static final GLASSWARE_UNINSTALLED_TIME:Ljava/lang/String; = "u"

.field public static final GLASSWARE_UNINSTALLED_TIME_TO_UNINSTALL_START:Ljava/lang/String; = "s"

.field public static final enum GUEST_MODE_TURNED_OFF:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum GUEST_MODE_TURNED_ON:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANDSFREE_ABOVE_ENABLE_DOUBLE_BLINK:Ljava/lang/String; = "db"

.field public static final HANDSFREE_BELOW_PITCH_HANDSFREE_DURATION:Ljava/lang/String; = "hft"

.field public static final HANDSFREE_BELOW_PITCH_HANDSFREE_ENGAGED:Ljava/lang/String; = "s"

.field public static final HANDSFREE_BELOW_PITCH_LOOKUP_DURATION:Ljava/lang/String; = "lut"

.field public static final HANDSFREE_DOUBLE_BLINK_DETECTED_DELTA_T:Ljava/lang/String; = "t"

.field public static final HANDSFREE_ITEM_DISPLACEMENT:Ljava/lang/String; = "idisp"

.field public static final HANDSFREE_ITEM_DISTANCE:Ljava/lang/String; = "idist"

.field public static final enum HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_BACKGROUNDED_STATUS_CONNECTING:Ljava/lang/String; = "1"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_HANGING_OUT:Ljava/lang/String; = "3"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_UNKNOWN:Ljava/lang/String; = "0"

.field public static final HANGOUTS_BACKGROUNDED_STATUS_WAITING:Ljava/lang/String; = "2"

.field public static final enum HANGOUTS_BROUGHT_TO_FOREGROUND:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_CREATED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_ENDED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_ENDED_BACKGROUND_KEY:Ljava/lang/String; = "bg"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_BLUETOOTH:Ljava/lang/String; = "1"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_OTHER:Ljava/lang/String; = "3"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_WIFI:Ljava/lang/String; = "2"

.field public static final HANGOUTS_ENDED_ERROR_KEY:Ljava/lang/String; = "e"

.field public static final HANGOUTS_ENDED_EXPERT_KEY:Ljava/lang/String; = "ex"

.field public static final enum HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_ENDED_LOG_ACTUAL_ENC_BITRATE_KEY:Ljava/lang/String; = "abr"

.field public static final HANGOUTS_ENDED_LOG_CONNECTIVITY_KEY:Ljava/lang/String; = "c"

.field public static final HANGOUTS_ENDED_LOG_DURATION_KEY:Ljava/lang/String; = "d"

.field public static final HANGOUTS_ENDED_LOG_FIRST_PARTICIPANT_JOIN_KEY:Ljava/lang/String; = "t"

.field public static final HANGOUTS_ENDED_LOG_INITIATION_KEY:Ljava/lang/String; = "i"

.field public static final HANGOUTS_ENDED_LOG_NUM_PARTICIPANTS_KEY:Ljava/lang/String; = "n"

.field public static final HANGOUTS_ENDED_LOG_OUTGOING_FRAMERATE_KEY:Ljava/lang/String; = "f"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_LOST_KEY:Ljava/lang/String; = "l"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_RETRANSMIT_KEY:Ljava/lang/String; = "rx"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_SENT_KEY:Ljava/lang/String; = "o"

.field public static final HANGOUTS_ENDED_LOG_ROOM_KEY:Ljava/lang/String; = "r"

.field public static final HANGOUTS_ENDED_LOG_RTT_KEY:Ljava/lang/String; = "p"

.field public static final HANGOUTS_ENDED_LOG_RX_BANDWIDTH_KEY:Ljava/lang/String; = "x"

.field public static final HANGOUTS_ENDED_LOG_TARGET_ENC_BITRATE_KEY:Ljava/lang/String; = "tbr"

.field public static final HANGOUTS_ENDED_LOG_TX_BANDWIDTH_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_ENDED_LOG_TX_BITRATE_KEY:Ljava/lang/String; = "b"

.field public static final HANGOUTS_ENDED_NO_ERROR:Ljava/lang/String; = "-1"

.field public static final HANGOUTS_ENDED_ROOM_CREATED:Ljava/lang/String; = "0"

.field public static final HANGOUTS_ENDED_ROOM_EXISTING:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_ENTERED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_ENTERED_TIMELINE:Ljava/lang/String; = "2"

.field public static final HANGOUTS_ENTERED_VOICE:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_ERROR_FAILURE:Ljava/lang/String; = "3"

.field public static final HANGOUTS_ERROR_MEETING_ENTER:Ljava/lang/String; = "1"

.field public static final HANGOUTS_ERROR_SIGNIN:Ljava/lang/String; = "2"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_ACTIVE_CARD:Ljava/lang/String; = "2"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_KEY:Ljava/lang/String; = "c"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_PARTICIPANT_JOINED:Ljava/lang/String; = "1"

.field public static final HANGOUTS_FOREGROUNDED_CAUSE_UNKNOWN:Ljava/lang/String; = "0"

.field public static final enum HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_ANSWERED:Ljava/lang/String; = "0"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_IGNORED:Ljava/lang/String; = "2"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_REJECTED:Ljava/lang/String; = "1"

.field public static final HANGOUTS_INCOMING_HANGOUT_SOURCE_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_INCOMING_HANGOUT_TYPE_KEY:Ljava/lang/String; = "t"

.field public static final enum HANGOUTS_INVITE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_INVITE_CIRCLE:Ljava/lang/String; = "2"

.field public static final HANGOUTS_INVITE_PERSON:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_MUTE_REMOTE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HANGOUTS_PARTICIPANT_STYLE_PHOTO_AND_NAME:Ljava/lang/String; = "1"

.field public static final HANGOUTS_PARTICIPANT_STYLE_PHOTO_ONLY:Ljava/lang/String; = "2"

.field public static final HANGOUTS_PARTICIPANT_STYLE_VIDEO_AND_NAME:Ljava/lang/String; = "3"

.field public static final HANGOUTS_PARTICIPANT_STYLE_VIDEO_ONLY:Ljava/lang/String; = "4"

.field public static final enum HANGOUTS_SENT_TO_BACKGROUND:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HEADSET_PLUG_MICROPHONE:Ljava/lang/String; = "m"

.field public static final HEADSET_PLUG_NAME:Ljava/lang/String; = "n"

.field public static final HEADSET_PLUG_STATE:Ljava/lang/String; = "s"

.field public static final enum HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HEAD_WAKE_ENABLED:Ljava/lang/String; = "e"

.field public static final HEAD_WAKE_PITCH_ANGLE:Ljava/lang/String; = "w"

.field public static final enum HOME_ACTIVATED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HTML_CACHE_HIT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum HTML_CACHE_INSERTION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final HTML_CACHE_INSERTION_CAUSED_INVALIDATE:Ljava/lang/String; = "inv"

.field public static final enum HTML_CACHE_MISS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final IMAGE_DOWNLOAD_LATENCY_BYTES:Ljava/lang/String; = "b"

.field public static final IMAGE_DOWNLOAD_LATENCY_TIME:Ljava/lang/String; = "l"

.field public static final enum LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MIRROR_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MUSIC_AUTOPLAY_RESULT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_AUTOPLAY_RESULT_AUTOPLAYED:Ljava/lang/String; = "0"

.field public static final MUSIC_AUTOPLAY_RESULT_AUTOPLAY_CANCELED:Ljava/lang/String; = "1"

.field public static final MUSIC_AUTOPLAY_RESULT_KEY:Ljava/lang/String; = "a"

.field public static final enum MUSIC_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MUSIC_GLASS_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_GLASS_ERROR_CAUSE_KEY:Ljava/lang/String; = "c"

.field public static final MUSIC_INITIATED_AUTOPLAY:Ljava/lang/String; = "0"

.field public static final MUSIC_INITIATED_KEY:Ljava/lang/String; = "i"

.field public static final MUSIC_INITIATED_NOW_PLAYING:Ljava/lang/String; = "2"

.field public static final MUSIC_INITIATED_RESULTS:Ljava/lang/String; = "1"

.field public static final MUSIC_INITIATED_TIMELINE:Ljava/lang/String; = "3"

.field public static final enum MUSIC_NEXT_TRACK:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_NOW_PLAYING_ACTION_DISMISSED:Ljava/lang/String; = "0"

.field public static final MUSIC_NOW_PLAYING_ACTION_INTERACTED:Ljava/lang/String; = "2"

.field public static final MUSIC_NOW_PLAYING_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final MUSIC_NOW_PLAYING_ACTION_SWIPED_AWAY:Ljava/lang/String; = "1"

.field public static final MUSIC_NOW_PLAYING_TIME_KEY:Ljava/lang/String; = "t"

.field public static final enum MUSIC_NOW_PLAYING_USED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MUSIC_PAUSE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_PAUSE_DURATION_PLAYED_KEY:Ljava/lang/String; = "t"

.field public static final MUSIC_PAUSE_NUM_TRACKS_PLAYED_KEY:Ljava/lang/String; = "n"

.field public static final enum MUSIC_PLAY:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MUSIC_PLAY_TIME:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_PLAY_TIME_DURATION_KEY:Ljava/lang/String; = "t"

.field public static final MUSIC_PREVIOUS_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final enum MUSIC_PREVIOUS_TRACK:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_RADIO_INITIATION_KEY:Ljava/lang/String; = "i"

.field public static final MUSIC_RADIO_INITIATION_NOW_PLAYING:Ljava/lang/String; = "0"

.field public static final MUSIC_RADIO_INITIATION_RESULTS:Ljava/lang/String; = "1"

.field public static final MUSIC_RADIO_SEED_ALBUM:Ljava/lang/String; = "1"

.field public static final MUSIC_RADIO_SEED_ARTIST:Ljava/lang/String; = "0"

.field public static final MUSIC_RADIO_SEED_KEY:Ljava/lang/String; = "s"

.field public static final MUSIC_RADIO_SEED_TRACK:Ljava/lang/String; = "2"

.field public static final enum MUSIC_RADIO_STATION_PLAYED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MUSIC_RESULTS_SHOWN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum MUSIC_STOP:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_TIME_SINCE_PREVIOUS_ACTION_KEY:Ljava/lang/String; = "l"

.field public static final enum MUSIC_TRACK_LOADED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final MUSIC_TRACK_LOADED_RESULT_ERROR:Ljava/lang/String; = "1"

.field public static final MUSIC_TRACK_LOADED_RESULT_KEY:Ljava/lang/String; = "r"

.field public static final MUSIC_TRACK_LOADED_RESULT_SUCCESS:Ljava/lang/String; = "0"

.field public static final MUSIC_TRACK_LOADED_TIME_LOADING_KEY:Ljava/lang/String; = "t"

.field private static final NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/userevent/UserEventAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NATIVE_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final NATIVE_COMMAND_LITERAL_KEY:Ljava/lang/String; = "l"

.field public static final NATIVE_COMMAND_NEEDS_INPUT_KEY:Ljava/lang/String; = "i"

.field public static final NATIVE_COMMAND_PACKAGE_NAME_KEY:Ljava/lang/String; = "p"

.field public static final enum NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final OOBE_ANDROID_CHOSEN:Ljava/lang/String; = "a"

.field public static final OOBE_CHECKLIST_ITEM_ADDCONTACTS:Ljava/lang/String; = "c"

.field public static final OOBE_CHECKLIST_ITEM_BLUETOOTH:Ljava/lang/String; = "b"

.field public static final OOBE_CHECKLIST_ITEM_DONDOFF:Ljava/lang/String; = "d"

.field public static final OOBE_CHECKLIST_ITEM_GLASSWARE:Ljava/lang/String; = "g"

.field public static final OOBE_CHECKLIST_ITEM_KEY:Ljava/lang/String; = "i"

.field public static final enum OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final OOBE_CHECKLIST_ITEM_WIFI:Ljava/lang/String; = "w"

.field public static final OOBE_CHECKLIST_ITEM_WINK:Ljava/lang/String; = "k"

.field public static final enum OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final OOBE_COMPUTER_CHOSEN:Ljava/lang/String; = "c"

.field public static final enum OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final OTA_SUCCESS_STATE_FAILURE:Ljava/lang/String; = "0"

.field public static final OTA_SUCCESS_STATE_KEY:Ljava/lang/String; = "s"

.field public static final OTA_SUCCESS_STATE_SUCCESSFUL:Ljava/lang/String; = "1"

.field public static final enum OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final OTA_TRIGGER_ACTION:Ljava/lang/String; = "a"

.field public static final OTA_TRIGGER_AUTOMATIC:Ljava/lang/String; = "a"

.field public static final OTA_TRIGGER_USER_DIALOG:Ljava/lang/String; = "a"

.field public static final OTA_TRIGGER_USER_MENU:Ljava/lang/String; = "a"

.field public static final enum PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum PEOPLE_GRID_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final PEOPLE_GRID_SELECTED_LAUNCH_OTHER:Ljava/lang/String; = "o"

.field public static final PEOPLE_GRID_SELECTED_LAUNCH_SELF:Ljava/lang/String; = "s"

.field public static final enum PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final PEOPLE_GRID_SEND_MESSAGE_LOCATION_GRID:Ljava/lang/String; = "g"

.field public static final PEOPLE_GRID_SEND_MESSAGE_LOCATION_KEY:Ljava/lang/String; = "loc"

.field public static final PEOPLE_GRID_SEND_MESSAGE_LOCATION_TIMELINE:Ljava/lang/String; = "t"

.field public static final enum PEOPLE_GRID_START:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum PHONE_CALL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final PHONE_CALL_ACTION:Ljava/lang/String; = "a"

.field public static final PHONE_CALL_CONNECTED:Ljava/lang/String; = "6"

.field public static final PHONE_CALL_DURATION:Ljava/lang/String; = "12"

.field public static final PHONE_CALL_DURATION_KEY:Ljava/lang/String; = "t"

.field public static final PHONE_CALL_ERROR:Ljava/lang/String; = "8"

.field public static final PHONE_CALL_INCOMING_CALL_ACCEPTED:Ljava/lang/String; = "1"

.field public static final PHONE_CALL_INCOMING_CALL_IGNORED:Ljava/lang/String; = "3"

.field public static final PHONE_CALL_INCOMING_CALL_REJECTED:Ljava/lang/String; = "2"

.field public static final PHONE_CALL_MISSED_CALL:Ljava/lang/String; = "4"

.field public static final PHONE_CALL_MUTED:Ljava/lang/String; = "7"

.field public static final PHONE_CALL_OUTGOING_CALL:Ljava/lang/String; = "5"

.field public static final PHONE_CALL_OUTGOING_INTERNATIONAL:Ljava/lang/String; = "10"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_CALL_OUTGOING_NATIONAL:Ljava/lang/String; = "9"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_CALL_OUTGOING_REGION:Ljava/lang/String; = "13"

.field public static final PHONE_CALL_OUTGOING_REGION_INTERNATIONAL:Ljava/lang/String; = "i"

.field public static final PHONE_CALL_OUTGOING_REGION_KEY:Ljava/lang/String; = "r"

.field public static final PHONE_CALL_OUTGOING_REGION_NATIONAL:Ljava/lang/String; = "n"

.field public static final PHONE_CALL_OUTGOING_REGION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final PHONE_CALL_OUTGOING_UNKNOWN:Ljava/lang/String; = "11"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PITCH_ON_TAP_TO_WAKE:Ljava/lang/String; = "p"

.field public static final PLAY_VIDEO_END_DURATION:Ljava/lang/String; = "d"

.field public static final PLAY_VIDEO_END_SCRUB_BACKWARD:Ljava/lang/String; = "b"

.field public static final PLAY_VIDEO_END_SCRUB_FORWARD:Ljava/lang/String; = "f"

.field public static final PLAY_VIDEO_END_SOURCE:Ljava/lang/String; = "s"

.field public static final PLAY_VIDEO_END_TOGGLE:Ljava/lang/String; = "t"

.field public static final PLAY_VIDEO_END_WATCH_DURATION:Ljava/lang/String; = "w"

.field public static final enum PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final PLAY_VIDEO_ERROR_DURATION:Ljava/lang/String; = "d"

.field public static final enum PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final PRD_BYTES_REQUEST:Ljava/lang/String; = "breq"

.field public static final PRD_BYTES_RESPONSE:Ljava/lang/String; = "bres"

.field public static final PRD_ERROR:Ljava/lang/String; = "e"

.field public static final PRD_LATENCY_MS:Ljava/lang/String; = "l"

.field public static final PRD_PATH:Ljava/lang/String; = "p"

.field public static final PRD_REQUESTS:Ljava/lang/String; = "r"

.field public static final enum PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final RECORD_VIDEO_END_EXTENDED:Ljava/lang/String; = "e"

.field public static final RECORD_VIDEO_END_LENGTH:Ljava/lang/String; = "l"

.field public static final enum RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final RESUMABLE_UPLOADER_PAYLOAD_IDENTIFIER:Ljava/lang/String; = "m"

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SCREEN_ON:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final SETUP_VIA_COMPANION:Ljava/lang/String; = "c"

.field public static final SETUP_VIA_WEBSITE:Ljava/lang/String; = "w"

.field public static final SHARED_ANNOTATED:Ljava/lang/String; = "a"

.field public static final SHARED_ANNOTATED_FALSE:Ljava/lang/String; = "0"

.field public static final SHARED_ANNOTATED_TRUE:Ljava/lang/String; = "1"

.field public static final SHARED_ORIGIN:Ljava/lang/String; = "o"

.field public static final SHARED_ORIGIN_POSTVIEW:Ljava/lang/String; = "p"

.field public static final SHARED_ORIGIN_SEARCH:Ljava/lang/String; = "s"

.field public static final SHARED_ORIGIN_TIMELINE:Ljava/lang/String; = "t"

.field public static final SHARED_TYPE:Ljava/lang/String; = "t"

.field public static final SHARED_TYPE_PHOTO:Ljava/lang/String; = "1"

.field public static final SHARED_TYPE_UNKNOWN:Ljava/lang/String; = "0"

.field public static final SHARED_TYPE_VIDEO:Ljava/lang/String; = "2"

.field public static final enum SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum SOUND_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final TIMELINE_NAVIGATION_DIST_FROM_CLOCK:Ljava/lang/String; = "d"

.field public static final TIMELINE_NAVIGATION_IS_NOTIFICATION:Ljava/lang/String; = "in"

.field public static final TIMELINE_NAVIGATION_NUM_ITEMS:Ljava/lang/String; = "n"

.field public static final TIMELINE_SYNC_BYTES:Ljava/lang/String; = "b"

.field public static final TIMELINE_SYNC_DURATION:Ljava/lang/String; = "l"

.field public static final TIMELINE_SYNC_IS_POWERED:Ljava/lang/String; = "p"

.field public static final TIMELINE_SYNC_IS_SCREEN_ON:Ljava/lang/String; = "s"

.field public static final TIMELINE_SYNC_IS_WIFI_CONNECTED:Ljava/lang/String; = "w"

.field public static final enum TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final TOUCH_MENU_ENTITY_COMMAND_ADD_A_CALENDAR_EVENT:Ljava/lang/String; = "8"

.field public static final TOUCH_MENU_ENTITY_COMMAND_CALL:Ljava/lang/String; = "1"

.field public static final TOUCH_MENU_ENTITY_COMMAND_CHECK_ME_IN:Ljava/lang/String; = "7"

.field public static final TOUCH_MENU_ENTITY_COMMAND_EXPLORE_NEARBY:Ljava/lang/String; = "11"

.field public static final TOUCH_MENU_ENTITY_COMMAND_FIND_A_PLACE:Ljava/lang/String; = "10"

.field public static final TOUCH_MENU_ENTITY_COMMAND_FIND_A_RECIPE:Ljava/lang/String; = "9"

.field public static final TOUCH_MENU_ENTITY_COMMAND_KEY:Ljava/lang/String; = "command"

.field public static final TOUCH_MENU_ENTITY_COMMAND_MESSAGE:Ljava/lang/String; = "2"

.field public static final TOUCH_MENU_ENTITY_COMMAND_POST_AN_UPDATE:Ljava/lang/String; = "6"

.field public static final TOUCH_MENU_ENTITY_COMMAND_SHARE:Ljava/lang/String; = "4"

.field public static final TOUCH_MENU_ENTITY_COMMAND_TAKE_A_NOTE:Ljava/lang/String; = "5"

.field public static final TOUCH_MENU_ENTITY_COMMAND_VIDEO_CALL:Ljava/lang/String; = "3"

.field public static final TOUCH_MENU_ENTITY_IS_PREPEND_FALSE:Ljava/lang/String; = "0"

.field public static final TOUCH_MENU_ENTITY_IS_PREPEND_KEY:Ljava/lang/String; = "pre"

.field public static final TOUCH_MENU_ENTITY_IS_PREPEND_TRUE:Ljava/lang/String; = "1"

.field public static final TOUCH_MENU_ENTITY_POSITION_KEY:Ljava/lang/String; = "pos"

.field public static final enum TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum TWO_FINGER_ZOOM_OUT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final UI_PERFORMANCE_AVERAGE:Ljava/lang/String; = "a"

.field public static final UI_PERFORMANCE_COUNT:Ljava/lang/String; = "c"

.field public static final UI_PERFORMANCE_MAX:Ljava/lang/String; = "max"

.field public static final UI_PERFORMANCE_MIN:Ljava/lang/String; = "min"

.field public static final UI_PERFORMANCE_VARIANCE:Ljava/lang/String; = "v"

.field public static final enum UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum UI_TIME_TO_RENDER:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum USER_IS_NOT_THERE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum USER_IS_THERE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VIDEO_PLAYBACK:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final VIDEO_TIMINGS_REQUEST_START:Ljava/lang/String; = "st"

.field public static final enum VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final VOICE_MENU_COMMAND_ADD_CAPTION:Ljava/lang/String; = "22"

.field public static final VOICE_MENU_COMMAND_ANSWER_CALL_PHONE:Ljava/lang/String; = "16"

.field public static final VOICE_MENU_COMMAND_ANSWER_CALL_VIDEO:Ljava/lang/String; = "17"

.field public static final VOICE_MENU_COMMAND_GET_DIRECTIONS_TO:Ljava/lang/String; = "5"

.field public static final VOICE_MENU_COMMAND_GOOGLE:Ljava/lang/String; = "2"

.field public static final VOICE_MENU_COMMAND_HANG_OUT_WITH:Ljava/lang/String; = "8"

.field public static final VOICE_MENU_COMMAND_HIDE_ROUTE_OVERVIEW:Ljava/lang/String; = "26"

.field public static final VOICE_MENU_COMMAND_IGNORE_CALL_PHONE:Ljava/lang/String; = "18"

.field public static final VOICE_MENU_COMMAND_IGNORE_CALL_VIDEO:Ljava/lang/String; = "19"

.field public static final VOICE_MENU_COMMAND_MAKE_A_CALL_TO:Ljava/lang/String; = "7"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_HOME:Ljava/lang/String; = "1"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_INCOMING_PHONE_CALL:Ljava/lang/String; = "14"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_INCOMING_VIDEO_CALL:Ljava/lang/String; = "15"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_NAVIGATION:Ljava/lang/String; = "24"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_NOTIFICATION:Ljava/lang/String; = "12"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_PICTURE:Ljava/lang/String; = "13"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_PICTURE_SHARE:Ljava/lang/String; = "21"

.field public static final VOICE_MENU_COMMAND_OK_GLASS_VIDEO:Ljava/lang/String; = "29"

.field public static final VOICE_MENU_COMMAND_PLAY_VIDEO:Ljava/lang/String; = "23"

.field public static final VOICE_MENU_COMMAND_READ_ALOUD:Ljava/lang/String; = "9"

.field public static final VOICE_MENU_COMMAND_RECORD_A_VIDEO:Ljava/lang/String; = "4"

.field public static final VOICE_MENU_COMMAND_REPLY:Ljava/lang/String; = "10"

.field public static final VOICE_MENU_COMMAND_SEND_A_MESSAGE_TO:Ljava/lang/String; = "6"

.field public static final VOICE_MENU_COMMAND_SHARE_WITH:Ljava/lang/String; = "20"

.field public static final VOICE_MENU_COMMAND_SHOW_ROUTE_OVERVIEW:Ljava/lang/String; = "25"

.field public static final enum VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final VOICE_MENU_COMMAND_STOP_DIRECTIONS:Ljava/lang/String; = "27"

.field public static final VOICE_MENU_COMMAND_TAKE_A_PICTURE:Ljava/lang/String; = "3"

.field public static final enum VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final VOICE_MENU_COMMAND_VIDEO_CALL:Ljava/lang/String; = "11"

.field public static final VOICE_MENU_COMMAND_VOICE_FOR_MIRROR:Ljava/lang/String; = "28"

.field public static final enum VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_MUSIC_DETECTED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final VOLUME_CONTROL_CONTEXT_CALL:Ljava/lang/String; = "call"

.field public static final VOLUME_CONTROL_CONTEXT_MUSIC:Ljava/lang/String; = "music"

.field public static final VOLUME_CONTROL_CONTEXT_SETTINGS:Ljava/lang/String; = "settings"

.field public static final enum VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final enum VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction; = null

.field public static final VOLUME_CONTROL_KEY_CONTEXT:Ljava/lang/String; = "c"

.field public static final VOLUME_CONTROL_VOLUME:Ljava/lang/String; = "v"

.field public static final enum WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

.field public static final enum WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;


# instance fields
.field public final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SETUP_BARCODE_SCANNED"

    const-string v6, "3000"

    invoke-direct {v4, v5, v8, v6}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    .line 28
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BUGREPORT_SENT"

    const-string v6, "3001"

    invoke-direct {v4, v5, v9, v6}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/userevent/UserEventAction;

    .line 29
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SETUP_ACCOUNT_FAILED"

    const-string v6, "3002"

    invoke-direct {v4, v5, v10, v6}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 30
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "ACCOUNT_RELOGIN"

    const-string v6, "3003"

    invoke-direct {v4, v5, v11, v6}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    .line 31
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SHUTDOWN_IN_SETUP"

    const-string v6, "3004"

    invoke-direct {v4, v5, v12, v6}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction;

    .line 32
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SETUP_SUCCESS"

    const/4 v6, 0x5

    const-string v7, "3135"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 33
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BLUETOOTH_DISCOVERABLE"

    const/4 v6, 0x6

    const-string v7, "3014"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BLUETOOTH_DISCOVERABLE:Lcom/google/glass/userevent/UserEventAction;

    .line 34
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HOME_ACTIVATED"

    const/4 v6, 0x7

    const-string v7, "3017"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    .line 35
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HOME_DISMISSED"

    const/16 v6, 0x8

    const-string v7, "3018"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 36
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SCREEN_ON"

    const/16 v6, 0x9

    const-string v7, "3019"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 37
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SCREEN_ON_DURATION"

    const/16 v6, 0xa

    const-string v7, "3020"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction;

    .line 38
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "USER_INITIATED_SCREEN_ON"

    const/16 v6, 0xb

    const-string v7, "3040"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 39
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANDSFREE_VOICE_ACTION"

    const/16 v6, 0xc

    const-string v7, "3041"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction;

    .line 40
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_STARTED"

    const/16 v6, 0xd

    const-string v7, "3021"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 41
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_FIRST_RECOGNITION"

    const/16 v6, 0xe

    const-string v7, "3025"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    .line 42
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_END_OF_SPEECH"

    const/16 v6, 0xf

    const-string v7, "3024"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    .line 43
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_RECOGNITION"

    const/16 v6, 0x10

    const-string v7, "3022"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    .line 44
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_ERROR"

    const/16 v6, 0x11

    const-string v7, "3026"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 45
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_NO_SPEECH_DETECTED"

    const/16 v6, 0x12

    const-string v7, "3010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 46
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_DISMISS"

    const/16 v6, 0x13

    const-string v7, "3005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 47
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_MESSAGE_DISMISS"

    const/16 v6, 0x14

    const-string v7, "3006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 48
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_RESULT"

    const/16 v6, 0x15

    const-string v7, "3023"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    .line 49
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_NO_ANSWER"

    const/16 v6, 0x16

    const-string v7, "3007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    .line 50
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_FROM_TIMELINE"

    const/16 v6, 0x17

    const-string v7, "3008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    .line 51
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_SWIPE"

    const/16 v6, 0x18

    const-string v7, "3009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction;

    .line 52
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SOUND_SEARCH_RESULT"

    const/16 v6, 0x19

    const-string v7, "3143"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SOUND_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    .line 53
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_MUSIC_DETECTED"

    const/16 v6, 0x1a

    const-string v7, "3144"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_MUSIC_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 54
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_ITEM_INSERTED"

    const/16 v6, 0x1b

    const-string v7, "3027"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    .line 55
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_ITEM_SHARE_STARTED"

    const/16 v6, 0x1c

    const-string v7, "3142"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 56
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_ITEM_SHARED"

    const/16 v6, 0x1d

    const-string v7, "3028"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction;

    .line 57
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PHONE_CALL"

    const/16 v6, 0x1e

    const-string v7, "3029"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    .line 58
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DEVICE_STORAGE_BLOCK_USER_ACTION"

    const/16 v6, 0x1f

    const-string v7, "3120"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    .line 59
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VIEWED_BUNDLE"

    const/16 v6, 0x20

    const-string v7, "3121"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction;

    .line 60
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BATTERY_STATE"

    const/16 v6, 0x21

    const-string v7, "3122"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    .line 61
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TWO_FINGER_ZOOM_OUT"

    const/16 v6, 0x22

    const-string v7, "3123"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TWO_FINGER_ZOOM_OUT:Lcom/google/glass/userevent/UserEventAction;

    .line 62
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PRESS_TO_SEARCH_DISMISSED"

    const/16 v6, 0x23

    const-string v7, "3124"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 63
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "FORCE_EVENT_LOG_FLUSH"

    const/16 v6, 0x24

    const-string v7, "3125"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    .line 64
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_NAVIGATION"

    const/16 v6, 0x25

    const-string v7, "3126"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction;

    .line 65
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VIDEO_PLAYBACK"

    const/16 v6, 0x26

    const-string v7, "3127"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VIDEO_PLAYBACK:Lcom/google/glass/userevent/UserEventAction;

    .line 66
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DEFERRED_CONTENT_LOAD"

    const/16 v6, 0x27

    const-string v7, "3128"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    .line 67
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEADSET_PLUG"

    const/16 v6, 0x28

    const-string v7, "3132"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

    .line 68
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OTA_TRIGGER"

    const/16 v6, 0x29

    const-string v7, "3140"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    .line 69
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "FACTORY_RESET"

    const/16 v6, 0x2a

    const-string v7, "3141"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction;

    .line 72
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "WIFI_BARCODE_SCANNED"

    const/16 v6, 0x2b

    const-string v7, "3012"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    .line 73
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "WIFI_SCAN_RESULT_TAPPED"

    const/16 v6, 0x2c

    const-string v7, "14001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    .line 74
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "WIFI_SETUP_VIA_COMPANION"

    const/16 v6, 0x2d

    const-string v7, "14002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    .line 75
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "WIFI_CONNECTED"

    const/16 v6, 0x2e

    const-string v7, "3013"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->WIFI_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 79
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SEND_MESSAGE_INITIATED"

    const/16 v6, 0x2f

    const-string v7, "3030"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 80
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SEND_MESSAGE_COMPLETED"

    const/16 v6, 0x30

    const-string v7, "3031"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 81
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "REPLY_INITIATED"

    const/16 v6, 0x31

    const-string v7, "3032"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 82
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "REPLY_COMPLETED"

    const/16 v6, 0x32

    const-string v7, "3033"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 83
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "REPLY_ALL_INITIATED"

    const/16 v6, 0x33

    const-string v7, "3034"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 84
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "REPLY_ALL_COMPLETED"

    const/16 v6, 0x34

    const-string v7, "3035"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 85
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DELETE_INITIATED"

    const/16 v6, 0x35

    const-string v7, "3036"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    .line 86
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DELETE_COMPLETED"

    const/16 v6, 0x36

    const-string v7, "3037"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 87
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RETRY_REPLY"

    const/16 v6, 0x37

    const-string v7, "3038"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    .line 88
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MESSAGE_REPLY_NO_COMPANION"

    const/16 v6, 0x38

    const-string v7, "3039"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    .line 91
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_DOWNSTREAM_SYNC_STARTED"

    const/16 v6, 0x39

    const-string v7, "3050"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 92
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_DOWNSTREAM_SYNC_FINISHED"

    const/16 v6, 0x3a

    const-string v7, "3051"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 93
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_DOWNSTREAM_SYNC_BACKOFF"

    const/16 v6, 0x3b

    const-string v7, "3052"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    .line 94
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_STARTED"

    const/16 v6, 0x3c

    const-string v7, "3055"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 95
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY"

    const/16 v6, 0x3d

    const-string v7, "3056"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

    .line 96
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR"

    const/16 v6, 0x3e

    const-string v7, "3057"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 97
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_BACKOFF"

    const/16 v6, 0x3f

    const-string v7, "3058"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    .line 98
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY"

    const/16 v6, 0x40

    const-string v7, "3059"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction;

    .line 99
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_STARTED"

    const/16 v6, 0x41

    const-string v7, "3060"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 100
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR"

    const/16 v6, 0x42

    const-string v7, "3061"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 101
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR"

    const/16 v6, 0x43

    const-string v7, "3062"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 102
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_RESUMED"

    const/16 v6, 0x44

    const-string v7, "3063"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/userevent/UserEventAction;

    .line 103
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_FINISHED"

    const/16 v6, 0x45

    const-string v7, "3064"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 104
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "ENTITY_SYNC_STARTED"

    const/16 v6, 0x46

    const-string v7, "3070"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 105
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "ENTITY_SYNC_FINISHED"

    const/16 v6, 0x47

    const-string v7, "3071"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 106
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "ENTITY_SYNC_BACKOFF"

    const/16 v6, 0x48

    const-string v7, "3072"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    .line 107
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "LOCATION_SYNC"

    const/16 v6, 0x49

    const-string v7, "3146"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

    .line 110
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DON_DETECTOR_ENABLED"

    const/16 v6, 0x4a

    const-string v7, "3080"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 111
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DON_DETECTOR_DISABLED"

    const/16 v6, 0x4b

    const-string v7, "3081"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 112
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DONNED"

    const/16 v6, 0x4c

    const-string v7, "3082"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DONNED:Lcom/google/glass/userevent/UserEventAction;

    .line 113
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DOFFED"

    const/16 v6, 0x4d

    const-string v7, "3083"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DOFFED:Lcom/google/glass/userevent/UserEventAction;

    .line 116
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_MENU_COMMAND_SPOKEN"

    const/16 v6, 0x4e

    const-string v7, "3090"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 117
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_MENU_COMMAND_TAPPED"

    const/16 v6, 0x4f

    const-string v7, "3091"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    .line 118
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF"

    const/16 v6, 0x50

    const-string v7, "3092"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    .line 119
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TOUCH_MENU_ENTITY_SELECTED"

    const/16 v6, 0x51

    const-string v7, "3093"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 122
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MIRROR_COMMAND_DISAMBIGUATION_SHOWN"

    const/16 v6, 0x52

    const-string v7, "3094"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 123
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MIRROR_COMMAND_INVOKED"

    const/16 v6, 0x53

    const-string v7, "3095"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    .line 126
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "NATIVE_COMMAND_INVOKED"

    const/16 v6, 0x54

    const-string v7, "3096"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    .line 127
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "NATIVE_COMMAND_DISAMBIGUATION_SHOWN"

    const/16 v6, 0x55

    const-string v7, "3097"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 130
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BARCODE_SUCCESSFUL_SCAN"

    const/16 v6, 0x56

    const-string v7, "3100"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

    .line 131
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BARCODE_FAILED_SCAN"

    const/16 v6, 0x57

    const-string v7, "3101"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

    .line 132
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BARCODE_PICTURE_SCAN"

    const/16 v6, 0x58

    const-string v7, "3102"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/userevent/UserEventAction;

    .line 135
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PEOPLE_GRID_START"

    const/16 v6, 0x59

    const-string v7, "3129"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_START:Lcom/google/glass/userevent/UserEventAction;

    .line 136
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PEOPLE_GRID_ITEM_SELECTED"

    const/16 v6, 0x5a

    const-string v7, "3133"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 137
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PEOPLE_GRID_FILTERED_TIMELINE"

    const/16 v6, 0x5b

    const-string v7, "3130"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    .line 138
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PEOPLE_GRID_SEND_MESSAGE"

    const/16 v6, 0x5c

    const-string v7, "3131"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/userevent/UserEventAction;

    .line 139
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "FILTERED_TIMELINE_DISMISS"

    const/16 v6, 0x5d

    const-string v7, "3134"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->FILTERED_TIMELINE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    .line 142
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "GLASSWARE_INSTALLED"

    const/16 v6, 0x5e

    const-string v7, "3200"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    .line 143
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "GLASSWARE_UNINSTALLED"

    const/16 v6, 0x5f

    const-string v7, "3201"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction;

    .line 146
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "NAVIGATION_START"

    const/16 v6, 0x60

    const-string v7, "4001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

    .line 147
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "NAVIGATION_END"

    const/16 v6, 0x61

    const-string v7, "4002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

    .line 148
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "TRAVEL_MODE_CHANGE"

    const/16 v6, 0x62

    const-string v7, "4003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    .line 149
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "NAVIGATION_ERROR"

    const/16 v6, 0x63

    const-string v7, "4004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 150
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DIRECTIONS_START"

    const/16 v6, 0x64

    const-string v7, "4005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

    .line 151
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DIRECTIONS_RECEIVED"

    const/16 v6, 0x65

    const-string v7, "4006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    .line 152
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DIRECTIONS_REFINEMENTS"

    const/16 v6, 0x66

    const-string v7, "4007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

    .line 153
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DIRECTIONS_ERROR"

    const/16 v6, 0x67

    const-string v7, "4008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 154
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DIRECTIONS_END"

    const/16 v6, 0x68

    const-string v7, "4009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

    .line 155
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DIRECTIONS_SCROLL"

    const/16 v6, 0x69

    const-string v7, "4010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

    .line 156
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SHOW_ROUTE_OVERVIEW"

    const/16 v6, 0x6a

    const-string v7, "4011"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

    .line 157
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CHANGE_TRIP"

    const/16 v6, 0x6b

    const-string v7, "4012"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

    .line 158
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SELECT_TRIP"

    const/16 v6, 0x6c

    const-string v7, "4013"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

    .line 159
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SELECT_REFINEMENT"

    const/16 v6, 0x6d

    const-string v7, "4014"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

    .line 160
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "NAVIGATION_FROM_TIMELINE"

    const/16 v6, 0x6e

    const-string v7, "4015"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    .line 161
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SHOW_STEPS"

    const/16 v6, 0x6f

    const-string v7, "4016"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

    .line 164
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RECORD_VIDEO_START"

    const/16 v6, 0x70

    const-string v7, "4100"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    .line 165
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "RECORD_VIDEO_END"

    const/16 v6, 0x71

    const-string v7, "4101"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction;

    .line 168
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PLAY_VIDEO_START"

    const/16 v6, 0x72

    const-string v7, "4200"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    .line 169
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PLAY_VIDEO_STOP"

    const/16 v6, 0x73

    const-string v7, "4201"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction;

    .line 170
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PLAY_VIDEO_ERROR"

    const/16 v6, 0x74

    const-string v7, "4203"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 173
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PROTO_REQUEST_DISPATCHER_BATCH"

    const/16 v6, 0x75

    const-string v7, "5000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

    .line 174
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "COMPANION_CONNECTION"

    const/16 v6, 0x76

    const-string v7, "5002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    .line 175
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "ANDROID_CHECK_IN"

    const/16 v6, 0x77

    const-string v7, "5003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction;

    .line 176
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "DEVICE_STORAGE_STATE_CHANGED"

    const/16 v6, 0x78

    const-string v7, "5004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    .line 177
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "USER_EVENT_QUEUE_FULL"

    const/16 v6, 0x79

    const-string v7, "5005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    .line 178
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "PROTO_REQUEST_DISPATCHER_REQUEST_SIZE"

    const/16 v6, 0x7a

    const-string v7, "5006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

    .line 179
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OTA_SUCCESS_STATE"

    const/16 v6, 0x7b

    const-string v7, "5010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction;

    .line 180
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "IMAGE_DOWNLOAD_LATENCY"

    const/16 v6, 0x7c

    const-string v7, "5011"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    .line 183
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_ERROR"

    const/16 v6, 0x7d

    const-string v7, "6001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 184
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_ENTERED"

    const/16 v6, 0x7e

    const-string v7, "6002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    .line 185
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_CREATED"

    const/16 v6, 0x7f

    const-string v7, "6003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CREATED:Lcom/google/glass/userevent/UserEventAction;

    .line 186
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_CHAT_MESSAGE_RECEIVED"

    const/16 v6, 0x80

    const-string v7, "6004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    .line 187
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_MUTE_REMOTE"

    const/16 v6, 0x81

    const-string v7, "6005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_REMOTE:Lcom/google/glass/userevent/UserEventAction;

    .line 188
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_MUTE_MY_VIDEO"

    const/16 v6, 0x82

    const-string v7, "6006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    .line 189
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_UNMUTE_MY_VIDEO"

    const/16 v6, 0x83

    const-string v7, "6007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    .line 190
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_MUTE_MY_AUDIO"

    const/16 v6, 0x84

    const-string v7, "6008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    .line 191
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_UNMUTE_MY_AUDIO"

    const/16 v6, 0x85

    const-string v7, "6009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    .line 192
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_SET_PARTICIPANT_AUTO"

    const/16 v6, 0x86

    const-string v7, "6010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/userevent/UserEventAction;

    .line 193
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_SET_PARTICIPANT_SPECIFIC"

    const/16 v6, 0x87

    const-string v7, "6011"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/userevent/UserEventAction;

    .line 194
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_INVITE"

    const/16 v6, 0x88

    const-string v7, "6012"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INVITE:Lcom/google/glass/userevent/UserEventAction;

    .line 195
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_ENDED"

    const/16 v6, 0x89

    const-string v7, "6013"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED:Lcom/google/glass/userevent/UserEventAction;

    .line 196
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_WAITING_SCREEN_DISMISSED"

    const/16 v6, 0x8a

    const-string v7, "6014"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    .line 197
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_ENTERED_FROM_ACTIVE_CARD"

    const/16 v6, 0x8b

    const-string v7, "6015"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    .line 198
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_ENDED_FROM_ACTIVE_CARD"

    const/16 v6, 0x8c

    const-string v7, "6016"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    .line 199
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_INCOMING_HANGOUT"

    const/16 v6, 0x8d

    const-string v7, "6017"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/userevent/UserEventAction;

    .line 200
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_SENT_TO_BACKGROUND"

    const/16 v6, 0x8e

    const-string v7, "6018"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SENT_TO_BACKGROUND:Lcom/google/glass/userevent/UserEventAction;

    .line 201
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HANGOUTS_BROUGHT_TO_FOREGROUND"

    const/16 v6, 0x8f

    const-string v7, "6019"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_BROUGHT_TO_FOREGROUND:Lcom/google/glass/userevent/UserEventAction;

    .line 204
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "WAKE_UP_DELAY"

    const/16 v6, 0x90

    const-string v7, "7001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

    .line 205
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CAMERA_TIMINGS"

    const/16 v6, 0x91

    const-string v7, "7002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    .line 206
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UI_THREAD_QUEUE"

    const/16 v6, 0x92

    const-string v7, "7003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction;

    .line 207
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UI_TIME_BETWEEN_RENDERS"

    const/16 v6, 0x93

    const-string v7, "7004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction;

    .line 208
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UI_TIME_TO_RENDER"

    const/16 v6, 0x94

    const-string v7, "7005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/userevent/UserEventAction;

    .line 209
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VIDEO_TIMINGS"

    const/16 v6, 0x95

    const-string v7, "7006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    .line 210
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "START_LISTENING_DELAY"

    const/16 v6, 0x96

    const-string v7, "7007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    .line 213
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "ARE_YOU_THERE_DIALOG_SHOWN"

    const/16 v6, 0x97

    const-string v7, "8001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->ARE_YOU_THERE_DIALOG_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 214
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "USER_IS_THERE"

    const/16 v6, 0x98

    const-string v7, "8002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->USER_IS_THERE:Lcom/google/glass/userevent/UserEventAction;

    .line 215
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "USER_IS_NOT_THERE"

    const/16 v6, 0x99

    const-string v7, "8003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->USER_IS_NOT_THERE:Lcom/google/glass/userevent/UserEventAction;

    .line 218
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_BT_PAIRED"

    const/16 v6, 0x9a

    const-string v7, "9001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction;

    .line 219
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_CHECKER"

    const/16 v6, 0x9b

    const-string v7, "9002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_CHECKER:Lcom/google/glass/userevent/UserEventAction;

    .line 220
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_BROKEN_NETWORK"

    const/16 v6, 0x9c

    const-string v7, "9003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    .line 221
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_STATE_PERCENTAGE"

    const/16 v6, 0x9d

    const-string v7, "9004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/userevent/UserEventAction;

    .line 222
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_STATE_TIME"

    const/16 v6, 0x9e

    const-string v7, "9005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_TIME:Lcom/google/glass/userevent/UserEventAction;

    .line 223
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_STATE_SCREEN_ON"

    const/16 v6, 0x9f

    const-string v7, "9006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 224
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL"

    const/16 v6, 0xa0

    const-string v7, "9007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    .line 225
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL"

    const/16 v6, 0xa1

    const-string v7, "9008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    .line 226
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_NETWORK_REQUEST"

    const/16 v6, 0xa2

    const-string v7, "9009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 227
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "CONNECTIVITY_WIFI_ASSOCIATE"

    const/16 v6, 0xa3

    const-string v7, "9010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    .line 230
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_HEAD_WAKE_ENABLED"

    const/16 v6, 0xa4

    const-string v7, "10000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 231
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_HEAD_WAKE_DISABLED"

    const/16 v6, 0xa5

    const-string v7, "10001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 232
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING"

    const/16 v6, 0xa6

    const-string v7, "10002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction;

    .line 233
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_HANDSFREE_ABOVE_PITCH"

    const/16 v6, 0xa7

    const-string v7, "10100"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction;

    .line 234
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK"

    const/16 v6, 0xa8

    const-string v7, "10101"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

    .line 235
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_HANDSFREE_BELOW_PITCH"

    const/16 v6, 0xa9

    const-string v7, "10102"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction;

    .line 236
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE"

    const/16 v6, 0xaa

    const-string v7, "10103"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE:Lcom/google/glass/userevent/UserEventAction;

    .line 239
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_ENABLED"

    const/16 v6, 0xab

    const-string v7, "11000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 240
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_DISABLED"

    const/16 v6, 0xac

    const-string v7, "11001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    .line 241
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_CALIBRATION_SUCCESS"

    const/16 v6, 0xad

    const-string v7, "11002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 242
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_CALIBRATION_FAILURE"

    const/16 v6, 0xae

    const-string v7, "11003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    .line 243
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_TAKE_PHOTO"

    const/16 v6, 0xaf

    const-string v7, "11010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    .line 246
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PAGE_REQUESTED_EXPLICIT"

    const/16 v6, 0xb0

    const-string v7, "12000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction;

    .line 247
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PAGE_REQUESTED_IMPLICIT"

    const/16 v6, 0xb1

    const-string v7, "12001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction;

    .line 248
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PAGE_LOADED"

    const/16 v6, 0xb2

    const-string v7, "12002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    .line 249
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_MENU_OPTION"

    const/16 v6, 0xb3

    const-string v7, "12003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction;

    .line 250
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_TWO_FINGER_ZOOM"

    const/16 v6, 0xb4

    const-string v7, "12004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction;

    .line 251
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_ERROR"

    const/16 v6, 0xb5

    const-string v7, "12005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 252
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PRELOAD_REQUESTED"

    const/16 v6, 0xb6

    const-string v7, "12006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    .line 253
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PRELOAD_SUCCESS"

    const/16 v6, 0xb7

    const-string v7, "12007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    .line 254
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PRELOAD_ERROR"

    const/16 v6, 0xb8

    const-string v7, "12008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 255
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_PRELOAD_WASTED"

    const/16 v6, 0xb9

    const-string v7, "12009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction;

    .line 256
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "BROWSER_SESSION_METRICS"

    const/16 v6, 0xba

    const-string v7, "12010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction;

    .line 259
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "GUEST_MODE_TURNED_ON"

    const/16 v6, 0xbb

    const-string v7, "13000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 260
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "GUEST_MODE_TURNED_OFF"

    const/16 v6, 0xbc

    const-string v7, "13001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/userevent/UserEventAction;

    .line 263
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "COMPANION_SCREENCAST"

    const/16 v6, 0xbd

    const-string v7, "14000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction;

    .line 264
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "COMPANION_SCREENCAST_REMOTE_CONTROL"

    const/16 v6, 0xbe

    const-string v7, "14003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction;

    .line 265
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "COMPANION_CONNECTED"

    const/16 v6, 0xbf

    const-string v7, "14004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 268
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SESSION_MANAGER_SESSION_NEW"

    const/16 v6, 0xc0

    const-string v7, "15000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

    .line 269
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SESSION_MANAGER_SESSION_ESTABLISHED"

    const/16 v6, 0xc1

    const-string v7, "15001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 270
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SESSION_MANAGER_SESSION_VALID"

    const/16 v6, 0xc2

    const-string v7, "15002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction;

    .line 271
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SESSION_MANAGER_SESSION_INVALID"

    const/16 v6, 0xc3

    const-string v7, "15003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction;

    .line 272
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SESSION_MANAGER_SESSION_FINISHED"

    const/16 v6, 0xc4

    const-string v7, "15004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 273
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "SESSION_MANAGER_SESSION_BROKEN"

    const/16 v6, 0xc5

    const-string v7, "15005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction;

    .line 274
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UPLOAD_SESSION_STARTED"

    const/16 v6, 0xc6

    const-string v7, "15100"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 275
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UPLOAD_SESSION_CANCELLED"

    const/16 v6, 0xc7

    const-string v7, "15101"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    .line 276
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UPLOAD_SESSION_SERVER_FAILED"

    const/16 v6, 0xc8

    const-string v7, "15102"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    .line 277
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "UPLOAD_SESSION_FINISHED"

    const/16 v6, 0xc9

    const-string v7, "15103"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    .line 280
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HTML_CACHE_MISS"

    const/16 v6, 0xca

    const-string v7, "16000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_MISS:Lcom/google/glass/userevent/UserEventAction;

    .line 281
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HTML_CACHE_HIT"

    const/16 v6, 0xcb

    const-string v7, "16001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_HIT:Lcom/google/glass/userevent/UserEventAction;

    .line 282
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "HTML_CACHE_INSERTION"

    const/16 v6, 0xcc

    const-string v7, "16002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_INSERTION:Lcom/google/glass/userevent/UserEventAction;

    .line 285
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_PLAY"

    const/16 v6, 0xcd

    const-string v7, "17000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY:Lcom/google/glass/userevent/UserEventAction;

    .line 286
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_PAUSE"

    const/16 v6, 0xce

    const-string v7, "17001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PAUSE:Lcom/google/glass/userevent/UserEventAction;

    .line 287
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_PREVIOUS_TRACK"

    const/16 v6, 0xcf

    const-string v7, "17002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PREVIOUS_TRACK:Lcom/google/glass/userevent/UserEventAction;

    .line 288
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_NEXT_TRACK"

    const/16 v6, 0xd0

    const-string v7, "17003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NEXT_TRACK:Lcom/google/glass/userevent/UserEventAction;

    .line 289
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_STOP"

    const/16 v6, 0xd1

    const-string v7, "17004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_STOP:Lcom/google/glass/userevent/UserEventAction;

    .line 290
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_ERROR"

    const/16 v6, 0xd2

    const-string v7, "17005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 291
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_TRACK_LOADED"

    const/16 v6, 0xd3

    const-string v7, "17006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_TRACK_LOADED:Lcom/google/glass/userevent/UserEventAction;

    .line 292
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_AUTOPLAY_RESULT"

    const/16 v6, 0xd4

    const-string v7, "17007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_AUTOPLAY_RESULT:Lcom/google/glass/userevent/UserEventAction;

    .line 293
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_RADIO_STATION_PLAYED"

    const/16 v6, 0xd5

    const-string v7, "17008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RADIO_STATION_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    .line 294
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_NOW_PLAYING_USED"

    const/16 v6, 0xd6

    const-string v7, "17009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NOW_PLAYING_USED:Lcom/google/glass/userevent/UserEventAction;

    .line 295
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_RESULTS_SHOWN"

    const/16 v6, 0xd7

    const-string v7, "17010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RESULTS_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    .line 296
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_GLASS_ERROR"

    const/16 v6, 0xd8

    const-string v7, "17011"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_GLASS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 297
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "MUSIC_PLAY_TIME"

    const/16 v6, 0xd9

    const-string v7, "17012"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY_TIME:Lcom/google/glass/userevent/UserEventAction;

    .line 300
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH"

    const/16 v6, 0xda

    const-string v7, "18000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    .line 301
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING"

    const/16 v6, 0xdb

    const-string v7, "18001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

    .line 302
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST"

    const/16 v6, 0xdc

    const-string v7, "18002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    .line 305
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOLUME_CONTROL_ENTERED"

    const/16 v6, 0xdd

    const-string v7, "19000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    .line 306
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOLUME_CONTROL_EXITED"

    const/16 v6, 0xde

    const-string v7, "19001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    .line 307
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "VOLUME_CONTROL_CONTEXT"

    const/16 v6, 0xdf

    const-string v7, "19002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    .line 310
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_TUTORIAL_STARTED"

    const/16 v6, 0xe0

    const-string v7, "20001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction;

    .line 311
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_TUTORIAL_PASSED"

    const/16 v6, 0xe1

    const-string v7, "20002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction;

    .line 312
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_PAIRING_METHOD_CHOSEN"

    const/16 v6, 0xe2

    const-string v7, "20003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    .line 313
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_SIGNED_IN_SUCCESSFUL"

    const/16 v6, 0xe3

    const-string v7, "20004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction;

    .line 314
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_SETUP_ERROR"

    const/16 v6, 0xe4

    const-string v7, "20005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction;

    .line 315
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_CHECKLIST_OPENED"

    const/16 v6, 0xe5

    const-string v7, "20006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction;

    .line 316
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_CHECKLIST_ITEM_SELECTED"

    const/16 v6, 0xe6

    const-string v7, "20007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    .line 317
    new-instance v4, Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "OOBE_CHECKLIST_TIMEOUT"

    const/16 v6, 0xe7

    const-string v7, "20008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    .line 26
    const/16 v4, 0xe8

    new-array v4, v4, [Lcom/google/glass/userevent/UserEventAction;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v5, v4, v8

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v5, v4, v9

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v5, v4, v10

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v5, v4, v11

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BLUETOOTH_DISCOVERABLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x18

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x19

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SOUND_SEARCH_RESULT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_MUSIC_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARE_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x20

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x21

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x22

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TWO_FINGER_ZOOM_OUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x23

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x24

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x25

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x26

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VIDEO_PLAYBACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x27

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x28

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x29

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->FACTORY_RESET:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->WIFI_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x30

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x31

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x32

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x33

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x34

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x35

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x36

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x37

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RETRY_REPLY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x38

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MESSAGE_REPLY_NO_COMPANION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x39

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x40

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x41

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x42

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x43

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x44

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x45

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x46

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x47

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x48

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x49

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DONNED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DOFFED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x50

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x51

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x52

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x53

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x54

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x55

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NATIVE_COMMAND_DISAMBIGUATION_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x56

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x57

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x58

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x59

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_FILTERED_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PEOPLE_GRID_SEND_MESSAGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->FILTERED_TIMELINE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x60

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x61

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x62

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x63

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x64

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x65

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x66

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x67

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x68

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x69

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x70

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x71

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x72

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x73

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x74

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x75

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x76

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x77

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x78

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x79

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CREATED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x80

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x81

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_REMOTE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x82

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x83

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x84

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x85

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x86

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x87

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x88

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INVITE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x89

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_SENT_TO_BACKGROUND:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HANGOUTS_BROUGHT_TO_FOREGROUND:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x90

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x91

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x92

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x93

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x94

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x95

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x96

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x97

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->ARE_YOU_THERE_DIALOG_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x98

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->USER_IS_THERE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x99

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->USER_IS_NOT_THERE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9a

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9b

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_CHECKER:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9c

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9d

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9e

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_TIME:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9f

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa0

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa1

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa2

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa3

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa7

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa8

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa9

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xaa

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_PITCH_ON_TAP_TO_WAKE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xab

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xac

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xad

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xae

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xaf

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb0

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb1

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb2

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb3

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb7

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb8

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb9

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_WASTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xba

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BROWSER_SESSION_METRICS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xbb

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xbc

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xbd

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xbe

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST_REMOTE_CONTROL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xbf

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc0

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_NEW:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc1

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_ESTABLISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc2

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_VALID:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc3

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_INVALID:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SESSION_MANAGER_SESSION_BROKEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc7

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc8

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc9

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xca

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_MISS:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xcb

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_HIT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xcc

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_INSERTION:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xcd

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xce

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PAUSE:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xcf

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PREVIOUS_TRACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd0

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NEXT_TRACK:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd1

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_STOP:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd2

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd3

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_TRACK_LOADED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_AUTOPLAY_RESULT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RADIO_STATION_PLAYED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_NOW_PLAYING_USED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd7

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_RESULTS_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd8

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_GLASS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd9

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->MUSIC_PLAY_TIME:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xda

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xdb

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xdc

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xdd

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xde

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xdf

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe0

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe1

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe2

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe3

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe4

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_SETUP_ERROR:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_OPENED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe6

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe7

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->$VALUES:[Lcom/google/glass/userevent/UserEventAction;

    .line 809
    const-class v4, Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 810
    .local v1, actionEnumSet:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/userevent/UserEventAction;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    .line 811
    .local v3, nameToActionBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/glass/userevent/UserEventAction;>;"
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction;

    .line 812
    .local v0, actionEnum:Lcom/google/glass/userevent/UserEventAction;
    iget-object v4, v0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 814
    .end local v0           #actionEnum:Lcom/google/glass/userevent/UserEventAction;
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    sput-object v4, Lcom/google/glass/userevent/UserEventAction;->NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;

    .line 815
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 803
    iput-object p3, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 804
    return-void
.end method

.method public static fromAction(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;
    .locals 1
    .parameter "action"

    .prologue
    .line 822
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/userevent/UserEventAction;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->$VALUES:[Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, [Lcom/google/glass/userevent/UserEventAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method
