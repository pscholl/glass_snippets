package com.google.glass.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public class ShareActivityHelper
{
  public static final String EXTRA_ALLOW_VOICE_ANNOTATION = "voice_annotation";
  public static final String EXTRA_ANIMATE_TO_TIMELINE = "animateToTimelineItem";
  public static final String EXTRA_CHOSEN_SHARE_TARGET = "chosen_share_target";
  public static final String EXTRA_CONFIRMED_KEY = "confirmed_string";
  public static final String EXTRA_DISABLE_CAMERA_KEY = "disable_camera";
  public static final String EXTRA_DISABLE_SELECTION = "disable_selection";
  public static final String EXTRA_ORIGIN_LOG_DATA = "origin_log_data";
  public static final String EXTRA_PROGRESS_KEY = "progress_string";
  public static final String EXTRA_RETURNED_SHARE_TARGET = "share_target";
  public static final String EXTRA_SHARE_TARGETS_COUNT = "valid_share_target_count";
  public static final String EXTRA_SHARE_TARGETS_PREFIX = "valid_share_target";
  public static final String EXTRA_UPDATE_TIMELINE_SHARE = "update_timeline_share";

  public static final Intent getBaseShareActivityIntent(Context paramContext, Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.EDIT");
    localIntent.setClassName("com.google.glass.home", "com.google.glass.share.ShareActivity");
    localIntent.setData(paramUri);
    return localIntent;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareActivityHelper
 * JD-Core Version:    0.6.2
 */