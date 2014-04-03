.class public Lcom/google/android/speech/utils/DebugEnumUtils;
.super Ljava/lang/Object;
.source "DebugEnumUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientEventTypeLabel(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    const-string v0, "APP_EVENT_MAIN_ACTIVITY_RESUME"

    goto :goto_0

    .line 15
    :pswitch_1
    const-string v0, "APP_EVENT_MAIN_ACTIVITY_PAUSE"

    goto :goto_0

    .line 17
    :pswitch_2
    const-string v0, "APP_EVENT_MAIN_ACTIVITY_CREATE"

    goto :goto_0

    .line 19
    :pswitch_3
    const-string v0, "APP_EVENT_HANDSFREE_ACTIVITY_RESUME"

    goto :goto_0

    .line 21
    :pswitch_4
    const-string v0, "APP_EVENT_HANDSFREE_ACTIVITY_PAUSE"

    goto :goto_0

    .line 23
    :pswitch_5
    const-string v0, "APP_EVENT_HANDSFREE_ACTIVITY_CREATE"

    goto :goto_0

    .line 25
    :pswitch_6
    const-string v0, "APP_EVENT_WAIT_FOR_CONFIGURATION"

    goto :goto_0

    .line 27
    :pswitch_7
    const-string v0, "APP_EVENT_SCREEN_TRANSITION"

    goto :goto_0

    .line 29
    :pswitch_8
    const-string v0, "APP_EVENT_START_RECORDING_USER_SPEECH"

    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "APP_EVENT_STOP_RECORDING_END_POINTER_TRIGGERED"

    goto :goto_0

    .line 33
    :pswitch_a
    const-string v0, "APP_EVENT_STOP_RECORDING_NO_SPEECH_DETECTED"

    goto :goto_0

    .line 35
    :pswitch_b
    const-string v0, "APP_EVENT_TRIGGER_SPEECH_RECOGNITION"

    goto :goto_0

    .line 37
    :pswitch_c
    const-string v0, "DEPRECATED_APP_EVENT_EMBEDDED_RECOGNIZER_RESULT_USED"

    goto :goto_0

    .line 39
    :pswitch_d
    const-string v0, "DEPRECATED_APP_EVENT_S3_RECOGNIZER_RESULT_USED"

    goto :goto_0

    .line 41
    :pswitch_e
    const-string v0, "APP_EVENT_IME_PARTIAL_RESULT_OVERRIDDEN"

    goto :goto_0

    .line 43
    :pswitch_f
    const-string v0, "APP_EVENT_IME_START_INPUT_VIEW"

    goto :goto_0

    .line 45
    :pswitch_10
    const-string v0, "APP_EVENT_IME_JUMP_TO_OTHER_FIELD"

    goto :goto_0

    .line 47
    :pswitch_11
    const-string v0, "APP_EVENT_IME_DISPLAY_ERROR"

    goto :goto_0

    .line 49
    :pswitch_12
    const-string v0, "APP_EVENT_IME_RESULT_DISPLAYED"

    goto :goto_0

    .line 51
    :pswitch_13
    const-string v0, "APP_EVENT_RESULTS_FROM_EMBEDDED_RECOGNIZER"

    goto :goto_0

    .line 53
    :pswitch_14
    const-string v0, "APP_EVENT_RESULTS_FROM_NETWORK_RECOGNIZER"

    goto :goto_0

    .line 55
    :pswitch_15
    const-string v0, "APP_EVENT_ACTION_FROM_EMBEDDED_PARSER"

    goto :goto_0

    .line 57
    :pswitch_16
    const-string v0, "APP_EVENT_ACTION_FROM_NETWORK_PARSER"

    goto :goto_0

    .line 59
    :pswitch_17
    const-string v0, "APP_EVENT_UNUSED_ACTION_FROM_NETWORK_PARSER"

    goto :goto_0

    .line 61
    :pswitch_18
    const-string v0, "APP_EVENT_EMBEDDED_RESULTS_MERGED_WITH_NETWORK_RESULTS"

    goto :goto_0

    .line 63
    :pswitch_19
    const-string v0, "APP_EVENT_NETWORK_RESULTS_MERGED_WITH_EMBEDDED_RESULTS"

    goto :goto_0

    .line 65
    :pswitch_1a
    const-string v0, "APP_EVENT_IME_CLOSE"

    goto :goto_0

    .line 67
    :pswitch_1b
    const-string v0, "APP_EVENT_IME_FINISH_INPUT_VIEW"

    goto :goto_0

    .line 69
    :pswitch_1c
    const-string v0, "APP_EVENT_IME_INTERRUPTED"

    goto :goto_0

    .line 71
    :pswitch_1d
    const-string v0, "APP_EVENT_SERVICE_API_START_LISTENING"

    goto :goto_0

    .line 73
    :pswitch_1e
    const-string v0, "APP_EVENT_SERVICE_API_ENDED"

    goto :goto_0

    .line 75
    :pswitch_1f
    const-string v0, "APP_EVENT_SERVICE_API_CANCEL"

    goto :goto_0

    .line 77
    :pswitch_20
    const-string v0, "APP_EVENT_SERVICE_API_STOP_LISTENING"

    goto :goto_0

    .line 79
    :pswitch_21
    const-string v0, "APP_EVENT_SERVICE_API_ERROR"

    goto :goto_0

    .line 81
    :pswitch_22
    const-string v0, "APP_EVENT_SERVICE_API_RESULTS"

    goto :goto_0

    .line 83
    :pswitch_23
    const-string v0, "APP_EVENT_INTENT_ACTIVITY_RESUME"

    goto :goto_0

    .line 85
    :pswitch_24
    const-string v0, "APP_EVENT_INTENT_ACTIVITY_PAUSE"

    goto :goto_0

    .line 87
    :pswitch_25
    const-string v0, "APP_EVENT_APPLICATION_STATE_NOT_RESTORED"

    goto :goto_0

    .line 89
    :pswitch_26
    const-string v0, "APP_EVENT_IME_ROTATE_WHILE_RECORDING"

    goto :goto_0

    .line 91
    :pswitch_27
    const-string v0, "APP_EVENT_ESTABLISH_AUDIO_PATH"

    goto :goto_0

    .line 93
    :pswitch_28
    const-string v0, "APP_EVENT_CONTACT_GRAMMAR_LOADING_LATENCY"

    goto :goto_0

    .line 95
    :pswitch_29
    const-string v0, "DEPRECATED_APP_EVENT_CREATE_LATENCY"

    goto :goto_0

    .line 97
    :pswitch_2a
    const-string v0, "DEPRECATED_APP_EVENT_RESUME_LATENCY"

    goto/16 :goto_0

    .line 99
    :pswitch_2b
    const-string v0, "APP_EVENT_APPLICATION_CREATE_LATENCY"

    goto/16 :goto_0

    .line 101
    :pswitch_2c
    const-string v0, "APP_EVENT_ACTIVITY_CREATE_LATENCY"

    goto/16 :goto_0

    .line 103
    :pswitch_2d
    const-string v0, "APP_EVENT_ACTIVITY_RESTART_LATENCY"

    goto/16 :goto_0

    .line 105
    :pswitch_2e
    const-string v0, "APP_EVENT_ACTIVITY_RESUME_LATENCY"

    goto/16 :goto_0

    .line 107
    :pswitch_2f
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_VOICE"

    goto/16 :goto_0

    .line 109
    :pswitch_30
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_TEXT"

    goto/16 :goto_0

    .line 111
    :pswitch_31
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_GOGGLES"

    goto/16 :goto_0

    .line 113
    :pswitch_32
    const-string v0, "APP_EVENT_WEBSEARCH_LATENCY_SOUNDSEARCH"

    goto/16 :goto_0

    .line 115
    :pswitch_33
    const-string v0, "DEPRECATED_APP_EVENT_PUMPKIN_RESULT_RECEIVED"

    goto/16 :goto_0

    .line 117
    :pswitch_34
    const-string v0, "APP_EVENT_PUMPKIN_NO_MATCH_RECEIVED"

    goto/16 :goto_0

    .line 119
    :pswitch_35
    const-string v0, "APP_EVENT_PUMPKIN_LATENCY_INITIALIZATION"

    goto/16 :goto_0

    .line 121
    :pswitch_36
    const-string v0, "APP_EVENT_PUMPKIN_LATENCY"

    goto/16 :goto_0

    .line 123
    :pswitch_37
    const-string v0, "APP_EVENT_ESTABLISH_BT_SCO_CONNECTION_LATENCY"

    goto/16 :goto_0

    .line 125
    :pswitch_38
    const-string v0, "APP_EVENT_FAIL_IN_ESTABLISH_BT_SCO_CONNECTION_LATENCY"

    goto/16 :goto_0

    .line 127
    :pswitch_39
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_OPEN"

    goto/16 :goto_0

    .line 129
    :pswitch_3a
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_OPEN_LATENCY"

    goto/16 :goto_0

    .line 131
    :pswitch_3b
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_ERROR"

    goto/16 :goto_0

    .line 133
    :pswitch_3c
    const-string v0, "PROTOCOL_EVENT_S3_CONNECTION_DONE"

    goto/16 :goto_0

    .line 135
    :pswitch_3d
    const-string v0, "PROTOCOL_EVENT_S3_RECOGNITION_COMPLETED"

    goto/16 :goto_0

    .line 137
    :pswitch_3e
    const-string v0, "PROTOCOL_EVENT_S3_MAJEL_RESULT_RECEIVED"

    goto/16 :goto_0

    .line 139
    :pswitch_3f
    const-string v0, "PROTOCOL_EVENT_S3_SEND_RECOGNIZE_REQUEST"

    goto/16 :goto_0

    .line 141
    :pswitch_40
    const-string v0, "PROTOCOL_EVENT_S3_SEND_END_OF_DATA"

    goto/16 :goto_0

    .line 143
    :pswitch_41
    const-string v0, "PROTOCOL_EVENT_S3_SEND_TEXT_RECOGNITION_REQUEST"

    goto/16 :goto_0

    .line 145
    :pswitch_42
    const-string v0, "PROTOCOL_EVENT_S3_RETRY"

    goto/16 :goto_0

    .line 147
    :pswitch_43
    const-string v0, "PROTOCOL_EVENT_S3_RETRY_AUTH_FAILURE"

    goto/16 :goto_0

    .line 149
    :pswitch_44
    const-string v0, "PROTOCOL_EVENT_S3_NO_RETRY_MAX_COUNT_REACHED"

    goto/16 :goto_0

    .line 151
    :pswitch_45
    const-string v0, "PROTOCOL_EVENT_S3_NO_RETRY_TIMEOUT_EXCEEDED"

    goto/16 :goto_0

    .line 153
    :pswitch_46
    const-string v0, "PROTOCOL_EVENT_S3_TTS_RECEIVED"

    goto/16 :goto_0

    .line 155
    :pswitch_47
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_RECOGNITION_COMPLETE"

    goto/16 :goto_0

    .line 157
    :pswitch_48
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_MAJEL_RESULT"

    goto/16 :goto_0

    .line 159
    :pswitch_49
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TEXT_MAJEL_RESULT"

    goto/16 :goto_0

    .line 161
    :pswitch_4a
    const-string v0, "PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TTS_RESULT"

    goto/16 :goto_0

    .line 163
    :pswitch_4b
    const-string v0, "USER_EVENT_ACTION_COMPLETE"

    goto/16 :goto_0

    .line 165
    :pswitch_4c
    const-string v0, "USER_EVENT_ACTION_BAIL_OUT"

    goto/16 :goto_0

    .line 167
    :pswitch_4d
    const-string v0, "USER_EVENT_ACTION_CANCEL"

    goto/16 :goto_0

    .line 169
    :pswitch_4e
    const-string v0, "USER_EVENT_ACTION_CANCEL_COUNTDOWN"

    goto/16 :goto_0

    .line 171
    :pswitch_4f
    const-string v0, "DEPRECATED_USER_EVENT_ACTION_CANCEL_AND_RETRY"

    goto/16 :goto_0

    .line 173
    :pswitch_50
    const-string v0, "DEPRECATED_USER_EVENT_ACTION_EXPIRED_COUNTDOWN"

    goto/16 :goto_0

    .line 175
    :pswitch_51
    const-string v0, "USER_EVENT_ALTERNATE_SELECTED"

    goto/16 :goto_0

    .line 177
    :pswitch_52
    const-string v0, "USER_EVENT_EDIT_RECOGNIZED_TEXT"

    goto/16 :goto_0

    .line 179
    :pswitch_53
    const-string v0, "USER_EVENT_DELETE_RECOGNIZED_TEXT"

    goto/16 :goto_0

    .line 181
    :pswitch_54
    const-string v0, "USER_EVENT_STOP_RECORDING"

    goto/16 :goto_0

    .line 183
    :pswitch_55
    const-string v0, "USER_EVENT_CANCEL_WHILE_RECOGNITION_WORKING"

    goto/16 :goto_0

    .line 185
    :pswitch_56
    const-string v0, "USER_EVENT_TRIGGER_TEXT_RECOGNITION"

    goto/16 :goto_0

    .line 187
    :pswitch_57
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION"

    goto/16 :goto_0

    .line 189
    :pswitch_58
    const-string v0, "USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_HOTWORD"

    goto/16 :goto_0

    .line 191
    :pswitch_59
    const-string v0, "USER_EVENT_IME_CLICK_DONE"

    goto/16 :goto_0

    .line 193
    :pswitch_5a
    const-string v0, "USER_EVENT_CONTACT_SELECT_PICK"

    goto/16 :goto_0

    .line 195
    :pswitch_5b
    const-string v0, "USER_EVENT_CONTACT_SELECT_DISMISS"

    goto/16 :goto_0

    .line 197
    :pswitch_5c
    const-string v0, "USER_EVENT_PERSONALIZATION_CLICK_MORE_INFO"

    goto/16 :goto_0

    .line 199
    :pswitch_5d
    const-string v0, "USER_EVENT_PERSONALIZATION_CLICK_DASHBOARD"

    goto/16 :goto_0

    .line 201
    :pswitch_5e
    const-string v0, "USER_EVENT_PERSONALIZATION_ENABLED_FROM_SETTING"

    goto/16 :goto_0

    .line 203
    :pswitch_5f
    const-string v0, "USER_EVENT_PERSONALIZATION_DISABLED_FROM_SETTING"

    goto/16 :goto_0

    .line 205
    :pswitch_60
    const-string v0, "USER_EVENT_IME_PAUSE_RECORDING"

    goto/16 :goto_0

    .line 207
    :pswitch_61
    const-string v0, "USER_EVENT_IME_RESTART_RECORDING"

    goto/16 :goto_0

    .line 209
    :pswitch_62
    const-string v0, "USER_EVENT_CHANGE_VOICE_LANGUAGE_SETTINGS"

    goto/16 :goto_0

    .line 211
    :pswitch_63
    const-string v0, "USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS_FROM_IME"

    goto/16 :goto_0

    .line 213
    :pswitch_64
    const-string v0, "USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS"

    goto/16 :goto_0

    .line 215
    :pswitch_65
    const-string v0, "USER_EVENT_CLICK_PLAY_STORE_LINK"

    goto/16 :goto_0

    .line 217
    :pswitch_66
    const-string v0, "USER_EVENT_CLICK_ON_DEVICE_RESULT"

    goto/16 :goto_0

    .line 219
    :pswitch_67
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_STARTED"

    goto/16 :goto_0

    .line 221
    :pswitch_68
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_COMPLETED"

    goto/16 :goto_0

    .line 223
    :pswitch_69
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_STARTED"

    goto/16 :goto_0

    .line 225
    :pswitch_6a
    const-string v0, "EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_COMPLETED"

    goto/16 :goto_0

    .line 227
    :pswitch_6b
    const-string v0, "UNEXPECTED_CLIENT_ERROR"

    goto/16 :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_4b
        :pswitch_4d
        :pswitch_51
        :pswitch_52
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_b
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_6b
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_4a
        :pswitch_53
        :pswitch_f
        :pswitch_10
        :pswitch_59
        :pswitch_11
        :pswitch_12
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_2
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_4c
        :pswitch_67
        :pswitch_68
        :pswitch_c
        :pswitch_d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_60
        :pswitch_61
        :pswitch_58
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_25
        :pswitch_13
        :pswitch_14
        :pswitch_4e
        :pswitch_49
        :pswitch_e
        :pswitch_26
        :pswitch_27
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_50
        :pswitch_4f
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2f
        :pswitch_30
        :pswitch_18
        :pswitch_69
        :pswitch_6a
        :pswitch_a
        :pswitch_65
        :pswitch_19
        :pswitch_15
        :pswitch_16
        :pswitch_33
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_31
        :pswitch_32
        :pswitch_66
        :pswitch_37
        :pswitch_38
        :pswitch_17
    .end packed-switch
