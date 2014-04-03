package com.x.google.masf.services;

public abstract interface MobileVideoEventInfo
{
  public static final int ACTION = 1;
  public static final int ACTION_TYPE_HEAT_MAP = 20;
  public static final int ACTION_TYPE_INVOCATION_ERROR = 17;
  public static final int ACTION_TYPE_INVOCATION_REGISTRATION_ERROR = 19;
  public static final int ACTION_TYPE_INVOCATION_REGISTRATION_SUCCESS = 18;
  public static final int ACTION_TYPE_INVOCATION_SUCCESS = 16;
  public static final int ACTION_TYPE_PLAY_ENDED = 3;
  public static final int ACTION_TYPE_PLAY_ENDED_EXCEPTION = 13;
  public static final int ACTION_TYPE_PLAY_RESTARTED = 12;
  public static final int ACTION_TYPE_PLAY_SELECTED = 1;
  public static final int ACTION_TYPE_PLAY_STARTED = 2;
  public static final int ACTION_TYPE_PLAY_STARTUP_CANCELLED = 10;
  public static final int ACTION_TYPE_PLAY_STARTUP_EXCEPTION = 11;
  public static final int ACTION_TYPE_SHARE_TO_YT_CONTACT = 15;
  public static final int ACTION_TYPE_SHARE_VIA_EMAIL = 14;
  public static final int ACTION_TYPE_STARTUP = 4;
  public static final int ACTION_TYPE_UPLOAD_CANCELLED = 7;
  public static final int ACTION_TYPE_UPLOAD_COMPLETED = 9;
  public static final int ACTION_TYPE_UPLOAD_FAILED = 8;
  public static final int ACTION_TYPE_UPLOAD_STARTED = 6;
  public static final int ACTION_TYPE_USER_REQUEST_LATENCY = 5;
  public static final int AVG_BYTES_PER_SECOND = 10;
  public static final int AVG_US_BETWEEN_FRAMES = 9;
  public static final int BEARER = 7;
  public static final int BEARER_TYPE_MOBILE_NETWORK = 1;
  public static final int BEARER_TYPE_WIFI = 2;
  public static final int CATEGORY = 2;
  public static final int DURATION = 4;
  public static final int ERROR_CODE = 8;
  public static final int FORMAT = 6;
  public static final int HEAT_MAP = 13;
  public static final int NUM_BUFFERING_PAUSES = 11;
  public static final int POSITION = 3;
  public static final int TOTAL_BUFFERING_MS = 12;
  public static final int UPLOAD_ID = 5;
  public static final int VIDEO_CATEGORY_FAVORITES = 7;
  public static final int VIDEO_CATEGORY_FEATURED_VIDEO = 12;
  public static final int VIDEO_CATEGORY_INBOX = 11;
  public static final int VIDEO_CATEGORY_INVOCATION_EMBEDDED = 15;
  public static final int VIDEO_CATEGORY_INVOCATION_WATCH = 14;
  public static final int VIDEO_CATEGORY_INVOCATION_YOUTUBE_PROTOCOL = 13;
  public static final int VIDEO_CATEGORY_MOST_RECENT = 5;
  public static final int VIDEO_CATEGORY_MOST_VIEWED = 3;
  public static final int VIDEO_CATEGORY_MY_VIDEOS = 10;
  public static final int VIDEO_CATEGORY_PLAYLIST = 8;
  public static final int VIDEO_CATEGORY_RECENTLY_FEATURED = 6;
  public static final int VIDEO_CATEGORY_RELATED_RESULTS = 2;
  public static final int VIDEO_CATEGORY_SEARCH_RESULTS = 1;
  public static final int VIDEO_CATEGORY_SUBSCRIPTION = 9;
  public static final int VIDEO_CATEGORY_TOP_RATED = 4;
  public static final int VIDEO_FORMAT_FLV_320 = 3;
  public static final int VIDEO_FORMAT_MP4_200 = 2;
  public static final int VIDEO_FORMAT_MP4_80 = 1;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.MobileVideoEventInfo
 * JD-Core Version:    0.6.2
 */