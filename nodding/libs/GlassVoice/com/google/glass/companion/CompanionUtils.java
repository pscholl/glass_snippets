package com.google.glass.companion;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.string;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineHelper.Update;
import com.google.glass.util.HashUtil;
import com.google.glass.util.PhoneNumberUtils;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.NotificationConfig;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CompanionUtils
{
  private static final long NOTIFY_LATENCY_MS = 43200000L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static TimelineNano.TimelineItem appendGlassSmsSignature(Context paramContext, TimelineNano.TimelineItem paramTimelineItem)
  {
    String str1 = paramTimelineItem.text;
    if (str1 == null)
    {
      logger.w("Couldn't append Glass signature to null text", new Object[0]);
      return paramTimelineItem;
    }
    String str2 = paramContext.getString(R.string.timeline_sms_signature);
    String str3 = paramContext.getString(R.string.timeline_sms_signature_format, new Object[] { str1, str2 });
    TimelineNano.TimelineItem localTimelineItem = TimelineHelper.clone(paramTimelineItem);
    localTimelineItem.text = str3;
    return localTimelineItem;
  }

  @VisibleForTesting
  public static String generateSmsSpeakableText(String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
    {
      localStringBuilder.append(paramString2);
      localStringBuilder.append(".");
    }
    while (true)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("From: ");
      if (TextUtils.isEmpty(paramString1))
        paramString1 = "Unknown person";
      localStringBuilder.append(paramString1);
      localStringBuilder.append(".");
      if (!TextUtils.isEmpty(paramString2))
      {
        localStringBuilder.append(" Message: ");
        localStringBuilder.append(paramString2);
        localStringBuilder.append(".");
      }
    }
  }

  public static TimelineNano.TimelineItem getCompanionSmsTimelineItem(Context paramContext, String paramString1, String paramString2, String paramString3, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    TimelineNano.TimelineItem localTimelineItem = TimelineHelper.createTimelineItem(paramContext, Integer.valueOf(2), "companion:", new SettingsSecure(paramContext.getContentResolver()));
    TimelineNano.Entity localEntity = new TimelineNano.Entity();
    localEntity.displayName = paramString2;
    StringBuilder localStringBuilder = new StringBuilder().append("companion:");
    String str;
    ArrayList localArrayList;
    if (paramBoolean1)
    {
      str = "com.android.mms";
      localEntity.source = str;
      localEntity.id = paramString3;
      localEntity.phoneNumber = paramString3;
      if (!paramBoolean2)
        break label307;
      if (localTimelineItem.shareTarget != null)
        break label287;
      localArrayList = new ArrayList();
      label110: localArrayList.add(localEntity);
      localTimelineItem.shareTarget = ((TimelineNano.Entity[])localArrayList.toArray(new TimelineNano.Entity[0]));
    }
    while (true)
    {
      localTimelineItem.creationTime = Long.valueOf(paramLong);
      localTimelineItem.displayTime = Long.valueOf(paramLong);
      localTimelineItem.modifiedTime = Long.valueOf(paramLong);
      localTimelineItem.text = paramString1;
      localTimelineItem.speakableType = paramContext.getResources().getString(R.string.sms_speakable_type);
      localTimelineItem.speakableText = generateSmsSpeakableText(paramString2, paramString1, paramBoolean2);
      TimelineHelper.addMenuItem(localTimelineItem, 2);
      TimelineHelper.addMenuItem(localTimelineItem, 5);
      TimelineHelper.addMenuItem(localTimelineItem, 8);
      TimelineHelper.addMenuItem(localTimelineItem, 3);
      if ((!paramBoolean2) && (43200000L + paramLong > System.currentTimeMillis()))
      {
        TimelineNano.NotificationConfig localNotificationConfig = new TimelineNano.NotificationConfig();
        localNotificationConfig.level = 10;
        localNotificationConfig.deliveryTime = Long.valueOf(1L);
        localTimelineItem.notification = localNotificationConfig;
      }
      return localTimelineItem;
      str = "com.google.android.apps.googlevoice";
      break;
      label287: localArrayList = new ArrayList(Arrays.asList(localTimelineItem.shareTarget));
      break label110;
      label307: localTimelineItem.creator = localEntity;
    }
  }

  public static String getComponentFromSource(String paramString)
  {
    if ((paramString != null) && (paramString.startsWith("companion:")))
      return paramString.substring("companion:".length());
    logger.v("not a companion component.", new Object[0]);
    return null;
  }

  public static int getMajorVersion(int paramInt)
  {
    return paramInt & 0xFF;
  }

  public static int getMinorVersion(int paramInt)
  {
    return 0xFF & paramInt >> 16;
  }

  public static String getSmsBundleId(Context paramContext, String paramString)
  {
    return HashUtil.hashPiiField(paramContext, PhoneNumberUtils.formatPhoneNumberForDisplay(paramString));
  }

  public static TimelineNano.Entity getSmsCreator(Context paramContext)
  {
    SettingsSecure localSettingsSecure = new SettingsSecure(paramContext.getContentResolver());
    TimelineNano.Entity localEntity1 = EntityHelper.getSharedInstance().getSelfEntity();
    if (localEntity1 != null);
    for (TimelineNano.Entity localEntity2 = EntityHelper.clone(localEntity1); ; localEntity2 = new TimelineNano.Entity())
    {
      localEntity2.source = TimelineHelper.getLocalTimelineItemSource(localSettingsSecure);
      return localEntity2;
    }
  }

  public static boolean sendTimelineItem(Context paramContext, RemoteCompanionProxy paramRemoteCompanionProxy, TimelineNano.TimelineItem paramTimelineItem)
  {
    TimelineNano.TimelineItem localTimelineItem = appendGlassSmsSignature(paramContext, paramTimelineItem);
    Proto.Envelope localEnvelope = CompanionMessagingUtil.newEnvelope();
    if (localEnvelope.timelineItem == null);
    ArrayList localArrayList;
    for (localEnvelope.timelineItem = new TimelineNano.TimelineItem[] { localTimelineItem }; ; localEnvelope.timelineItem = ((TimelineNano.TimelineItem[])localArrayList.toArray(new TimelineNano.TimelineItem[0])))
    {
      return paramRemoteCompanionProxy.sendCompanionMessage(localEnvelope);
      localArrayList = new ArrayList(Arrays.asList(localEnvelope.timelineItem));
      localArrayList.add(localTimelineItem);
    }
  }

  public static TimelineNano.TimelineItem stripGlassSmsSignature(Context paramContext, TimelineNano.TimelineItem paramTimelineItem)
  {
    String str1 = paramTimelineItem.text;
    if (str1 == null)
      logger.w("Couldn't strip Glass signature from null text", new Object[0]);
    String str2;
    do
    {
      return paramTimelineItem;
      str2 = paramContext.getString(R.string.timeline_sms_signature);
    }
    while (!str1.endsWith(str2));
    paramTimelineItem.text = str1.substring(0, str1.length() - str2.length());
    return paramTimelineItem;
  }

  public static void updateCompanionSyncStatus(final Context paramContext, final String paramString, final int paramInt, TimelineHelper paramTimelineHelper, boolean paramBoolean)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    localFormattingLogger.i("Updating sync status of item %s to %s", arrayOfObject);
    TimelineHelper.Update local1 = new TimelineHelper.Update()
    {
      public TimelineNano.TimelineItem onExecute()
      {
        TimelineNano.TimelineItem localTimelineItem = this.val$timelineHelper.queryTimelineItem(paramContext.getContentResolver(), paramString);
        localTimelineItem.companionSyncStatus = paramInt;
        return this.val$timelineHelper.updateTimelineItem(paramContext, localTimelineItem, null, false, false);
      }
    };
    if (paramBoolean)
    {
      paramTimelineHelper.atomicUpdateTimelineItemAsync(local1);
      return;
    }
    paramTimelineHelper.atomicUpdateTimelineItem(local1);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.CompanionUtils
 * JD-Core Version:    0.6.2
 */