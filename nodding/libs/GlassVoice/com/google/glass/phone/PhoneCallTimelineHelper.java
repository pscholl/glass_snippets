package com.google.glass.phone;

import android.content.Context;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.common.R.string;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.userevent.UserEventAction.TimelineItemInserted;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver.Saver;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.MenuItem;
import com.google.googlex.glass.common.proto.TimelineNano.MenuValue;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

public class PhoneCallTimelineHelper
{
  public static final String PHONE_CALL_ATTACHMENT_FILE_NAME = "%s.call";
  private static final String TAG = PhoneCallTimelineHelper.class.getSimpleName();
  private static final long WAKE_LOCK_TIMEOUT_MS = 10000L;
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final Context context;
  private final TimelineHelper timelineHelper = new TimelineHelper();

  public PhoneCallTimelineHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private void addMenuItems(TimelineNano.TimelineItem paramTimelineItem, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString))
    {
      TimelineNano.MenuItem localMenuItem1 = new TimelineNano.MenuItem();
      localMenuItem1.action = 8;
      localMenuItem1.id = paramString;
      localArrayList.add(localMenuItem1);
      TimelineNano.MenuValue localMenuValue = new TimelineNano.MenuValue();
      localMenuValue.displayName = this.context.getString(R.string.phone_call_reply_menu_display_name);
      localMenuValue.state = 0;
      TimelineNano.MenuItem localMenuItem2 = new TimelineNano.MenuItem();
      localMenuItem2.action = 2;
      localMenuItem2.value = new TimelineNano.MenuValue[] { localMenuValue };
      localArrayList.add(localMenuItem2);
    }
    TimelineNano.MenuItem localMenuItem3 = new TimelineNano.MenuItem();
    localMenuItem3.action = 3;
    localArrayList.add(localMenuItem3);
    TimelineHelper.addMenuItems(paramTimelineItem, localArrayList);
  }

  @VisibleForTesting
  public static TimelineNano.Attachment createAttachment(String paramString)
  {
    TimelineNano.Attachment localAttachment = new TimelineNano.Attachment();
    localAttachment.contentType = "application/vnd.google-glass.phone-call-proto";
    localAttachment.clientCachePath = paramString;
    return localAttachment;
  }

  @VisibleForTesting
  TimelineNano.TimelineItem createTimelineItem()
  {
    TimelineNano.TimelineItem localTimelineItem = this.timelineHelper.createTimelineItem(this.context, new SettingsSecure(this.context.getContentResolver()));
    localTimelineItem.sourceType = 2;
    localTimelineItem.viewType = 6;
    return localTimelineItem;
  }

  @VisibleForTesting
  protected String formatDuration(long paramLong)
  {
    long l1 = 0L;
    long l2 = 0L;
    long l3 = paramLong / 1000L;
    if (l3 >= 60L)
    {
      l2 = l3 / 60L;
      l3 -= 60L * l2;
    }
    long l4 = l3;
    if (l2 >= 60L)
    {
      l1 = l2 / 60L;
      l2 -= 60L * l1;
    }
    if (l1 > 0L)
    {
      Context localContext3 = this.context;
      int k = R.string.phone_call_duration_hours_minutes_seconds;
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Long.valueOf(l1);
      arrayOfObject3[1] = Long.valueOf(l2);
      arrayOfObject3[2] = Long.valueOf(l4);
      return localContext3.getString(k, arrayOfObject3);
    }
    if (l2 > 0L)
    {
      Context localContext2 = this.context;
      int j = R.string.phone_call_duration_minutes_seconds;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(l2);
      arrayOfObject2[1] = Long.valueOf(l4);
      return localContext2.getString(j, arrayOfObject2);
    }
    Context localContext1 = this.context;
    int i = R.string.phone_call_duration_seconds;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Long.valueOf(l4);
    return localContext1.getString(i, arrayOfObject1);
  }

  public String getNameFromEntity(TimelineNano.Entity paramEntity)
  {
    TimelineNano.Entity localEntity = sanitizeEntity(paramEntity);
    if (!TextUtils.isEmpty(EntityHelper.getDisplayName(localEntity)))
      return EntityHelper.getDisplayName(localEntity);
    if (!TextUtils.isEmpty(localEntity.phoneNumber))
      return localEntity.phoneNumber;
    return this.context.getString(R.string.phone_call_unknown_caller);
  }

  @VisibleForTesting
  protected TimelineHelper getTimelineHelper()
  {
    return new TimelineHelper();
  }

  @VisibleForTesting
  protected TimelineNano.Entity getUnkownEntity()
  {
    TimelineNano.Entity localEntity = new TimelineNano.Entity();
    localEntity.displayName = this.context.getString(R.string.phone_call_unknown_caller);
    return localEntity;
  }

  public void insertCallAsync(final PhoneCall paramPhoneCall)
  {
    new AsyncTask()
    {
      PowerManager.WakeLock wakeLock;

      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        FormattingLogger localFormattingLogger = PhoneCallTimelineHelper.logger;
        Object[] arrayOfObject1 = new Object[1];
        String str1;
        TimelineNano.TimelineItem localTimelineItem;
        if (paramPhoneCall.isIncomingCall())
        {
          str1 = "incoming";
          arrayOfObject1[0] = str1;
          localFormattingLogger.d("Inserting an %s call item.", arrayOfObject1);
          localTimelineItem = PhoneCallTimelineHelper.this.createTimelineItem();
          TimelineNano.Entity localEntity1 = PhoneCallTimelineHelper.this.sanitizeEntity(paramPhoneCall.getCallerId());
          localTimelineItem.creator = localEntity1;
          String str2 = paramPhoneCall.getPhoneNumber();
          if (TextUtils.isEmpty(str2))
            str2 = localEntity1.phoneNumber;
          if (!TextUtils.isEmpty(str2))
          {
            TimelineNano.Entity localEntity2 = EntityHelper.clone(localEntity1);
            localEntity2.id = str2;
            localEntity2.phoneNumber = str2;
            localEntity2.source = "companion:com.google.glass.companion.sms";
            TimelineHelper.addShareTarget(localTimelineItem, localEntity2);
          }
          PhoneCallTimelineHelper.this.addMenuItems(localTimelineItem, str2);
          if (!paramPhoneCall.isMissedCall())
            break label307;
          PhoneCallTimelineHelper.logger.d("This is a missed call.", new Object[0]);
        }
        label307: Context localContext;
        int i;
        Object[] arrayOfObject2;
        for (String str3 = PhoneCallTimelineHelper.this.context.getString(R.string.phone_call_missed_call); ; str3 = localContext.getString(i, arrayOfObject2))
        {
          localTimelineItem.text = str3;
          CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Long.valueOf(System.currentTimeMillis());
          String str4 = String.format("%s.call", arrayOfObject3);
          final String str5 = paramPhoneCall.toString();
          localCachedFilesManager.save(CachedFilesManager.Type.ATTACHMENT, str4, new FileSaver.Saver()
          {
            public long getEstimatedSizeBytes()
            {
              return str5.length();
            }

            public void save(OutputStream paramAnonymous2OutputStream)
              throws IOException
            {
              paramAnonymous2OutputStream.write(str5.getBytes(Charset.forName("UTF-8")));
            }
          });
          TimelineHelper.addAttachment(localTimelineItem, PhoneCallTimelineHelper.createAttachment(localCachedFilesManager.getPath(CachedFilesManager.Type.ATTACHMENT, str4)));
          PhoneCallTimelineHelper.this.getTimelineHelper().insertTimelineItem(PhoneCallTimelineHelper.this.context.getApplicationContext(), localTimelineItem, UserEventAction.TimelineItemInserted.PHONE_CALL, null);
          return null;
          str1 = "outgoing";
          break;
          localContext = PhoneCallTimelineHelper.this.context;
          i = R.string.phone_call_total_time;
          arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = PhoneCallTimelineHelper.this.formatDuration(paramPhoneCall.getCallRunTime());
        }
      }

      protected void onPostExecute(Void paramAnonymousVoid)
      {
        super.onPostExecute(paramAnonymousVoid);
        if ((this.wakeLock != null) && (this.wakeLock.isHeld()))
        {
          PhoneCallTimelineHelper.logger.d("Releasing wake lock.", new Object[0]);
          this.wakeLock.release();
        }
      }

      protected void onPreExecute()
      {
        super.onPreExecute();
        PhoneCallTimelineHelper.logger.d("Acquiring wake lock.", new Object[0]);
        this.wakeLock = ((PowerManager)PhoneCallTimelineHelper.this.context.getSystemService("power")).newWakeLock(1, PhoneCallTimelineHelper.TAG);
        this.wakeLock.acquire(10000L);
      }
    }
    .executeOnExecutor(AsyncThreadExecutorManager.getSerialExecutor(), new Void[0]);
  }

  @VisibleForTesting
  protected TimelineNano.Entity sanitizeEntity(TimelineNano.Entity paramEntity)
  {
    if ((paramEntity != null) && ((!TextUtils.isEmpty(paramEntity.displayName)) || (!TextUtils.isEmpty(paramEntity.phoneNumber))))
      return paramEntity;
    return getUnkownEntity();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCallTimelineHelper
 * JD-Core Version:    0.6.2
 */