package com.google.glass.timeline;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.string;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.GlasswareMessagesLoadingTask;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class SpeakableText
{
  private static final long GET_GLASSWARE_NAME_BLOCK_MS = 1000L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;

  SpeakableText(Context paramContext)
  {
    this.context = paramContext;
  }

  @VisibleForTesting
  static String formatExtraContentDescription(Context paramContext, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return paramString2;
    return paramContext.getResources().getString(R.string.speakable_text_with_extra_context_description, new Object[] { paramString1, paramString2 });
  }

  @VisibleForTesting
  static String formatGlasswareNameDescription(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return "";
    return paramContext.getResources().getString(R.string.speakable_text_glassware_name_description, new Object[] { paramString });
  }

  private String getSpeakableTextWithContext(Context paramContext, TimelineNano.TimelineItem paramTimelineItem)
  {
    String str1 = getText(paramTimelineItem).trim();
    String str2;
    if (!TextUtils.isEmpty(paramTimelineItem.speakableType))
      if (!TextUtils.isEmpty(str1))
        str2 = formatExtraContentDescription(paramContext, paramTimelineItem.speakableType, str1);
    do
    {
      return str2;
      return paramTimelineItem.speakableType;
      if (!TextUtils.isEmpty(str1))
        return formatExtraContentDescription(paramContext, getGlasswareName(paramContext, paramTimelineItem), str1);
      boolean bool1 = TextUtils.isEmpty(paramTimelineItem.html);
      str2 = null;
      if (!bool1)
      {
        String str3 = Html.fromHtml(stripTags(paramTimelineItem.html, Arrays.asList(new String[] { "style" }))).toString();
        boolean bool2 = TextUtils.isEmpty(str3);
        str2 = null;
        if (!bool2)
          str2 = str3.replaceAll("[^a-zA-Z0-9\\s\\n]", "").trim();
      }
    }
    while ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str2.trim())));
    return formatGlasswareNameDescription(paramContext, getGlasswareName(paramContext, paramTimelineItem));
  }

  private String getSpeakableTextWithoutContext(TimelineNano.TimelineItem paramTimelineItem)
  {
    String str = getText(paramTimelineItem).trim();
    if (!TextUtils.isEmpty(str))
      return str;
    if (!TextUtils.isEmpty(paramTimelineItem.speakableType))
      return paramTimelineItem.speakableType;
    return formatGlasswareNameDescription(this.context, getGlasswareName(this.context, paramTimelineItem));
  }

  private String stripTags(String paramString, List<String> paramList)
  {
    String str1 = paramString;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      str1 = str1.replaceAll("(?i)<" + str2 + "[^+]*>[^+]*</" + str2 + ">", "");
    }
    return str1;
  }

  @VisibleForTesting
  String getGlasswareName(Context paramContext, TimelineNano.TimelineItem paramTimelineItem)
  {
    Assert.assertNotUiThread();
    try
    {
      String str = GlasswareMessagesLoadingTask.getGlasswareName(paramContext, paramTimelineItem, 1000L);
      return str;
    }
    catch (InterruptedException localInterruptedException)
    {
      logger.e(localInterruptedException, "Interrupted waiting for glassware name", new Object[0]);
      Thread.currentThread().interrupt();
    }
    return "";
  }

  public String getSpeakableText(TimelineNano.TimelineItem paramTimelineItem, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    if (paramBoolean)
      return getSpeakableTextWithContext(this.context, paramTimelineItem);
    return getSpeakableTextWithoutContext(paramTimelineItem);
  }

  String getText(TimelineNano.TimelineItem paramTimelineItem)
  {
    if (!TextUtils.isEmpty(paramTimelineItem.speakableText))
      return paramTimelineItem.speakableText;
    if (!TextUtils.isEmpty(paramTimelineItem.text))
      return paramTimelineItem.text;
    return "";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.SpeakableText
 * JD-Core Version:    0.6.2
 */