.end method

.method public static getLatencyBreakDownLabel(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 234
    packed-switch p0, :pswitch_data_0

    .line 353
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatencyBreakDown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 236
    :pswitch_1
    const-string v0, "WEBSEARCH_QUERYSTATE_RECOGNIZE "

    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "WEBSEARCH_QUERYSTATE_COMMIT_WEB "

    goto :goto_0

    .line 242
    :pswitch_3
    const-string v0, "WEBSEARCH_QUERYSTATE_RECEIVED_ANSWER_RESPONSE "

    goto :goto_0

    .line 245
    :pswitch_4
    const-string v0, "WEBSEARCH_QUERYSTATE_CORPORA_LOAD "

    goto :goto_0

    .line 248
    :pswitch_5
    const-string v0, "WEBSEARCH_JESRCTRL_COMMIT "

    goto :goto_0

    .line 251
    :pswitch_6
    const-string v0, "WEBSEARCH_JESRCTRL_LOGIN_COMPLETE "

    goto :goto_0

    .line 254
    :pswitch_7
    const-string v0, "WEBSEARCH_JESRCTRL_REQUEST_JESR "

    goto :goto_0

    .line 257
    :pswitch_8
    const-string v0, "WEBSEARCH_JESRCTRL_REQUEST_NONJESR "

    goto :goto_0

    .line 260
    :pswitch_9
    const-string v0, "WEBSEARCH_JESRCTRL_START_JESR "

    goto :goto_0

    .line 263
    :pswitch_a
    const-string v0, "WEBSEARCH_JESRCTRL_START_NONJESR "

    goto :goto_0

    .line 266
    :pswitch_b
    const-string v0, "WEBSEARCH_JESRCTRL_END_JESR "

    goto :goto_0

    .line 269
    :pswitch_c
    const-string v0, "WEBSEARCH_JESRCTRL_END_NONJESR "

    goto :goto_0

    .line 272
    :pswitch_d
    const-string v0, "WEBSEARCH_FRAGMENT_SHOW_WEBVIEW "

    goto :goto_0

    .line 275
    :pswitch_e
    const-string v0, "WEBSEARCH_FRAGMENT_SHOW_WEBVIEW_COMPLETE "

    goto :goto_0

    .line 278
    :pswitch_f
    const-string v0, "APPLICATION_ON_CREATE_START"

    goto :goto_0

    .line 281
    :pswitch_10
    const-string v0, "APPLICATION_ON_CREATE_END"

    goto :goto_0

    .line 284
    :pswitch_11
    const-string v0, "ACTIVITY_ON_CREATE_START"

    goto :goto_0

    .line 287
    :pswitch_12
    const-string v0, "ACTIVITY_ON_CREATE_END"

    goto :goto_0

    .line 290
    :pswitch_13
    const-string v0, "SEARCH_PLATE_ON_DRAW_START"

    goto :goto_0

    .line 293
    :pswitch_14
    const-string v0, "ACTIVITY_ON_START_START"

    goto :goto_0

    .line 296
    :pswitch_15
    const-string v0, "ACTIVITY_ON_START_END"

    goto :goto_0

    .line 299
    :pswitch_16
    const-string v0, "ACTIVITY_ON_RESUME_START"

    goto :goto_0

    .line 302
    :pswitch_17
    const-string v0, "ACTIVITY_ON_RESUME_END"

    goto :goto_0

    .line 305
    :pswitch_18
    const-string v0, "VELVET_PRESENTER_UPDATE_MODE_START"

    goto :goto_0

    .line 308
    :pswitch_19
    const-string v0, "VELVET_PRESENTER_UPDATE_MODE_END"

    goto :goto_0

    .line 311
    :pswitch_1a
    const-string v0, "ACTIVITY_ON_RESTART_START"

    goto :goto_0

    .line 314
    :pswitch_1b
    const-string v0, "VELVET_PRESENTER_INITIALIZE_DELAYED_START"

    goto :goto_0

    .line 317
    :pswitch_1c
    const-string v0, "VELVET_PRESENTER_INITIALIZE_DELAYED_END"

    goto :goto_0

    .line 320
    :pswitch_1d
    const-string v0, "STARTUP_UI_THREAD_IDLE"

    goto :goto_0

    .line 323
    :pswitch_1e
    const-string v0, "WEBSEARCH_PREFETCH_START"

    goto :goto_0

    .line 326
    :pswitch_1f
    const-string v0, "WEBSEARCH_PREFETCH_END"

    goto :goto_0

    .line 329
    :pswitch_20
    const-string v0, "WEBSEARCH_PREFETCH_CANCEL"

    goto :goto_0

    .line 332
    :pswitch_21
    const-string v0, "WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_START"

    goto :goto_0

    .line 335
    :pswitch_22
    const-string v0, "WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_END"

    goto :goto_0

    .line 338
    :pswitch_23
    const-string v0, "WEBSEARCH_QUERYSTATE_COMMIT_WEB_SINGLE_REQUEST"

    goto :goto_0

    .line 341
    :pswitch_24
    const-string v0, "WEBSEARCH_QUERYSTATE_SWITCH_QUERY"

    goto :goto_0

    .line 344
    :pswitch_25
    const-string v0, "WEBSEARCH_QUERYSTATE_SELECT_ACTION"

    goto :goto_0

    .line 347
    :pswitch_26
    const-string v0, "WEBSEARCH_QUERYSTATE_HANDLE_ACTION"

    goto :goto_0

    .line 350
    :pswitch_27
    const-string v0, "WEBSEARCH_FRAGMENT_SHOW_CARD"

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_1b
    .end packed-switch
.end method
