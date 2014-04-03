package com.google.speech.logs;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class VoicesearchClientLogProto
{
  public static final int ACTION_TYPE_ADD_CALENDAR_EVENT = 12;
  public static final int ACTION_TYPE_AT_HOME_POWER_CONTROL = 29;
  public static final int ACTION_TYPE_DEPRECATED_DISPLAY_ANSWER = 18;
  public static final int ACTION_TYPE_DEPRECATED_MULTIPLE_LOCAL_RESULTS = 21;
  public static final int ACTION_TYPE_DEPRECATED_POST_UPDATE = 16;
  public static final int ACTION_TYPE_DEPRECATED_SINGLE_LOCAL_RESULT = 20;
  public static final int ACTION_TYPE_DEPRECATED_WEB_RESULT = 17;
  public static final int ACTION_TYPE_DICTIONARY_RESULT = 26;
  public static final int ACTION_TYPE_DIRECTIONS = 13;
  public static final int ACTION_TYPE_DOWNLOAD_APP = 36;
  public static final int ACTION_TYPE_EMAIL = 2;
  public static final int ACTION_TYPE_FLIGHT_RESULT = 24;
  public static final int ACTION_TYPE_HELP = 37;
  public static final int ACTION_TYPE_HTML_ANSWER = 19;
  public static final int ACTION_TYPE_IMAGE_RESULTS = 22;
  public static final int ACTION_TYPE_MAP = 14;
  public static final int ACTION_TYPE_NAVIGATION = 15;
  public static final int ACTION_TYPE_OPEN_APP = 3;
  public static final int ACTION_TYPE_OPEN_BOOK = 32;
  public static final int ACTION_TYPE_OPEN_URL = 5;
  public static final int ACTION_TYPE_PHONE_CALL_BUSINESS = 9;
  public static final int ACTION_TYPE_PHONE_CALL_CONTACT = 10;
  public static final int ACTION_TYPE_PHONE_CALL_NUMBER = 28;
  public static final int ACTION_TYPE_PLAY_MEDIA = 4;
  public static final int ACTION_TYPE_PLAY_MOVIE = 31;
  public static final int ACTION_TYPE_PLAY_MUSIC = 30;
  public static final int ACTION_TYPE_PUNT = 25;
  public static final int ACTION_TYPE_SELF_NOTE = 6;
  public static final int ACTION_TYPE_SET_ALARM = 8;
  public static final int ACTION_TYPE_SET_LOCATION_REMINDER = 34;
  public static final int ACTION_TYPE_SHOW_CALENDAR_EVENT = 11;
  public static final int ACTION_TYPE_SHOW_CONTACT_INFORMATION = 33;
  public static final int ACTION_TYPE_SMS = 1;
  public static final int ACTION_TYPE_SPORTS_RESULT = 27;
  public static final int ACTION_TYPE_UPDATE_SOCIAL_NETWORK = 7;
  public static final int ACTION_TYPE_VIDEO_CALL = 35;
  public static final int ACTION_TYPE_WEATHER_RESULT = 23;
  public static final int AUDIO_INPUT_DEVICE_BLUETOOTH_MICROPHONE = 3;
  public static final int AUDIO_INPUT_DEVICE_EMBEDDED_MICROPHONE = 1;
  public static final int AUDIO_INPUT_DEVICE_WIRED_MICROPHONE = 2;
  public static final int EVENT_SOURCE_NONE = 3;
  public static final int EVENT_SOURCE_TOUCH = 1;
  public static final int EVENT_SOURCE_VOICE = 2;
  public static final int REQUEST_TYPE_SONG_RECOGNITION = 5;
  public static final int REQUEST_TYPE_TEXT_SEARCH = 6;
  public static final int REQUEST_TYPE_VOICE_RECOGNITION = 1;
  public static final int REQUEST_TYPE_VOICE_RECOGNITION_CALL_CONTACT = 2;
  public static final int REQUEST_TYPE_VOICE_RECOGNITION_COMMAND = 3;
  public static final int REQUEST_TYPE_VOICE_RECOGNITION_DISAMBIG = 4;

  public static final class AlternateCorrectionData extends MessageMicro
  {
    public static final int ALTERNATE_UNIT_UTF8_BYTES = 1;
    public static final int ALTERNATE_UNIT_WORD = 0;
    public static final int LENGTH_FIELD_NUMBER = 4;
    public static final int NEW_TEXT_FIELD_NUMBER = 6;
    public static final int OLD_TEXT_FIELD_NUMBER = 5;
    public static final int RECOGNIZER_SEGMENT_INDEX_FIELD_NUMBER = 1;
    public static final int START_FIELD_NUMBER = 3;
    public static final int UNIT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLength;
    private boolean hasNewText;
    private boolean hasOldText;
    private boolean hasRecognizerSegmentIndex;
    private boolean hasStart;
    private boolean hasUnit;
    private int length_ = 0;
    private String newText_ = "";
    private String oldText_ = "";
    private int recognizerSegmentIndex_ = 0;
    private int start_ = 0;
    private int unit_ = 1;

    public static AlternateCorrectionData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AlternateCorrectionData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AlternateCorrectionData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AlternateCorrectionData)new AlternateCorrectionData().mergeFrom(paramArrayOfByte);
    }

    public final AlternateCorrectionData clear()
    {
      clearRecognizerSegmentIndex();
      clearUnit();
      clearStart();
      clearLength();
      clearOldText();
      clearNewText();
      this.cachedSize = -1;
      return this;
    }

    public AlternateCorrectionData clearLength()
    {
      this.hasLength = false;
      this.length_ = 0;
      return this;
    }

    public AlternateCorrectionData clearNewText()
    {
      this.hasNewText = false;
      this.newText_ = "";
      return this;
    }

    public AlternateCorrectionData clearOldText()
    {
      this.hasOldText = false;
      this.oldText_ = "";
      return this;
    }

    public AlternateCorrectionData clearRecognizerSegmentIndex()
    {
      this.hasRecognizerSegmentIndex = false;
      this.recognizerSegmentIndex_ = 0;
      return this;
    }

    public AlternateCorrectionData clearStart()
    {
      this.hasStart = false;
      this.start_ = 0;
      return this;
    }

    public AlternateCorrectionData clearUnit()
    {
      this.hasUnit = false;
      this.unit_ = 1;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getLength()
    {
      return this.length_;
    }

    public String getNewText()
    {
      return this.newText_;
    }

    public String getOldText()
    {
      return this.oldText_;
    }

    public int getRecognizerSegmentIndex()
    {
      return this.recognizerSegmentIndex_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRecognizerSegmentIndex();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getRecognizerSegmentIndex());
      if (hasUnit())
        i += CodedOutputStreamMicro.computeInt32Size(2, getUnit());
      if (hasStart())
        i += CodedOutputStreamMicro.computeInt32Size(3, getStart());
      if (hasLength())
        i += CodedOutputStreamMicro.computeInt32Size(4, getLength());
      if (hasOldText())
        i += CodedOutputStreamMicro.computeStringSize(5, getOldText());
      if (hasNewText())
        i += CodedOutputStreamMicro.computeStringSize(6, getNewText());
      this.cachedSize = i;
      return i;
    }

    public int getStart()
    {
      return this.start_;
    }

    public int getUnit()
    {
      return this.unit_;
    }

    public boolean hasLength()
    {
      return this.hasLength;
    }

    public boolean hasNewText()
    {
      return this.hasNewText;
    }

    public boolean hasOldText()
    {
      return this.hasOldText;
    }

    public boolean hasRecognizerSegmentIndex()
    {
      return this.hasRecognizerSegmentIndex;
    }

    public boolean hasStart()
    {
      return this.hasStart;
    }

    public boolean hasUnit()
    {
      return this.hasUnit;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AlternateCorrectionData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setRecognizerSegmentIndex(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setUnit(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setStart(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setLength(paramCodedInputStreamMicro.readInt32());
          break;
        case 42:
          setOldText(paramCodedInputStreamMicro.readString());
          break;
        case 50:
        }
        setNewText(paramCodedInputStreamMicro.readString());
      }
    }

    public AlternateCorrectionData setLength(int paramInt)
    {
      this.hasLength = true;
      this.length_ = paramInt;
      return this;
    }

    public AlternateCorrectionData setNewText(String paramString)
    {
      this.hasNewText = true;
      this.newText_ = paramString;
      return this;
    }

    public AlternateCorrectionData setOldText(String paramString)
    {
      this.hasOldText = true;
      this.oldText_ = paramString;
      return this;
    }

    public AlternateCorrectionData setRecognizerSegmentIndex(int paramInt)
    {
      this.hasRecognizerSegmentIndex = true;
      this.recognizerSegmentIndex_ = paramInt;
      return this;
    }

    public AlternateCorrectionData setStart(int paramInt)
    {
      this.hasStart = true;
      this.start_ = paramInt;
      return this;
    }

    public AlternateCorrectionData setUnit(int paramInt)
    {
      this.hasUnit = true;
      this.unit_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRecognizerSegmentIndex())
        paramCodedOutputStreamMicro.writeInt32(1, getRecognizerSegmentIndex());
      if (hasUnit())
        paramCodedOutputStreamMicro.writeInt32(2, getUnit());
      if (hasStart())
        paramCodedOutputStreamMicro.writeInt32(3, getStart());
      if (hasLength())
        paramCodedOutputStreamMicro.writeInt32(4, getLength());
      if (hasOldText())
        paramCodedOutputStreamMicro.writeString(5, getOldText());
      if (hasNewText())
        paramCodedOutputStreamMicro.writeString(6, getNewText());
    }
  }

  public static final class BugReport extends MessageMicro
  {
    public static final int BUG_NUMBER_FIELD_NUMBER = 1;
    private int bugNumber_ = 0;
    private int cachedSize = -1;
    private boolean hasBugNumber;

    public static BugReport parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new BugReport().mergeFrom(paramCodedInputStreamMicro);
    }

    public static BugReport parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (BugReport)new BugReport().mergeFrom(paramArrayOfByte);
    }

    public final BugReport clear()
    {
      clearBugNumber();
      this.cachedSize = -1;
      return this;
    }

    public BugReport clearBugNumber()
    {
      this.hasBugNumber = false;
      this.bugNumber_ = 0;
      return this;
    }

    public int getBugNumber()
    {
      return this.bugNumber_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasBugNumber();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getBugNumber());
      this.cachedSize = i;
      return i;
    }

    public boolean hasBugNumber()
    {
      return this.hasBugNumber;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public BugReport mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
        }
        setBugNumber(paramCodedInputStreamMicro.readInt32());
      }
    }

    public BugReport setBugNumber(int paramInt)
    {
      this.hasBugNumber = true;
      this.bugNumber_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasBugNumber())
        paramCodedOutputStreamMicro.writeInt32(1, getBugNumber());
    }
  }

  public static final class ClientEvent extends MessageMicro
  {
    public static final int ACTION_TYPE_FIELD_NUMBER = 5;
    public static final int ALTERNATE_CORRECTION_FIELD_NUMBER = 7;
    public static final int AUDIO_INPUT_DEVICE_FIELD_NUMBER = 10;
    public static final int BUG_REPORT_FIELD_NUMBER = 8;
    public static final int CLIENT_TIME_MS_FIELD_NUMBER = 1;
    public static final int CONTACT_INFO_FIELD_NUMBER = 12;
    public static final int EMBEDDED_RECOGNIZER_LOG_FIELD_NUMBER = 9;
    public static final int EVENT_SOURCE_FIELD_NUMBER = 11;
    public static final int EVENT_TYPE_APP_EVENT_ACTION_FROM_EMBEDDED_PARSER = 93;
    public static final int EVENT_TYPE_APP_EVENT_ACTION_FROM_NETWORK_PARSER = 94;
    public static final int EVENT_TYPE_APP_EVENT_ACTIVITY_CREATE_LATENCY = 100;
    public static final int EVENT_TYPE_APP_EVENT_ACTIVITY_RESTART_LATENCY = 101;
    public static final int EVENT_TYPE_APP_EVENT_ACTIVITY_RESUME_LATENCY = 102;
    public static final int EVENT_TYPE_APP_EVENT_APPLICATION_CREATE_LATENCY = 99;
    public static final int EVENT_TYPE_APP_EVENT_APPLICATION_STATE_NOT_RESTORED = 69;
    public static final int EVENT_TYPE_APP_EVENT_CONTACT_GRAMMAR_LOADING_LATENCY = 82;
    public static final int EVENT_TYPE_APP_EVENT_EMBEDDED_RESULTS_MERGED_WITH_NETWORK_RESULTS = 87;
    public static final int EVENT_TYPE_APP_EVENT_ESTABLISH_AUDIO_PATH = 76;
    public static final int EVENT_TYPE_APP_EVENT_ESTABLISH_BT_SCO_CONNECTION_LATENCY = 106;
    public static final int EVENT_TYPE_APP_EVENT_FAIL_IN_ESTABLISH_BT_SCO_CONNECTION_LATENCY = 107;
    public static final int EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_CREATE = 79;
    public static final int EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_PAUSE = 78;
    public static final int EVENT_TYPE_APP_EVENT_HANDSFREE_ACTIVITY_RESUME = 77;
    public static final int EVENT_TYPE_APP_EVENT_IME_CLOSE = 40;
    public static final int EVENT_TYPE_APP_EVENT_IME_DISPLAY_ERROR = 38;
    public static final int EVENT_TYPE_APP_EVENT_IME_FINISH_INPUT_VIEW = 41;
    public static final int EVENT_TYPE_APP_EVENT_IME_INTERRUPTED = 42;
    public static final int EVENT_TYPE_APP_EVENT_IME_JUMP_TO_OTHER_FIELD = 36;
    public static final int EVENT_TYPE_APP_EVENT_IME_PARTIAL_RESULT_OVERRIDDEN = 74;
    public static final int EVENT_TYPE_APP_EVENT_IME_RESULT_DISPLAYED = 39;
    public static final int EVENT_TYPE_APP_EVENT_IME_ROTATE_WHILE_RECORDING = 75;
    public static final int EVENT_TYPE_APP_EVENT_IME_START_INPUT_VIEW = 35;
    public static final int EVENT_TYPE_APP_EVENT_INTENT_ACTIVITY_PAUSE = 62;
    public static final int EVENT_TYPE_APP_EVENT_INTENT_ACTIVITY_RESUME = 61;
    public static final int EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_CREATE = 43;
    public static final int EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_PAUSE = 2;
    public static final int EVENT_TYPE_APP_EVENT_MAIN_ACTIVITY_RESUME = 1;
    public static final int EVENT_TYPE_APP_EVENT_NETWORK_RESULTS_MERGED_WITH_EMBEDDED_RESULTS = 92;
    public static final int EVENT_TYPE_APP_EVENT_PUMPKIN_LATENCY = 96;
    public static final int EVENT_TYPE_APP_EVENT_PUMPKIN_LATENCY_INITIALIZATION = 97;
    public static final int EVENT_TYPE_APP_EVENT_PUMPKIN_NO_MATCH_RECEIVED = 98;
    public static final int EVENT_TYPE_APP_EVENT_RESULTS_FROM_EMBEDDED_RECOGNIZER = 70;
    public static final int EVENT_TYPE_APP_EVENT_RESULTS_FROM_NETWORK_RECOGNIZER = 71;
    public static final int EVENT_TYPE_APP_EVENT_SCREEN_TRANSITION = 4;
    public static final int EVENT_TYPE_APP_EVENT_SERVICE_API_CANCEL = 57;
    public static final int EVENT_TYPE_APP_EVENT_SERVICE_API_ENDED = 56;
    public static final int EVENT_TYPE_APP_EVENT_SERVICE_API_ERROR = 59;
    public static final int EVENT_TYPE_APP_EVENT_SERVICE_API_RESULTS = 60;
    public static final int EVENT_TYPE_APP_EVENT_SERVICE_API_START_LISTENING = 55;
    public static final int EVENT_TYPE_APP_EVENT_SERVICE_API_STOP_LISTENING = 58;
    public static final int EVENT_TYPE_APP_EVENT_START_RECORDING_USER_SPEECH = 5;
    public static final int EVENT_TYPE_APP_EVENT_STOP_RECORDING_END_POINTER_TRIGGERED = 6;
    public static final int EVENT_TYPE_APP_EVENT_STOP_RECORDING_NO_SPEECH_DETECTED = 90;
    public static final int EVENT_TYPE_APP_EVENT_TRIGGER_SPEECH_RECOGNITION = 21;
    public static final int EVENT_TYPE_APP_EVENT_UNUSED_ACTION_FROM_NETWORK_PARSER = 108;
    public static final int EVENT_TYPE_APP_EVENT_WAIT_FOR_CONFIGURATION = 3;
    public static final int EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_GOGGLES = 103;
    public static final int EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_SOUNDSEARCH = 104;
    public static final int EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_TEXT = 86;
    public static final int EVENT_TYPE_APP_EVENT_WEBSEARCH_LATENCY_VOICE = 85;
    public static final int EVENT_TYPE_DEPRECATED_APP_EVENT_CREATE_LATENCY = 83;
    public static final int EVENT_TYPE_DEPRECATED_APP_EVENT_EMBEDDED_RECOGNIZER_RESULT_USED = 53;
    public static final int EVENT_TYPE_DEPRECATED_APP_EVENT_PUMPKIN_RESULT_RECEIVED = 95;
    public static final int EVENT_TYPE_DEPRECATED_APP_EVENT_RESUME_LATENCY = 84;
    public static final int EVENT_TYPE_DEPRECATED_APP_EVENT_S3_RECOGNIZER_RESULT_USED = 54;
    public static final int EVENT_TYPE_DEPRECATED_USER_EVENT_ACTION_CANCEL_AND_RETRY = 81;
    public static final int EVENT_TYPE_DEPRECATED_USER_EVENT_ACTION_EXPIRED_COUNTDOWN = 80;
    public static final int EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_COMPLETED = 89;
    public static final int EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_HOTWORD_RECOGNITION_STARTED = 88;
    public static final int EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_COMPLETED = 52;
    public static final int EVENT_TYPE_EMBEDDED_RECOGNIZER_EVENT_RECOGNITION_STARTED = 51;
    public static final int EVENT_TYPE_FIELD_NUMBER = 2;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_DONE = 10;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_ERROR = 9;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_OPEN = 7;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_CONNECTION_OPEN_LATENCY = 8;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_MAJEL_RESULT_RECEIVED = 12;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_NO_RETRY_MAX_COUNT_REACHED = 27;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_NO_RETRY_TIMEOUT_EXCEEDED = 28;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_MAJEL_RESULT = 32;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_RECOGNITION_COMPLETE = 31;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TEXT_MAJEL_RESULT = 73;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_PERCEIVED_LATENCY_TTS_RESULT = 33;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_RECOGNITION_COMPLETED = 11;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_RETRY = 25;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_RETRY_AUTH_FAILURE = 26;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_END_OF_DATA = 23;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_RECOGNIZE_REQUEST = 22;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_SEND_TEXT_RECOGNITION_REQUEST = 24;
    public static final int EVENT_TYPE_PROTOCOL_EVENT_S3_TTS_RECEIVED = 30;
    public static final int EVENT_TYPE_UNEXPECTED_CLIENT_ERROR = 29;
    public static final int EVENT_TYPE_USER_EVENT_ACTION_BAIL_OUT = 50;
    public static final int EVENT_TYPE_USER_EVENT_ACTION_CANCEL = 14;
    public static final int EVENT_TYPE_USER_EVENT_ACTION_CANCEL_COUNTDOWN = 72;
    public static final int EVENT_TYPE_USER_EVENT_ACTION_COMPLETE = 13;
    public static final int EVENT_TYPE_USER_EVENT_ALTERNATE_SELECTED = 15;
    public static final int EVENT_TYPE_USER_EVENT_CANCEL_WHILE_RECOGNITION_WORKING = 18;
    public static final int EVENT_TYPE_USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS = 68;
    public static final int EVENT_TYPE_USER_EVENT_CHANGE_IME_LANGUAGE_SETTINGS_FROM_IME = 67;
    public static final int EVENT_TYPE_USER_EVENT_CHANGE_VOICE_LANGUAGE_SETTINGS = 66;
    public static final int EVENT_TYPE_USER_EVENT_CLICK_ON_DEVICE_RESULT = 105;
    public static final int EVENT_TYPE_USER_EVENT_CLICK_PLAY_STORE_LINK = 91;
    public static final int EVENT_TYPE_USER_EVENT_CONTACT_SELECT_DISMISS = 45;
    public static final int EVENT_TYPE_USER_EVENT_CONTACT_SELECT_PICK = 44;
    public static final int EVENT_TYPE_USER_EVENT_DELETE_RECOGNIZED_TEXT = 34;
    public static final int EVENT_TYPE_USER_EVENT_EDIT_RECOGNIZED_TEXT = 16;
    public static final int EVENT_TYPE_USER_EVENT_IME_CLICK_DONE = 37;
    public static final int EVENT_TYPE_USER_EVENT_IME_PAUSE_RECORDING = 63;
    public static final int EVENT_TYPE_USER_EVENT_IME_RESTART_RECORDING = 64;
    public static final int EVENT_TYPE_USER_EVENT_PERSONALIZATION_CLICK_DASHBOARD = 47;
    public static final int EVENT_TYPE_USER_EVENT_PERSONALIZATION_CLICK_MORE_INFO = 46;
    public static final int EVENT_TYPE_USER_EVENT_PERSONALIZATION_DISABLED_FROM_SETTING = 49;
    public static final int EVENT_TYPE_USER_EVENT_PERSONALIZATION_ENABLED_FROM_SETTING = 48;
    public static final int EVENT_TYPE_USER_EVENT_STOP_RECORDING = 17;
    public static final int EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION = 20;
    public static final int EVENT_TYPE_USER_EVENT_TRIGGER_SPEECH_RECOGNITION_BY_HOTWORD = 65;
    public static final int EVENT_TYPE_USER_EVENT_TRIGGER_TEXT_RECOGNITION = 19;
    public static final int INTENT_TYPE_FIELD_NUMBER = 16;
    public static final int INTENT_TYPE_INTENT_ASSIST = 1;
    public static final int INTENT_TYPE_INTENT_GLOBAL_SEARCH = 2;
    public static final int INTENT_TYPE_INTENT_MAIN = 0;
    public static final int INTENT_TYPE_INTENT_NDEF_DISCOVERED = 6;
    public static final int INTENT_TYPE_INTENT_SEARCH_LONG_PRESS = 3;
    public static final int INTENT_TYPE_INTENT_SEND = 4;
    public static final int INTENT_TYPE_INTENT_TEXT_WEB_SEARCH = 5;
    public static final int INTENT_TYPE_INTENT_VOICE_WEB_SEARCH = 7;
    public static final int LATENCY_FIELD_NUMBER = 6;
    public static final int NETWORK_TYPE_FIELD_NUMBER = 17;
    public static final int ON_DEVICE_SOURCE_FIELD_NUMBER = 15;
    public static final int REQUEST_ID_FIELD_NUMBER = 3;
    public static final int REQUEST_TYPE_FIELD_NUMBER = 13;
    public static final int SCO_OUTPUT_DISABLED_FIELD_NUMBER = 18;
    public static final int SCREEN_TRANSITION_FIELD_NUMBER = 4;
    public static final int TYPING_CORRECTION_FIELD_NUMBER = 14;
    private int actionType_ = 0;
    private VoicesearchClientLogProto.AlternateCorrectionData alternateCorrection_ = null;
    private int audioInputDevice_ = 1;
    private VoicesearchClientLogProto.BugReport bugReport_ = null;
    private int cachedSize = -1;
    private long clientTimeMs_ = 0L;
    private VoicesearchClientLogProto.ContactInfo contactInfo_ = null;
    private RecognizerOuterClass.RecognizerLog embeddedRecognizerLog_ = null;
    private int eventSource_ = 1;
    private int eventType_ = 0;
    private boolean hasActionType;
    private boolean hasAlternateCorrection;
    private boolean hasAudioInputDevice;
    private boolean hasBugReport;
    private boolean hasClientTimeMs;
    private boolean hasContactInfo;
    private boolean hasEmbeddedRecognizerLog;
    private boolean hasEventSource;
    private boolean hasEventType;
    private boolean hasIntentType;
    private boolean hasLatency;
    private boolean hasNetworkType;
    private boolean hasOnDeviceSource;
    private boolean hasRequestId;
    private boolean hasRequestType;
    private boolean hasScoOutputDisabled;
    private boolean hasScreenTransition;
    private boolean hasTypingCorrection;
    private int intentType_ = 0;
    private VoicesearchClientLogProto.LatencyData latency_ = null;
    private int networkType_ = 0;
    private VoicesearchClientLogProto.OnDeviceSource onDeviceSource_ = null;
    private String requestId_ = "";
    private int requestType_ = 1;
    private boolean scoOutputDisabled_ = false;
    private VoicesearchClientLogProto.ScreenTransitionData screenTransition_ = null;
    private VoicesearchClientLogProto.TypingCorrection typingCorrection_ = null;

    public static ClientEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientEvent)new ClientEvent().mergeFrom(paramArrayOfByte);
    }

    public final ClientEvent clear()
    {
      clearClientTimeMs();
      clearEventType();
      clearRequestId();
      clearScreenTransition();
      clearActionType();
      clearLatency();
      clearAlternateCorrection();
      clearBugReport();
      clearEmbeddedRecognizerLog();
      clearAudioInputDevice();
      clearEventSource();
      clearContactInfo();
      clearRequestType();
      clearTypingCorrection();
      clearOnDeviceSource();
      clearIntentType();
      clearNetworkType();
      clearScoOutputDisabled();
      this.cachedSize = -1;
      return this;
    }

    public ClientEvent clearActionType()
    {
      this.hasActionType = false;
      this.actionType_ = 0;
      return this;
    }

    public ClientEvent clearAlternateCorrection()
    {
      this.hasAlternateCorrection = false;
      this.alternateCorrection_ = null;
      return this;
    }

    public ClientEvent clearAudioInputDevice()
    {
      this.hasAudioInputDevice = false;
      this.audioInputDevice_ = 1;
      return this;
    }

    public ClientEvent clearBugReport()
    {
      this.hasBugReport = false;
      this.bugReport_ = null;
      return this;
    }

    public ClientEvent clearClientTimeMs()
    {
      this.hasClientTimeMs = false;
      this.clientTimeMs_ = 0L;
      return this;
    }

    public ClientEvent clearContactInfo()
    {
      this.hasContactInfo = false;
      this.contactInfo_ = null;
      return this;
    }

    public ClientEvent clearEmbeddedRecognizerLog()
    {
      this.hasEmbeddedRecognizerLog = false;
      this.embeddedRecognizerLog_ = null;
      return this;
    }

    public ClientEvent clearEventSource()
    {
      this.hasEventSource = false;
      this.eventSource_ = 1;
      return this;
    }

    public ClientEvent clearEventType()
    {
      this.hasEventType = false;
      this.eventType_ = 0;
      return this;
    }

    public ClientEvent clearIntentType()
    {
      this.hasIntentType = false;
      this.intentType_ = 0;
      return this;
    }

    public ClientEvent clearLatency()
    {
      this.hasLatency = false;
      this.latency_ = null;
      return this;
    }

    public ClientEvent clearNetworkType()
    {
      this.hasNetworkType = false;
      this.networkType_ = 0;
      return this;
    }

    public ClientEvent clearOnDeviceSource()
    {
      this.hasOnDeviceSource = false;
      this.onDeviceSource_ = null;
      return this;
    }

    public ClientEvent clearRequestId()
    {
      this.hasRequestId = false;
      this.requestId_ = "";
      return this;
    }

    public ClientEvent clearRequestType()
    {
      this.hasRequestType = false;
      this.requestType_ = 1;
      return this;
    }

    public ClientEvent clearScoOutputDisabled()
    {
      this.hasScoOutputDisabled = false;
      this.scoOutputDisabled_ = false;
      return this;
    }

    public ClientEvent clearScreenTransition()
    {
      this.hasScreenTransition = false;
      this.screenTransition_ = null;
      return this;
    }

    public ClientEvent clearTypingCorrection()
    {
      this.hasTypingCorrection = false;
      this.typingCorrection_ = null;
      return this;
    }

    public int getActionType()
    {
      return this.actionType_;
    }

    public VoicesearchClientLogProto.AlternateCorrectionData getAlternateCorrection()
    {
      return this.alternateCorrection_;
    }

    public int getAudioInputDevice()
    {
      return this.audioInputDevice_;
    }

    public VoicesearchClientLogProto.BugReport getBugReport()
    {
      return this.bugReport_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public long getClientTimeMs()
    {
      return this.clientTimeMs_;
    }

    public VoicesearchClientLogProto.ContactInfo getContactInfo()
    {
      return this.contactInfo_;
    }

    public RecognizerOuterClass.RecognizerLog getEmbeddedRecognizerLog()
    {
      return this.embeddedRecognizerLog_;
    }

    public int getEventSource()
    {
      return this.eventSource_;
    }

    public int getEventType()
    {
      return this.eventType_;
    }

    public int getIntentType()
    {
      return this.intentType_;
    }

    public VoicesearchClientLogProto.LatencyData getLatency()
    {
      return this.latency_;
    }

    public int getNetworkType()
    {
      return this.networkType_;
    }

    public VoicesearchClientLogProto.OnDeviceSource getOnDeviceSource()
    {
      return this.onDeviceSource_;
    }

    public String getRequestId()
    {
      return this.requestId_;
    }

    public int getRequestType()
    {
      return this.requestType_;
    }

    public boolean getScoOutputDisabled()
    {
      return this.scoOutputDisabled_;
    }

    public VoicesearchClientLogProto.ScreenTransitionData getScreenTransition()
    {
      return this.screenTransition_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasClientTimeMs();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeUInt64Size(1, getClientTimeMs());
      if (hasEventType())
        i += CodedOutputStreamMicro.computeInt32Size(2, getEventType());
      if (hasRequestId())
        i += CodedOutputStreamMicro.computeStringSize(3, getRequestId());
      if (hasScreenTransition())
        i += CodedOutputStreamMicro.computeMessageSize(4, getScreenTransition());
      if (hasActionType())
        i += CodedOutputStreamMicro.computeInt32Size(5, getActionType());
      if (hasLatency())
        i += CodedOutputStreamMicro.computeMessageSize(6, getLatency());
      if (hasAlternateCorrection())
        i += CodedOutputStreamMicro.computeMessageSize(7, getAlternateCorrection());
      if (hasBugReport())
        i += CodedOutputStreamMicro.computeMessageSize(8, getBugReport());
      if (hasEmbeddedRecognizerLog())
        i += CodedOutputStreamMicro.computeMessageSize(9, getEmbeddedRecognizerLog());
      if (hasAudioInputDevice())
        i += CodedOutputStreamMicro.computeInt32Size(10, getAudioInputDevice());
      if (hasEventSource())
        i += CodedOutputStreamMicro.computeInt32Size(11, getEventSource());
      if (hasContactInfo())
        i += CodedOutputStreamMicro.computeMessageSize(12, getContactInfo());
      if (hasRequestType())
        i += CodedOutputStreamMicro.computeInt32Size(13, getRequestType());
      if (hasTypingCorrection())
        i += CodedOutputStreamMicro.computeMessageSize(14, getTypingCorrection());
      if (hasOnDeviceSource())
        i += CodedOutputStreamMicro.computeMessageSize(15, getOnDeviceSource());
      if (hasIntentType())
        i += CodedOutputStreamMicro.computeInt32Size(16, getIntentType());
      if (hasNetworkType())
        i += CodedOutputStreamMicro.computeInt32Size(17, getNetworkType());
      if (hasScoOutputDisabled())
        i += CodedOutputStreamMicro.computeBoolSize(18, getScoOutputDisabled());
      this.cachedSize = i;
      return i;
    }

    public VoicesearchClientLogProto.TypingCorrection getTypingCorrection()
    {
      return this.typingCorrection_;
    }

    public boolean hasActionType()
    {
      return this.hasActionType;
    }

    public boolean hasAlternateCorrection()
    {
      return this.hasAlternateCorrection;
    }

    public boolean hasAudioInputDevice()
    {
      return this.hasAudioInputDevice;
    }

    public boolean hasBugReport()
    {
      return this.hasBugReport;
    }

    public boolean hasClientTimeMs()
    {
      return this.hasClientTimeMs;
    }

    public boolean hasContactInfo()
    {
      return this.hasContactInfo;
    }

    public boolean hasEmbeddedRecognizerLog()
    {
      return this.hasEmbeddedRecognizerLog;
    }

    public boolean hasEventSource()
    {
      return this.hasEventSource;
    }

    public boolean hasEventType()
    {
      return this.hasEventType;
    }

    public boolean hasIntentType()
    {
      return this.hasIntentType;
    }

    public boolean hasLatency()
    {
      return this.hasLatency;
    }

    public boolean hasNetworkType()
    {
      return this.hasNetworkType;
    }

    public boolean hasOnDeviceSource()
    {
      return this.hasOnDeviceSource;
    }

    public boolean hasRequestId()
    {
      return this.hasRequestId;
    }

    public boolean hasRequestType()
    {
      return this.hasRequestType;
    }

    public boolean hasScoOutputDisabled()
    {
      return this.hasScoOutputDisabled;
    }

    public boolean hasScreenTransition()
    {
      return this.hasScreenTransition;
    }

    public boolean hasTypingCorrection()
    {
      return this.hasTypingCorrection;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setClientTimeMs(paramCodedInputStreamMicro.readUInt64());
          break;
        case 16:
          setEventType(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          setRequestId(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          VoicesearchClientLogProto.ScreenTransitionData localScreenTransitionData = new VoicesearchClientLogProto.ScreenTransitionData();
          paramCodedInputStreamMicro.readMessage(localScreenTransitionData);
          setScreenTransition(localScreenTransitionData);
          break;
        case 40:
          setActionType(paramCodedInputStreamMicro.readInt32());
          break;
        case 50:
          VoicesearchClientLogProto.LatencyData localLatencyData = new VoicesearchClientLogProto.LatencyData();
          paramCodedInputStreamMicro.readMessage(localLatencyData);
          setLatency(localLatencyData);
          break;
        case 58:
          VoicesearchClientLogProto.AlternateCorrectionData localAlternateCorrectionData = new VoicesearchClientLogProto.AlternateCorrectionData();
          paramCodedInputStreamMicro.readMessage(localAlternateCorrectionData);
          setAlternateCorrection(localAlternateCorrectionData);
          break;
        case 66:
          VoicesearchClientLogProto.BugReport localBugReport = new VoicesearchClientLogProto.BugReport();
          paramCodedInputStreamMicro.readMessage(localBugReport);
          setBugReport(localBugReport);
          break;
        case 74:
          RecognizerOuterClass.RecognizerLog localRecognizerLog = new RecognizerOuterClass.RecognizerLog();
          paramCodedInputStreamMicro.readMessage(localRecognizerLog);
          setEmbeddedRecognizerLog(localRecognizerLog);
          break;
        case 80:
          setAudioInputDevice(paramCodedInputStreamMicro.readInt32());
          break;
        case 88:
          setEventSource(paramCodedInputStreamMicro.readInt32());
          break;
        case 98:
          VoicesearchClientLogProto.ContactInfo localContactInfo = new VoicesearchClientLogProto.ContactInfo();
          paramCodedInputStreamMicro.readMessage(localContactInfo);
          setContactInfo(localContactInfo);
          break;
        case 104:
          setRequestType(paramCodedInputStreamMicro.readInt32());
          break;
        case 114:
          VoicesearchClientLogProto.TypingCorrection localTypingCorrection = new VoicesearchClientLogProto.TypingCorrection();
          paramCodedInputStreamMicro.readMessage(localTypingCorrection);
          setTypingCorrection(localTypingCorrection);
          break;
        case 122:
          VoicesearchClientLogProto.OnDeviceSource localOnDeviceSource = new VoicesearchClientLogProto.OnDeviceSource();
          paramCodedInputStreamMicro.readMessage(localOnDeviceSource);
          setOnDeviceSource(localOnDeviceSource);
          break;
        case 128:
          setIntentType(paramCodedInputStreamMicro.readInt32());
          break;
        case 136:
          setNetworkType(paramCodedInputStreamMicro.readInt32());
          break;
        case 144:
        }
        setScoOutputDisabled(paramCodedInputStreamMicro.readBool());
      }
    }

    public ClientEvent setActionType(int paramInt)
    {
      this.hasActionType = true;
      this.actionType_ = paramInt;
      return this;
    }

    public ClientEvent setAlternateCorrection(VoicesearchClientLogProto.AlternateCorrectionData paramAlternateCorrectionData)
    {
      if (paramAlternateCorrectionData == null)
        throw new NullPointerException();
      this.hasAlternateCorrection = true;
      this.alternateCorrection_ = paramAlternateCorrectionData;
      return this;
    }

    public ClientEvent setAudioInputDevice(int paramInt)
    {
      this.hasAudioInputDevice = true;
      this.audioInputDevice_ = paramInt;
      return this;
    }

    public ClientEvent setBugReport(VoicesearchClientLogProto.BugReport paramBugReport)
    {
      if (paramBugReport == null)
        throw new NullPointerException();
      this.hasBugReport = true;
      this.bugReport_ = paramBugReport;
      return this;
    }

    public ClientEvent setClientTimeMs(long paramLong)
    {
      this.hasClientTimeMs = true;
      this.clientTimeMs_ = paramLong;
      return this;
    }

    public ClientEvent setContactInfo(VoicesearchClientLogProto.ContactInfo paramContactInfo)
    {
      if (paramContactInfo == null)
        throw new NullPointerException();
      this.hasContactInfo = true;
      this.contactInfo_ = paramContactInfo;
      return this;
    }

    public ClientEvent setEmbeddedRecognizerLog(RecognizerOuterClass.RecognizerLog paramRecognizerLog)
    {
      if (paramRecognizerLog == null)
        throw new NullPointerException();
      this.hasEmbeddedRecognizerLog = true;
      this.embeddedRecognizerLog_ = paramRecognizerLog;
      return this;
    }

    public ClientEvent setEventSource(int paramInt)
    {
      this.hasEventSource = true;
      this.eventSource_ = paramInt;
      return this;
    }

    public ClientEvent setEventType(int paramInt)
    {
      this.hasEventType = true;
      this.eventType_ = paramInt;
      return this;
    }

    public ClientEvent setIntentType(int paramInt)
    {
      this.hasIntentType = true;
      this.intentType_ = paramInt;
      return this;
    }

    public ClientEvent setLatency(VoicesearchClientLogProto.LatencyData paramLatencyData)
    {
      if (paramLatencyData == null)
        throw new NullPointerException();
      this.hasLatency = true;
      this.latency_ = paramLatencyData;
      return this;
    }

    public ClientEvent setNetworkType(int paramInt)
    {
      this.hasNetworkType = true;
      this.networkType_ = paramInt;
      return this;
    }

    public ClientEvent setOnDeviceSource(VoicesearchClientLogProto.OnDeviceSource paramOnDeviceSource)
    {
      if (paramOnDeviceSource == null)
        throw new NullPointerException();
      this.hasOnDeviceSource = true;
      this.onDeviceSource_ = paramOnDeviceSource;
      return this;
    }

    public ClientEvent setRequestId(String paramString)
    {
      this.hasRequestId = true;
      this.requestId_ = paramString;
      return this;
    }

    public ClientEvent setRequestType(int paramInt)
    {
      this.hasRequestType = true;
      this.requestType_ = paramInt;
      return this;
    }

    public ClientEvent setScoOutputDisabled(boolean paramBoolean)
    {
      this.hasScoOutputDisabled = true;
      this.scoOutputDisabled_ = paramBoolean;
      return this;
    }

    public ClientEvent setScreenTransition(VoicesearchClientLogProto.ScreenTransitionData paramScreenTransitionData)
    {
      if (paramScreenTransitionData == null)
        throw new NullPointerException();
      this.hasScreenTransition = true;
      this.screenTransition_ = paramScreenTransitionData;
      return this;
    }

    public ClientEvent setTypingCorrection(VoicesearchClientLogProto.TypingCorrection paramTypingCorrection)
    {
      if (paramTypingCorrection == null)
        throw new NullPointerException();
      this.hasTypingCorrection = true;
      this.typingCorrection_ = paramTypingCorrection;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasClientTimeMs())
        paramCodedOutputStreamMicro.writeUInt64(1, getClientTimeMs());
      if (hasEventType())
        paramCodedOutputStreamMicro.writeInt32(2, getEventType());
      if (hasRequestId())
        paramCodedOutputStreamMicro.writeString(3, getRequestId());
      if (hasScreenTransition())
        paramCodedOutputStreamMicro.writeMessage(4, getScreenTransition());
      if (hasActionType())
        paramCodedOutputStreamMicro.writeInt32(5, getActionType());
      if (hasLatency())
        paramCodedOutputStreamMicro.writeMessage(6, getLatency());
      if (hasAlternateCorrection())
        paramCodedOutputStreamMicro.writeMessage(7, getAlternateCorrection());
      if (hasBugReport())
        paramCodedOutputStreamMicro.writeMessage(8, getBugReport());
      if (hasEmbeddedRecognizerLog())
        paramCodedOutputStreamMicro.writeMessage(9, getEmbeddedRecognizerLog());
      if (hasAudioInputDevice())
        paramCodedOutputStreamMicro.writeInt32(10, getAudioInputDevice());
      if (hasEventSource())
        paramCodedOutputStreamMicro.writeInt32(11, getEventSource());
      if (hasContactInfo())
        paramCodedOutputStreamMicro.writeMessage(12, getContactInfo());
      if (hasRequestType())
        paramCodedOutputStreamMicro.writeInt32(13, getRequestType());
      if (hasTypingCorrection())
        paramCodedOutputStreamMicro.writeMessage(14, getTypingCorrection());
      if (hasOnDeviceSource())
        paramCodedOutputStreamMicro.writeMessage(15, getOnDeviceSource());
      if (hasIntentType())
        paramCodedOutputStreamMicro.writeInt32(16, getIntentType());
      if (hasNetworkType())
        paramCodedOutputStreamMicro.writeInt32(17, getNetworkType());
      if (hasScoOutputDisabled())
        paramCodedOutputStreamMicro.writeBool(18, getScoOutputDisabled());
    }
  }

  public static final class ContactInfo extends MessageMicro
  {
    public static final int GRAMMAR_WEIGHT_FIELD_NUMBER = 1;
    public static final int RECOGNIZER_EMBEDDED = 2;
    public static final int RECOGNIZER_NETWORK = 1;
    public static final int RECOGNIZER_NETWORK_AND_EMBEDDED = 3;
    public static final int SOURCE_FIELD_NUMBER = 3;
    public static final int SYNCED_CONTACT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private double grammarWeight_ = 0.0D;
    private boolean hasGrammarWeight;
    private boolean hasSource;
    private boolean hasSyncedContact;
    private int source_ = 0;
    private boolean syncedContact_ = false;

    public static ContactInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ContactInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ContactInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ContactInfo)new ContactInfo().mergeFrom(paramArrayOfByte);
    }

    public final ContactInfo clear()
    {
      clearGrammarWeight();
      clearSyncedContact();
      clearSource();
      this.cachedSize = -1;
      return this;
    }

    public ContactInfo clearGrammarWeight()
    {
      this.hasGrammarWeight = false;
      this.grammarWeight_ = 0.0D;
      return this;
    }

    public ContactInfo clearSource()
    {
      this.hasSource = false;
      this.source_ = 0;
      return this;
    }

    public ContactInfo clearSyncedContact()
    {
      this.hasSyncedContact = false;
      this.syncedContact_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public double getGrammarWeight()
    {
      return this.grammarWeight_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasGrammarWeight();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeDoubleSize(1, getGrammarWeight());
      if (hasSyncedContact())
        i += CodedOutputStreamMicro.computeBoolSize(2, getSyncedContact());
      if (hasSource())
        i += CodedOutputStreamMicro.computeInt32Size(3, getSource());
      this.cachedSize = i;
      return i;
    }

    public int getSource()
    {
      return this.source_;
    }

    public boolean getSyncedContact()
    {
      return this.syncedContact_;
    }

    public boolean hasGrammarWeight()
    {
      return this.hasGrammarWeight;
    }

    public boolean hasSource()
    {
      return this.hasSource;
    }

    public boolean hasSyncedContact()
    {
      return this.hasSyncedContact;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ContactInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 9:
          setGrammarWeight(paramCodedInputStreamMicro.readDouble());
          break;
        case 16:
          setSyncedContact(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
        }
        setSource(paramCodedInputStreamMicro.readInt32());
      }
    }

    public ContactInfo setGrammarWeight(double paramDouble)
    {
      this.hasGrammarWeight = true;
      this.grammarWeight_ = paramDouble;
      return this;
    }

    public ContactInfo setSource(int paramInt)
    {
      this.hasSource = true;
      this.source_ = paramInt;
      return this;
    }

    public ContactInfo setSyncedContact(boolean paramBoolean)
    {
      this.hasSyncedContact = true;
      this.syncedContact_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasGrammarWeight())
        paramCodedOutputStreamMicro.writeDouble(1, getGrammarWeight());
      if (hasSyncedContact())
        paramCodedOutputStreamMicro.writeBool(2, getSyncedContact());
      if (hasSource())
        paramCodedOutputStreamMicro.writeInt32(3, getSource());
    }
  }

  public static final class LatencyBreakdownEvent extends MessageMicro
  {
    public static final int EVENT_FIELD_NUMBER = 1;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_END = 19;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_START = 18;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESTART_START = 27;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_END = 24;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_START = 23;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_END = 22;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_START = 21;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_END = 17;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_START = 16;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_SEARCH_PLATE_ON_DRAW_START = 20;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_STARTUP_UI_THREAD_IDLE = 32;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_END = 28;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_START = 40;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_END = 26;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_START = 25;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_CARD = 39;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW = 14;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW_COMPLETE = 15;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLBACK = 13;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLED_JS = 12;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_COMMIT = 4;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_JESR = 10;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_NONJESR = 11;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_LOGIN_COMPLETE = 5;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_JESR = 6;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_NONJESR = 7;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_JESR = 8;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_NONJESR = 9;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_CANCEL = 31;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_END = 30;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_START = 29;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB = 1;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB_SINGLE_REQUEST = 35;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CONNECTION_ERROR_FAILED = 41;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CONNECTION_ERROR_TIMEOUT = 42;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CORPORA_LOAD = 3;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_HANDLE_ACTION = 38;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_END = 34;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_START = 33;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECEIVED_ANSWER_RESPONSE = 2;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECOGNIZE = 0;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SELECT_ACTION = 37;
    public static final int LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SWITCH_QUERY = 36;
    public static final int OFFSET_MSEC_FIELD_NUMBER = 2;
    public static final int SUBLATENCY_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private int event_ = 0;
    private boolean hasEvent;
    private boolean hasOffsetMsec;
    private boolean hasSublatency;
    private int offsetMsec_ = 0;
    private int sublatency_ = 0;

    public static LatencyBreakdownEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LatencyBreakdownEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LatencyBreakdownEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LatencyBreakdownEvent)new LatencyBreakdownEvent().mergeFrom(paramArrayOfByte);
    }

    public final LatencyBreakdownEvent clear()
    {
      clearEvent();
      clearOffsetMsec();
      clearSublatency();
      this.cachedSize = -1;
      return this;
    }

    public LatencyBreakdownEvent clearEvent()
    {
      this.hasEvent = false;
      this.event_ = 0;
      return this;
    }

    public LatencyBreakdownEvent clearOffsetMsec()
    {
      this.hasOffsetMsec = false;
      this.offsetMsec_ = 0;
      return this;
    }

    public LatencyBreakdownEvent clearSublatency()
    {
      this.hasSublatency = false;
      this.sublatency_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getEvent()
    {
      return this.event_;
    }

    public int getOffsetMsec()
    {
      return this.offsetMsec_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasEvent();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getEvent());
      if (hasOffsetMsec())
        i += CodedOutputStreamMicro.computeInt32Size(2, getOffsetMsec());
      if (hasSublatency())
        i += CodedOutputStreamMicro.computeInt32Size(3, getSublatency());
      this.cachedSize = i;
      return i;
    }

    public int getSublatency()
    {
      return this.sublatency_;
    }

    public boolean hasEvent()
    {
      return this.hasEvent;
    }

    public boolean hasOffsetMsec()
    {
      return this.hasOffsetMsec;
    }

    public boolean hasSublatency()
    {
      return this.hasSublatency;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LatencyBreakdownEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setEvent(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setOffsetMsec(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
        }
        setSublatency(paramCodedInputStreamMicro.readInt32());
      }
    }

    public LatencyBreakdownEvent setEvent(int paramInt)
    {
      this.hasEvent = true;
      this.event_ = paramInt;
      return this;
    }

    public LatencyBreakdownEvent setOffsetMsec(int paramInt)
    {
      this.hasOffsetMsec = true;
      this.offsetMsec_ = paramInt;
      return this;
    }

    public LatencyBreakdownEvent setSublatency(int paramInt)
    {
      this.hasSublatency = true;
      this.sublatency_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasEvent())
        paramCodedOutputStreamMicro.writeInt32(1, getEvent());
      if (hasOffsetMsec())
        paramCodedOutputStreamMicro.writeInt32(2, getOffsetMsec());
      if (hasSublatency())
        paramCodedOutputStreamMicro.writeInt32(3, getSublatency());
    }
  }

  public static final class LatencyData extends MessageMicro
  {
    public static final int BREAKDOWN_FIELD_NUMBER = 4;
    public static final int DURATION_MSEC_FIELD_NUMBER = 1;
    public static final int FACTOR_FIELD_NUMBER = 3;
    public static final int TIMEOUT_FIELD_NUMBER = 2;
    private List<VoicesearchClientLogProto.LatencyBreakdownEvent> breakdown_ = Collections.emptyList();
    private int cachedSize = -1;
    private int durationMsec_ = 0;
    private int factor_ = 0;
    private boolean hasDurationMsec;
    private boolean hasFactor;
    private boolean hasTimeout;
    private boolean timeout_ = false;

    public static LatencyData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LatencyData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LatencyData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LatencyData)new LatencyData().mergeFrom(paramArrayOfByte);
    }

    public LatencyData addBreakdown(VoicesearchClientLogProto.LatencyBreakdownEvent paramLatencyBreakdownEvent)
    {
      if (paramLatencyBreakdownEvent == null)
        throw new NullPointerException();
      if (this.breakdown_.isEmpty())
        this.breakdown_ = new ArrayList();
      this.breakdown_.add(paramLatencyBreakdownEvent);
      return this;
    }

    public final LatencyData clear()
    {
      clearDurationMsec();
      clearTimeout();
      clearFactor();
      clearBreakdown();
      this.cachedSize = -1;
      return this;
    }

    public LatencyData clearBreakdown()
    {
      this.breakdown_ = Collections.emptyList();
      return this;
    }

    public LatencyData clearDurationMsec()
    {
      this.hasDurationMsec = false;
      this.durationMsec_ = 0;
      return this;
    }

    public LatencyData clearFactor()
    {
      this.hasFactor = false;
      this.factor_ = 0;
      return this;
    }

    public LatencyData clearTimeout()
    {
      this.hasTimeout = false;
      this.timeout_ = false;
      return this;
    }

    public VoicesearchClientLogProto.LatencyBreakdownEvent getBreakdown(int paramInt)
    {
      return (VoicesearchClientLogProto.LatencyBreakdownEvent)this.breakdown_.get(paramInt);
    }

    public int getBreakdownCount()
    {
      return this.breakdown_.size();
    }

    public List<VoicesearchClientLogProto.LatencyBreakdownEvent> getBreakdownList()
    {
      return this.breakdown_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDurationMsec()
    {
      return this.durationMsec_;
    }

    public int getFactor()
    {
      return this.factor_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDurationMsec();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getDurationMsec());
      if (hasTimeout())
        i += CodedOutputStreamMicro.computeBoolSize(2, getTimeout());
      if (hasFactor())
        i += CodedOutputStreamMicro.computeInt32Size(3, getFactor());
      Iterator localIterator = getBreakdownList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (VoicesearchClientLogProto.LatencyBreakdownEvent)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean getTimeout()
    {
      return this.timeout_;
    }

    public boolean hasDurationMsec()
    {
      return this.hasDurationMsec;
    }

    public boolean hasFactor()
    {
      return this.hasFactor;
    }

    public boolean hasTimeout()
    {
      return this.hasTimeout;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LatencyData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setDurationMsec(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setTimeout(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
          setFactor(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
        }
        VoicesearchClientLogProto.LatencyBreakdownEvent localLatencyBreakdownEvent = new VoicesearchClientLogProto.LatencyBreakdownEvent();
        paramCodedInputStreamMicro.readMessage(localLatencyBreakdownEvent);
        addBreakdown(localLatencyBreakdownEvent);
      }
    }

    public LatencyData setBreakdown(int paramInt, VoicesearchClientLogProto.LatencyBreakdownEvent paramLatencyBreakdownEvent)
    {
      if (paramLatencyBreakdownEvent == null)
        throw new NullPointerException();
      this.breakdown_.set(paramInt, paramLatencyBreakdownEvent);
      return this;
    }

    public LatencyData setDurationMsec(int paramInt)
    {
      this.hasDurationMsec = true;
      this.durationMsec_ = paramInt;
      return this;
    }

    public LatencyData setFactor(int paramInt)
    {
      this.hasFactor = true;
      this.factor_ = paramInt;
      return this;
    }

    public LatencyData setTimeout(boolean paramBoolean)
    {
      this.hasTimeout = true;
      this.timeout_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDurationMsec())
        paramCodedOutputStreamMicro.writeInt32(1, getDurationMsec());
      if (hasTimeout())
        paramCodedOutputStreamMicro.writeBool(2, getTimeout());
      if (hasFactor())
        paramCodedOutputStreamMicro.writeInt32(3, getFactor());
      Iterator localIterator = getBreakdownList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (VoicesearchClientLogProto.LatencyBreakdownEvent)localIterator.next());
    }
  }

  public static final class OnDeviceSource extends MessageMicro
  {
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasPackageName;
    private String packageName_ = "";

    public static OnDeviceSource parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new OnDeviceSource().mergeFrom(paramCodedInputStreamMicro);
    }

    public static OnDeviceSource parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (OnDeviceSource)new OnDeviceSource().mergeFrom(paramArrayOfByte);
    }

    public final OnDeviceSource clear()
    {
      clearPackageName();
      this.cachedSize = -1;
      return this;
    }

    public OnDeviceSource clearPackageName()
    {
      this.hasPackageName = false;
      this.packageName_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getPackageName()
    {
      return this.packageName_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasPackageName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPackageName());
      this.cachedSize = i;
      return i;
    }

    public boolean hasPackageName()
    {
      return this.hasPackageName;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public OnDeviceSource mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 10:
        }
        setPackageName(paramCodedInputStreamMicro.readString());
      }
    }

    public OnDeviceSource setPackageName(String paramString)
    {
      this.hasPackageName = true;
      this.packageName_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasPackageName())
        paramCodedOutputStreamMicro.writeString(1, getPackageName());
    }
  }

  public static final class ScreenTransitionData extends MessageMicro
  {
    public static final int FROM_FIELD_NUMBER = 1;
    public static final int SCREEN_ADD_CALENDAR_EVENT_CARD = 5;
    public static final int SCREEN_AT_HOME_POWER_CONTROL_CARD = 33;
    public static final int SCREEN_CONTACT_SELECT_CARD = 19;
    public static final int SCREEN_DEPRECATED_CALL_BUSINESS = 6;
    public static final int SCREEN_DEPRECATED_DIRECTIONS = 7;
    public static final int SCREEN_DEPRECATED_MAP = 9;
    public static final int SCREEN_DEPRECATED_NAVIGATION = 11;
    public static final int SCREEN_DEPRECATED_STREAMING_TEXT = 3;
    public static final int SCREEN_DEPRECATED_WEB_RESULT = 4;
    public static final int SCREEN_DICTIONARY_RESULTS_CARD = 29;
    public static final int SCREEN_DISPLAY_ANSWER_CARD = 20;
    public static final int SCREEN_DOWNLOAD_APP_CARD = 41;
    public static final int SCREEN_EMAIL_CARD = 8;
    public static final int SCREEN_FLIGHT_RESULT_CARD = 26;
    public static final int SCREEN_HELP_CARD = 42;
    public static final int SCREEN_HTML_ANSWER_CARD = 21;
    public static final int SCREEN_IMAGE_CARD = 22;
    public static final int SCREEN_MEDIA_PLAYER_CARD = 15;
    public static final int SCREEN_MESSAGE_EDITOR_CARD = 10;
    public static final int SCREEN_MULTIPLE_LOCAL_RESULTS_CARD = 25;
    public static final int SCREEN_NONE = 1;
    public static final int SCREEN_OPEN_APPLICATION_CARD = 12;
    public static final int SCREEN_OPEN_BOOK_CARD = 36;
    public static final int SCREEN_OPEN_URL_CARD = 13;
    public static final int SCREEN_PHONE_CALL_CONTACT_CARD = 14;
    public static final int SCREEN_PHONE_CALL_NUMBER_CARD = 32;
    public static final int SCREEN_PLAY_MOVIE_CARD = 35;
    public static final int SCREEN_PLAY_MUSIC_CARD = 34;
    public static final int SCREEN_POST_UPDATE_CARD = 16;
    public static final int SCREEN_PUNT_CARD = 27;
    public static final int SCREEN_RELATIONSHIP_SELECT_CARD = 39;
    public static final int SCREEN_SELF_NOTE_CARD = 17;
    public static final int SCREEN_SETTINGS = 28;
    public static final int SCREEN_SET_ALARM_CARD = 18;
    public static final int SCREEN_SET_LOCATION_REMINDER_CARD = 38;
    public static final int SCREEN_SHOW_CALENDAR_EVENT_CARD = 31;
    public static final int SCREEN_SHOW_CONTACT_INFORMATION_CARD = 37;
    public static final int SCREEN_SINGLE_LOCAL_RESULT_CARD = 24;
    public static final int SCREEN_SPEAK_NOW = 2;
    public static final int SCREEN_SPORTS_RESULTS_CARD = 30;
    public static final int SCREEN_VIDEO_CALL_CARD = 40;
    public static final int SCREEN_WEATHER_CARD = 23;
    public static final int TO_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private int from_ = 0;
    private boolean hasFrom;
    private boolean hasTo;
    private int to_ = 0;

    public static ScreenTransitionData parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ScreenTransitionData().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ScreenTransitionData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ScreenTransitionData)new ScreenTransitionData().mergeFrom(paramArrayOfByte);
    }

    public final ScreenTransitionData clear()
    {
      clearFrom();
      clearTo();
      this.cachedSize = -1;
      return this;
    }

    public ScreenTransitionData clearFrom()
    {
      this.hasFrom = false;
      this.from_ = 0;
      return this;
    }

    public ScreenTransitionData clearTo()
    {
      this.hasTo = false;
      this.to_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getFrom()
    {
      return this.from_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasFrom();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getFrom());
      if (hasTo())
        i += CodedOutputStreamMicro.computeInt32Size(2, getTo());
      this.cachedSize = i;
      return i;
    }

    public int getTo()
    {
      return this.to_;
    }

    public boolean hasFrom()
    {
      return this.hasFrom;
    }

    public boolean hasTo()
    {
      return this.hasTo;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ScreenTransitionData mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setFrom(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        setTo(paramCodedInputStreamMicro.readInt32());
      }
    }

    public ScreenTransitionData setFrom(int paramInt)
    {
      this.hasFrom = true;
      this.from_ = paramInt;
      return this;
    }

    public ScreenTransitionData setTo(int paramInt)
    {
      this.hasTo = true;
      this.to_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasFrom())
        paramCodedOutputStreamMicro.writeInt32(1, getFrom());
      if (hasTo())
        paramCodedOutputStreamMicro.writeInt32(2, getTo());
    }
  }

  public static final class TypingCorrection extends MessageMicro
  {
    public static final int RECOGNIZER_SEGMENT_INDEX_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasRecognizerSegmentIndex;
    private int recognizerSegmentIndex_ = 0;

    public static TypingCorrection parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TypingCorrection().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TypingCorrection parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TypingCorrection)new TypingCorrection().mergeFrom(paramArrayOfByte);
    }

    public final TypingCorrection clear()
    {
      clearRecognizerSegmentIndex();
      this.cachedSize = -1;
      return this;
    }

    public TypingCorrection clearRecognizerSegmentIndex()
    {
      this.hasRecognizerSegmentIndex = false;
      this.recognizerSegmentIndex_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getRecognizerSegmentIndex()
    {
      return this.recognizerSegmentIndex_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRecognizerSegmentIndex();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getRecognizerSegmentIndex());
      this.cachedSize = i;
      return i;
    }

    public boolean hasRecognizerSegmentIndex()
    {
      return this.hasRecognizerSegmentIndex;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TypingCorrection mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
        }
        setRecognizerSegmentIndex(paramCodedInputStreamMicro.readInt32());
      }
    }

    public TypingCorrection setRecognizerSegmentIndex(int paramInt)
    {
      this.hasRecognizerSegmentIndex = true;
      this.recognizerSegmentIndex_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRecognizerSegmentIndex())
        paramCodedOutputStreamMicro.writeInt32(1, getRecognizerSegmentIndex());
    }
  }

  public static final class VoiceSearchClientLog extends MessageMicro
  {
    public static final int APPLICATION_ID_FIELD_NUMBER = 6;
    public static final int APPLICATION_VERSION_FIELD_NUMBER = 8;
    public static final int APPLICATION_VERSION_NAME_FIELD_NUMBER = 16;
    public static final int BUNDLED_CLIENT_EVENTS_FIELD_NUMBER = 10;
    public static final int DEVICE_MODEL_FIELD_NUMBER = 5;
    public static final int EXPERIMENT_ID_FIELD_NUMBER = 15;
    public static final int IME_LANG_COUNT_FIELD_NUMBER = 12;
    public static final int INSTALL_ID_FIELD_NUMBER = 2;
    public static final int LOCALE_FIELD_NUMBER = 9;
    public static final int PACKAGE_ID_FIELD_NUMBER = 11;
    public static final int PAIRED_BLUETOOTH_FIELD_NUMBER = 14;
    public static final int PLATFORM_ID_FIELD_NUMBER = 3;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 4;
    public static final int REQUEST_TIME_MSEC_FIELD_NUMBER = 1;
    public static final int TRIGGER_APPLICATION_ID_FIELD_NUMBER = 7;
    public static final int VOICESEARCH_LANG_COUNT_FIELD_NUMBER = 13;
    private String applicationId_ = "";
    private String applicationVersionName_ = "";
    private String applicationVersion_ = "";
    private List<VoicesearchClientLogProto.ClientEvent> bundledClientEvents_ = Collections.emptyList();
    private int cachedSize = -1;
    private String deviceModel_ = "";
    private List<String> experimentId_ = Collections.emptyList();
    private boolean hasApplicationId;
    private boolean hasApplicationVersion;
    private boolean hasApplicationVersionName;
    private boolean hasDeviceModel;
    private boolean hasImeLangCount;
    private boolean hasInstallId;
    private boolean hasLocale;
    private boolean hasPackageId;
    private boolean hasPairedBluetooth;
    private boolean hasPlatformId;
    private boolean hasPlatformVersion;
    private boolean hasRequestTimeMsec;
    private boolean hasTriggerApplicationId;
    private boolean hasVoicesearchLangCount;
    private int imeLangCount_ = 0;
    private String installId_ = "";
    private String locale_ = "";
    private String packageId_ = "";
    private boolean pairedBluetooth_ = false;
    private String platformId_ = "";
    private String platformVersion_ = "";
    private long requestTimeMsec_ = 0L;
    private String triggerApplicationId_ = "";
    private int voicesearchLangCount_ = 0;

    public static VoiceSearchClientLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new VoiceSearchClientLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static VoiceSearchClientLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (VoiceSearchClientLog)new VoiceSearchClientLog().mergeFrom(paramArrayOfByte);
    }

    public VoiceSearchClientLog addBundledClientEvents(VoicesearchClientLogProto.ClientEvent paramClientEvent)
    {
      if (paramClientEvent == null)
        throw new NullPointerException();
      if (this.bundledClientEvents_.isEmpty())
        this.bundledClientEvents_ = new ArrayList();
      this.bundledClientEvents_.add(paramClientEvent);
      return this;
    }

    public VoiceSearchClientLog addExperimentId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.experimentId_.isEmpty())
        this.experimentId_ = new ArrayList();
      this.experimentId_.add(paramString);
      return this;
    }

    public final VoiceSearchClientLog clear()
    {
      clearRequestTimeMsec();
      clearInstallId();
      clearPackageId();
      clearPlatformId();
      clearPlatformVersion();
      clearDeviceModel();
      clearApplicationId();
      clearTriggerApplicationId();
      clearApplicationVersion();
      clearApplicationVersionName();
      clearLocale();
      clearImeLangCount();
      clearVoicesearchLangCount();
      clearPairedBluetooth();
      clearBundledClientEvents();
      clearExperimentId();
      this.cachedSize = -1;
      return this;
    }

    public VoiceSearchClientLog clearApplicationId()
    {
      this.hasApplicationId = false;
      this.applicationId_ = "";
      return this;
    }

    public VoiceSearchClientLog clearApplicationVersion()
    {
      this.hasApplicationVersion = false;
      this.applicationVersion_ = "";
      return this;
    }

    public VoiceSearchClientLog clearApplicationVersionName()
    {
      this.hasApplicationVersionName = false;
      this.applicationVersionName_ = "";
      return this;
    }

    public VoiceSearchClientLog clearBundledClientEvents()
    {
      this.bundledClientEvents_ = Collections.emptyList();
      return this;
    }

    public VoiceSearchClientLog clearDeviceModel()
    {
      this.hasDeviceModel = false;
      this.deviceModel_ = "";
      return this;
    }

    public VoiceSearchClientLog clearExperimentId()
    {
      this.experimentId_ = Collections.emptyList();
      return this;
    }

    public VoiceSearchClientLog clearImeLangCount()
    {
      this.hasImeLangCount = false;
      this.imeLangCount_ = 0;
      return this;
    }

    public VoiceSearchClientLog clearInstallId()
    {
      this.hasInstallId = false;
      this.installId_ = "";
      return this;
    }

    public VoiceSearchClientLog clearLocale()
    {
      this.hasLocale = false;
      this.locale_ = "";
      return this;
    }

    public VoiceSearchClientLog clearPackageId()
    {
      this.hasPackageId = false;
      this.packageId_ = "";
      return this;
    }

    public VoiceSearchClientLog clearPairedBluetooth()
    {
      this.hasPairedBluetooth = false;
      this.pairedBluetooth_ = false;
      return this;
    }

    public VoiceSearchClientLog clearPlatformId()
    {
      this.hasPlatformId = false;
      this.platformId_ = "";
      return this;
    }

    public VoiceSearchClientLog clearPlatformVersion()
    {
      this.hasPlatformVersion = false;
      this.platformVersion_ = "";
      return this;
    }

    public VoiceSearchClientLog clearRequestTimeMsec()
    {
      this.hasRequestTimeMsec = false;
      this.requestTimeMsec_ = 0L;
      return this;
    }

    public VoiceSearchClientLog clearTriggerApplicationId()
    {
      this.hasTriggerApplicationId = false;
      this.triggerApplicationId_ = "";
      return this;
    }

    public VoiceSearchClientLog clearVoicesearchLangCount()
    {
      this.hasVoicesearchLangCount = false;
      this.voicesearchLangCount_ = 0;
      return this;
    }

    public String getApplicationId()
    {
      return this.applicationId_;
    }

    public String getApplicationVersion()
    {
      return this.applicationVersion_;
    }

    public String getApplicationVersionName()
    {
      return this.applicationVersionName_;
    }

    public VoicesearchClientLogProto.ClientEvent getBundledClientEvents(int paramInt)
    {
      return (VoicesearchClientLogProto.ClientEvent)this.bundledClientEvents_.get(paramInt);
    }

    public int getBundledClientEventsCount()
    {
      return this.bundledClientEvents_.size();
    }

    public List<VoicesearchClientLogProto.ClientEvent> getBundledClientEventsList()
    {
      return this.bundledClientEvents_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDeviceModel()
    {
      return this.deviceModel_;
    }

    public String getExperimentId(int paramInt)
    {
      return (String)this.experimentId_.get(paramInt);
    }

    public int getExperimentIdCount()
    {
      return this.experimentId_.size();
    }

    public List<String> getExperimentIdList()
    {
      return this.experimentId_;
    }

    public int getImeLangCount()
    {
      return this.imeLangCount_;
    }

    public String getInstallId()
    {
      return this.installId_;
    }

    public String getLocale()
    {
      return this.locale_;
    }

    public String getPackageId()
    {
      return this.packageId_;
    }

    public boolean getPairedBluetooth()
    {
      return this.pairedBluetooth_;
    }

    public String getPlatformId()
    {
      return this.platformId_;
    }

    public String getPlatformVersion()
    {
      return this.platformVersion_;
    }

    public long getRequestTimeMsec()
    {
      return this.requestTimeMsec_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRequestTimeMsec();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeUInt64Size(1, getRequestTimeMsec());
      if (hasInstallId())
        i += CodedOutputStreamMicro.computeStringSize(2, getInstallId());
      if (hasPlatformId())
        i += CodedOutputStreamMicro.computeStringSize(3, getPlatformId());
      if (hasPlatformVersion())
        i += CodedOutputStreamMicro.computeStringSize(4, getPlatformVersion());
      if (hasDeviceModel())
        i += CodedOutputStreamMicro.computeStringSize(5, getDeviceModel());
      if (hasApplicationId())
        i += CodedOutputStreamMicro.computeStringSize(6, getApplicationId());
      if (hasTriggerApplicationId())
        i += CodedOutputStreamMicro.computeStringSize(7, getTriggerApplicationId());
      if (hasApplicationVersion())
        i += CodedOutputStreamMicro.computeStringSize(8, getApplicationVersion());
      if (hasLocale())
        i += CodedOutputStreamMicro.computeStringSize(9, getLocale());
      Iterator localIterator1 = getBundledClientEventsList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(10, (VoicesearchClientLogProto.ClientEvent)localIterator1.next());
      if (hasPackageId())
        i += CodedOutputStreamMicro.computeStringSize(11, getPackageId());
      if (hasImeLangCount())
        i += CodedOutputStreamMicro.computeInt32Size(12, getImeLangCount());
      if (hasVoicesearchLangCount())
        i += CodedOutputStreamMicro.computeInt32Size(13, getVoicesearchLangCount());
      if (hasPairedBluetooth())
        i += CodedOutputStreamMicro.computeBoolSize(14, getPairedBluetooth());
      int j = 0;
      Iterator localIterator2 = getExperimentIdList().iterator();
      while (localIterator2.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator2.next());
      int k = i + j + 1 * getExperimentIdList().size();
      if (hasApplicationVersionName())
        k += CodedOutputStreamMicro.computeStringSize(16, getApplicationVersionName());
      this.cachedSize = k;
      return k;
    }

    public String getTriggerApplicationId()
    {
      return this.triggerApplicationId_;
    }

    public int getVoicesearchLangCount()
    {
      return this.voicesearchLangCount_;
    }

    public boolean hasApplicationId()
    {
      return this.hasApplicationId;
    }

    public boolean hasApplicationVersion()
    {
      return this.hasApplicationVersion;
    }

    public boolean hasApplicationVersionName()
    {
      return this.hasApplicationVersionName;
    }

    public boolean hasDeviceModel()
    {
      return this.hasDeviceModel;
    }

    public boolean hasImeLangCount()
    {
      return this.hasImeLangCount;
    }

    public boolean hasInstallId()
    {
      return this.hasInstallId;
    }

    public boolean hasLocale()
    {
      return this.hasLocale;
    }

    public boolean hasPackageId()
    {
      return this.hasPackageId;
    }

    public boolean hasPairedBluetooth()
    {
      return this.hasPairedBluetooth;
    }

    public boolean hasPlatformId()
    {
      return this.hasPlatformId;
    }

    public boolean hasPlatformVersion()
    {
      return this.hasPlatformVersion;
    }

    public boolean hasRequestTimeMsec()
    {
      return this.hasRequestTimeMsec;
    }

    public boolean hasTriggerApplicationId()
    {
      return this.hasTriggerApplicationId;
    }

    public boolean hasVoicesearchLangCount()
    {
      return this.hasVoicesearchLangCount;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public VoiceSearchClientLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setRequestTimeMsec(paramCodedInputStreamMicro.readUInt64());
          break;
        case 18:
          setInstallId(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setPlatformId(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setPlatformVersion(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setDeviceModel(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setApplicationId(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setTriggerApplicationId(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setApplicationVersion(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setLocale(paramCodedInputStreamMicro.readString());
          break;
        case 82:
          VoicesearchClientLogProto.ClientEvent localClientEvent = new VoicesearchClientLogProto.ClientEvent();
          paramCodedInputStreamMicro.readMessage(localClientEvent);
          addBundledClientEvents(localClientEvent);
          break;
        case 90:
          setPackageId(paramCodedInputStreamMicro.readString());
          break;
        case 96:
          setImeLangCount(paramCodedInputStreamMicro.readInt32());
          break;
        case 104:
          setVoicesearchLangCount(paramCodedInputStreamMicro.readInt32());
          break;
        case 112:
          setPairedBluetooth(paramCodedInputStreamMicro.readBool());
          break;
        case 122:
          addExperimentId(paramCodedInputStreamMicro.readString());
          break;
        case 130:
        }
        setApplicationVersionName(paramCodedInputStreamMicro.readString());
      }
    }

    public VoiceSearchClientLog setApplicationId(String paramString)
    {
      this.hasApplicationId = true;
      this.applicationId_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setApplicationVersion(String paramString)
    {
      this.hasApplicationVersion = true;
      this.applicationVersion_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setApplicationVersionName(String paramString)
    {
      this.hasApplicationVersionName = true;
      this.applicationVersionName_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setBundledClientEvents(int paramInt, VoicesearchClientLogProto.ClientEvent paramClientEvent)
    {
      if (paramClientEvent == null)
        throw new NullPointerException();
      this.bundledClientEvents_.set(paramInt, paramClientEvent);
      return this;
    }

    public VoiceSearchClientLog setDeviceModel(String paramString)
    {
      this.hasDeviceModel = true;
      this.deviceModel_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setExperimentId(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.experimentId_.set(paramInt, paramString);
      return this;
    }

    public VoiceSearchClientLog setImeLangCount(int paramInt)
    {
      this.hasImeLangCount = true;
      this.imeLangCount_ = paramInt;
      return this;
    }

    public VoiceSearchClientLog setInstallId(String paramString)
    {
      this.hasInstallId = true;
      this.installId_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setLocale(String paramString)
    {
      this.hasLocale = true;
      this.locale_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setPackageId(String paramString)
    {
      this.hasPackageId = true;
      this.packageId_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setPairedBluetooth(boolean paramBoolean)
    {
      this.hasPairedBluetooth = true;
      this.pairedBluetooth_ = paramBoolean;
      return this;
    }

    public VoiceSearchClientLog setPlatformId(String paramString)
    {
      this.hasPlatformId = true;
      this.platformId_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setPlatformVersion(String paramString)
    {
      this.hasPlatformVersion = true;
      this.platformVersion_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setRequestTimeMsec(long paramLong)
    {
      this.hasRequestTimeMsec = true;
      this.requestTimeMsec_ = paramLong;
      return this;
    }

    public VoiceSearchClientLog setTriggerApplicationId(String paramString)
    {
      this.hasTriggerApplicationId = true;
      this.triggerApplicationId_ = paramString;
      return this;
    }

    public VoiceSearchClientLog setVoicesearchLangCount(int paramInt)
    {
      this.hasVoicesearchLangCount = true;
      this.voicesearchLangCount_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRequestTimeMsec())
        paramCodedOutputStreamMicro.writeUInt64(1, getRequestTimeMsec());
      if (hasInstallId())
        paramCodedOutputStreamMicro.writeString(2, getInstallId());
      if (hasPlatformId())
        paramCodedOutputStreamMicro.writeString(3, getPlatformId());
      if (hasPlatformVersion())
        paramCodedOutputStreamMicro.writeString(4, getPlatformVersion());
      if (hasDeviceModel())
        paramCodedOutputStreamMicro.writeString(5, getDeviceModel());
      if (hasApplicationId())
        paramCodedOutputStreamMicro.writeString(6, getApplicationId());
      if (hasTriggerApplicationId())
        paramCodedOutputStreamMicro.writeString(7, getTriggerApplicationId());
      if (hasApplicationVersion())
        paramCodedOutputStreamMicro.writeString(8, getApplicationVersion());
      if (hasLocale())
        paramCodedOutputStreamMicro.writeString(9, getLocale());
      Iterator localIterator1 = getBundledClientEventsList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(10, (VoicesearchClientLogProto.ClientEvent)localIterator1.next());
      if (hasPackageId())
        paramCodedOutputStreamMicro.writeString(11, getPackageId());
      if (hasImeLangCount())
        paramCodedOutputStreamMicro.writeInt32(12, getImeLangCount());
      if (hasVoicesearchLangCount())
        paramCodedOutputStreamMicro.writeInt32(13, getVoicesearchLangCount());
      if (hasPairedBluetooth())
        paramCodedOutputStreamMicro.writeBool(14, getPairedBluetooth());
      Iterator localIterator2 = getExperimentIdList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeString(15, (String)localIterator2.next());
      if (hasApplicationVersionName())
        paramCodedOutputStreamMicro.writeString(16, getApplicationVersionName());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.logs.VoicesearchClientLogProto
 * JD-Core Version:    0.6.2
 */