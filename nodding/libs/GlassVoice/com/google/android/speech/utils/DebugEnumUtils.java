package com.google.android.speech.utils;

public class DebugEnumUtils
{
  public static String getClientEventTypeLabel(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return "ClientEvent(" + paramInt + ")";
    case 1:
      return "APP_EVENT_MAIN_ACTIVITY_RESUME";
    case 2:
      return "APP_EVENT_MAIN_ACTIVITY_PAUSE";
    case 43:
      return "APP_EVENT_MAIN_ACTIVITY_CREATE";
    case 77:
      return "APP_EVENT_HANDSFREE_ACTIVITY_RESUME";
    case 78:
      return "APP_EVENT_HANDSFREE_ACTIVITY_PAUSE";
    case 79:
      return "APP_EVENT_HANDSFREE_ACTIVITY_CREATE";
    case 3:
      return "APP_EVENT_WAIT_FOR_CONFIGURATION";
    case 4:
      return "APP_EVENT_SCREEN_TRANSITION";
    case 5:
      return "APP_EVENT_START_RECORDING_USER_SPEECH";
    case 6:
      return "APP_EVENT_STOP_RECORDING_END_POINTER_TRIGGERED";
    case 90:
      return "APP_EVENT_STOP_RECORDING_NO_SPEECH_DETECTED";
    case 21:
      return "APP_EVENT_TRIGGER_SPEECH_RECOGNITION";
    case 53:
      return "DEPRECATED_APP_EVENT_EMBEDDED_RECOGNIZER_RESULT_USED";
    case 54:
      return "DEPRECATED_APP_EVENT_S3_RECOGNIZER_RESULT_USED";
    case 74:
      return "APP_EVENT_IME_PARTIAL_RESULT_OVERRIDDEN";
    case 35:
      return "APP_EVENT_IME_START_INPUT_VIEW";
    case 36:
      return "APP_EVENT_IME_JUMP_TO_OTHER_FIELD";
    case 38:
      return "APP_EVENT_IME_DISPLAY_ERROR";
    case 39:
      return "APP_EVENT_IME_RESULT_DISPLAYED";
    case 70:
      return "APP_EVENT_RESULTS_FROM_EMBEDDED_RECOGNIZER";
    case 71:
      return "APP_EVENT_RESULTS_FROM_NETWORK_RECOGNIZER";
    case 93:
      return "APP_EVENT_ACTION_FROM_EMBEDDED_PARSER";
    case 94:
      return "APP_EVENT_ACTION_FROM_NETWORK_PARSER";
    case 108:
      return "APP_EVENT_UNUSED_ACTION_FROM_NETWORK_PARSER";
    case 87:
      return "APP_EVENT_EMBEDDED_RESULTS_MERGED_WITH_NETWORK_RESULTS";
    case 92:
      return "APP_EVENT_NETWORK_RESULTS_MERGED_WITH_EMBEDDED_RESULTS";
    case 40:
      return "APP_EVENT_IME_CLOSE";
    case 41:
      return "APP_EVENT_IME_FINISH_INPUT_VIEW";
    case 42:
      return "APP_EVENT_IME_INTERRUPTED";
    case 55:
      return "APP_EVENT_SERVICE_API_START_LISTENING";
    case 56:
      return "APP_EVENT_SERVICE_API_ENDED";
    case 57:
      return "APP_EVENT_SERVICE_API_CANCEL";
    case 58:
      return "APP_EVENT_SERVICE_API_STOP_LISTENING";
    case 59:
      return "APP_EVENT_SERVICE_API_ERROR";
    case 60:
      return "APP_EVENT_SERVICE_API_RESULTS";
    case 61:
      return "APP_EVENT_INTENT_ACTIVITY_RESUME";
    case 62:
      return "APP_EVENT_INTENT_ACTIVITY_PAUSE";
    case 69:
      return "APP_EVENT_APPLICATION_STATE_NOT_RESTORED";
    case 75:
      return "APP_EVENT_IME_ROTATE_WHILE_RECORDING";
    case 76:
      return "APP_EVENT_ESTABLISH_AUDIO_PATH";
    case 82:
      return "APP_EVENT_CONTACT_GRAMMAR_LOADING_LATENCY";
    case 83:
      return "DEPRECATED_APP_EVENT_CREATE_LATENCY";
    case 84:
      return "DEPRECATED_APP_EVENT_RESUME_LATENCY";
    case 99:
      return "APP_EVENT_APPLICATION_CREATE_LATENCY";
    case 100:
      return "APP_EVENT_ACTIVITY_CREATE_LATENCY";
    case 101:
      return "APP_EVENT_ACTIVITY_RESTART_LATENCY";
    case 102:
      return "APP_EVENT_ACTIVITY_RESUME_LATENCY";
    case 85:
      return "APP_EVENT_WEBSEARCH_LATENCY_VOICE";
    case 86:
      return "APP_EVENT_WEBSEARCH_LATENCY_TEXT";
    case 103:
      return "APP_EVENT_WEBSEARCH_LATENCY_GOGGLES";
    case 104:
      return "APP_EVENT_WEBSEARCH_LATENCY_SOUNDSEARCH";
    case 95:
      return "DEPRECATED_APP_EVENT_PUMPKIN_RESULT_RECEIVED";
    case 98:
      return "APP_EVENT_PUMPKIN_NO_MATCH_RECEIVED";
    case 97:
      return "APP_EVENT_PUMPKIN_LATENCY_INITIALIZATION";
    case 96:
      return "APP_EVENT_PUMPKIN_LATENCY";
    case 106:
      return "APP_EVENT_ESTABLISH_BT_SCO_CONNECTION_LATENCY";
    case 107:
      return "APP_EVENT_FAIL_IN_ESTABLISH_BT_SCO_CONNECTION_LATENCY";
    case 7:
      return "PROTOCOL_EVENT_S3_CONNECTION_OPEN";
    case 8:
      return "PROTOCOL_EVENT_S3_CONNECTION_OPEN_LATENCY";
    case 9:
      return "PROTOCOL_EVENT_S3_CONNECTION_ERROR";
    case 10:
      return "PROTOCOL_EVENT_S3_CONNECTION_DONE";
    case 11:
      return "PROTOCOL_EVENT_S3_RECOGNITION_COMPLETED";
    case 12:
      return "PROTOCOL_EVENT_S3_MAJEL_RESULT_RECEIVED";
    case 22:
      return "PROTOCOL_EVENT_S3_SEND_RECOGNIZE_REQUEST";
    case 23:
      return "PROTOCOL_EVENT_S3_SEND_END_OF_DATA";
    case 24:
      return "PROTOCOL_EVENT_S3_SEND_TEXT_RECOGNITION_REQUEST";
    case 25:
      return "PROTOCOL_EVENT_S3_RETRY";
    case 26:
      return "PROTOCOL_EVENT_S3_RETRY_AUTH_FAILURE";
    case 27:
      return "PROTOCOL_EVENT_S3_NO_RETRY_MAX_COUNT_REACHED";
    case 28:
      return "PROTOCOL_EVENT_S3_NO_RETRY_TIMEOUT_EXCEEDED";
    case 30:
      return "PROTOCOL_EVENT_S3_TTS_RECEIVED";
    case 31:
      return "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_RECOGNITION_COMPLETE";
    case 32:
      return "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_MAJEL_RESULT";
    case 73:
      return "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TEXT_MAJEL_RESULT";
    case 33:
      return "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TTS_RESULT";
    case 13:
      return "USER_EVENT_ACTION_COMPLETE";
    case 50:
      return "USER_EVENT_ACTION_BAIL_OUT";
    case 14:
      return "USER_EVENT_ACTION_CANCEL";
    case 72:
      return "USER_EVENT_ACTION_CANCEL_COUNTDOWN";
    case 81:
      return "DEPRECATED_USER_EVENT_ACTION_CANCEL_AND_RETRY";
    case 80:
      return "DEPRECATED_USER_EVENT_ACTION_EXPIRED_COUNTDOWN";
    case 15:
      return "USER_EVENT_ALTERNATE_SELECTED";
    case 16:
      return "USER_EVENT_EDIT_RECOGNIZED_TEXT";
    case 34:
      return "USER_EVENT_DELETE_RECOGNIZED_TEXT";
    case 17:
      return "USER_EVENT_STOP_RECORDING";
    case 18:
      return "USER_EVENT_CANCEL_WHILE_RECOGNITION_WORKING";
    case 19:
      return "USER_EVENT_TRIGGER_TEXT_RECOGNITION";
    case 20:
      return "USER_EVENT_TRIGGER_SPEECH_RECOGNITION";
    case 65:
      return "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_HOTWORD";
    case 37:
      return "USER_EVENT_IME_CLICK_DONE";
    case 44:
      return "USER_EVENT_CONTACT_SELECT_PICK";
    case 45:
      return "USER_EVENT_CONTACT_SELECT_DISMISS";
    case 46:
      return "USER_EVENT_PERSONALIZATION_CLICK_MORE_INFO";
    case 47:
      return "USER_EVENT_PERSONALIZATION_CLICK_DASHBOARD";
    case 48:
      return "USER_EVENT_PERSONALIZATION_ENABLED_FROM_SETTING";
    case 49:
      return "USER_EVENT_PERSONALIZATION_DISABLED_FROM_SETTING";
    case 63:
      return "USER_EVENT_IME_PAUSE_RECORDING";
    case 64:
      return "USER_EVENT_IME_RESTART_RECORDING";
    case 66:
      return "USER_EVENT_CHANGE_VOICE_LANGUAGE_SETTINGS";
    case 67:
      return "USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS_FROM_IME";
    case 68:
      return "USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS";
    case 91:
      return "USER_EVENT_CLICK_PLAY_STORE_LINK";
    case 105:
      return "USER_EVENT_CLICK_ON_DEVICE_RESULT";
    case 51:
      return "EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_STARTED";
    case 52:
      return "EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_COMPLETED";
    case 88:
      return "EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_STARTED";
    case 89:
      return "EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_COMPLETED";
    case 29:
    }
    return "UNEXPECTED_CLIENT_ERROR";
  }

  public static String getLatencyBreakDownLabel(int paramInt)
  {
    switch (paramInt)
    {
    case 12:
    case 13:
    default:
      return "LatencyBreakDown(" + paramInt + ")";
    case 0:
      return "WEBSEARCH_QUERYSTATE_RECOGNIZE ";
    case 1:
      return "WEBSEARCH_QUERYSTATE_COMMIT_WEB ";
    case 2:
      return "WEBSEARCH_QUERYSTATE_RECEIVED_ANSWER_RESPONSE ";
    case 3:
      return "WEBSEARCH_QUERYSTATE_CORPORA_LOAD ";
    case 4:
      return "WEBSEARCH_JESRCTRL_COMMIT ";
    case 5:
      return "WEBSEARCH_JESRCTRL_LOGIN_COMPLETE ";
    case 6:
      return "WEBSEARCH_JESRCTRL_REQUEST_JESR ";
    case 7:
      return "WEBSEARCH_JESRCTRL_REQUEST_NONJESR ";
    case 8:
      return "WEBSEARCH_JESRCTRL_START_JESR ";
    case 9:
      return "WEBSEARCH_JESRCTRL_START_NONJESR ";
    case 10:
      return "WEBSEARCH_JESRCTRL_END_JESR ";
    case 11:
      return "WEBSEARCH_JESRCTRL_END_NONJESR ";
    case 14:
      return "WEBSEARCH_FRAGMENT_SHOW_WEBVIEW ";
    case 15:
      return "WEBSEARCH_FRAGMENT_SHOW_WEBVIEW_COMPLETE ";
    case 16:
      return "APPLICATION_ON_CREATE_START";
    case 17:
      return "APPLICATION_ON_CREATE_END";
    case 18:
      return "ACTIVITY_ON_CREATE_START";
    case 19:
      return "ACTIVITY_ON_CREATE_END";
    case 20:
      return "SEARCH_PLATE_ON_DRAW_START";
    case 21:
      return "ACTIVITY_ON_START_START";
    case 22:
      return "ACTIVITY_ON_START_END";
    case 23:
      return "ACTIVITY_ON_RESUME_START";
    case 24:
      return "ACTIVITY_ON_RESUME_END";
    case 25:
      return "VELVET_PRESENTER_UPDATE_MODE_START";
    case 26:
      return "VELVET_PRESENTER_UPDATE_MODE_END";
    case 27:
      return "ACTIVITY_ON_RESTART_START";
    case 40:
      return "VELVET_PRESENTER_INITIALIZE_DELAYED_START";
    case 28:
      return "VELVET_PRESENTER_INITIALIZE_DELAYED_END";
    case 32:
      return "STARTUP_UI_THREAD_IDLE";
    case 29:
      return "WEBSEARCH_PREFETCH_START";
    case 30:
      return "WEBSEARCH_PREFETCH_END";
    case 31:
      return "WEBSEARCH_PREFETCH_CANCEL";
    case 33:
      return "WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_START";
    case 34:
      return "WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_END";
    case 35:
      return "WEBSEARCH_QUERYSTATE_COMMIT_WEB_SINGLE_REQUEST";
    case 36:
      return "WEBSEARCH_QUERYSTATE_SWITCH_QUERY";
    case 37:
      return "WEBSEARCH_QUERYSTATE_SELECT_ACTION";
    case 38:
      return "WEBSEARCH_QUERYSTATE_HANDLE_ACTION";
    case 39:
    }
    return "WEBSEARCH_FRAGMENT_SHOW_CARD";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.utils.DebugEnumUtils
 * JD-Core Version:    0.6.2
 */