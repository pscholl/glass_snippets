package com.google.glass.timeline;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.ProtoParser;
import com.google.glass.net.ProtoParser.Provider;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.predicates.Assert;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.ByteArrayLoader;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import com.google.glass.util.SettingsSecure;
import com.google.glass.util.StorageHelper;
import com.google.googlex.glass.common.proto.SyncNano.AttachmentGetRequest;
import com.google.googlex.glass.common.proto.SyncNano.AttachmentGetRequest.ScreenDimensions;
import com.google.googlex.glass.common.proto.SyncNano.AttachmentGetResponse;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class AttachmentHelper
{
  private static final int ATTACHMENT_COPY_MARGIN_BYTES = 4194304;
  public static final TimelineNano.Attachment EMPTY_ATTACHMENT = new TimelineNano.Attachment();
  private static final ProtoParser<SyncNano.AttachmentGetResponse> PARSER;
  private static final String PHOTOS_SERVICE_ID_PREFIX = "ps:";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;

  static
  {
    PARSER = new ProtoParser(new ProtoParser.Provider()
    {
      public SyncNano.AttachmentGetResponse provide()
      {
        return new SyncNano.AttachmentGetResponse();
      }
    });
  }

  public AttachmentHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private static boolean attachmentCreatedOnDevice(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("device:"));
  }

  public static TimelineNano.Attachment clone(TimelineNano.Attachment paramAttachment)
  {
    if (paramAttachment != null)
      try
      {
        TimelineNano.Attachment localAttachment = TimelineNano.Attachment.parseFrom(MessageNano.toByteArray(paramAttachment));
        return localAttachment;
      }
      catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
      {
        logger.e(localInvalidProtocolBufferNanoException, "Couldn't clone attachment", new Object[0]);
        throw new RuntimeException("Couldn't clone attachment");
      }
    return null;
  }

  public static String getAttachmentSource(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, TimelineNano.Attachment paramAttachment)
  {
    if (isPhotosServiceAttachment(paramAttachment))
      return TimelineHelper.getLocalTimelineItemSource(new SettingsSecure(paramContext.getContentResolver()));
    return paramTimelineItem.source;
  }

  private static File getFileForAttachment(TimelineNano.Attachment paramAttachment, CachedFilesManager paramCachedFilesManager)
  {
    Assert.assertNotUiThread();
    File localFile;
    if (!TextUtils.isEmpty(paramAttachment.clientCachePath))
    {
      localFile = new File(paramAttachment.clientCachePath);
      if (!localFile.exists());
    }
    do
    {
      return localFile;
      if (TextUtils.isEmpty(paramAttachment.id))
        break;
      String str = paramCachedFilesManager.getPath(CachedFilesManager.Type.ATTACHMENT, paramAttachment.id);
      if (str == null)
        break;
      localFile = new File(str);
    }
    while (localFile.exists());
    return null;
  }

  public static boolean isPhotosServiceAttachment(TimelineNano.Attachment paramAttachment)
  {
    if ((paramAttachment.id != null) && (paramAttachment.id.startsWith("ps:")));
    while (((paramAttachment.clientCachePath != null) && (paramAttachment.clientCachePath.startsWith(GlassApplication.DCIM_DIRECTORY))) || (attachmentCreatedOnDevice(paramAttachment.source)))
      return true;
    return false;
  }

  public static List<TimelineNano.Attachment> mergeAttachments(List<TimelineNano.Attachment> paramList1, List<TimelineNano.Attachment> paramList2)
  {
    ArrayList localArrayList = new ArrayList(Math.max(paramList1.size(), paramList2.size()));
    int i = 0;
    while ((i < paramList1.size()) && (i < paramList2.size()))
    {
      Object localObject = (TimelineNano.Attachment)paramList1.get(i);
      TimelineNano.Attachment localAttachment = (TimelineNano.Attachment)paramList2.get(i);
      if ((localObject == EMPTY_ATTACHMENT) || (localAttachment == EMPTY_ATTACHMENT))
      {
        i++;
      }
      else
      {
        if (!TextUtils.isEmpty(((TimelineNano.Attachment)localObject).id));
        while (true)
        {
          localArrayList.add(localObject);
          break;
          localObject = localAttachment;
        }
      }
    }
    if (paramList1.size() < paramList2.size())
      localArrayList.addAll(paramList2.subList(paramList1.size(), paramList2.size()));
    while (localArrayList.remove(EMPTY_ATTACHMENT))
    {
      logger.i("Removed one instance of an empty attachment.", new Object[0]);
      continue;
      if (paramList1.size() > paramList2.size())
        localArrayList.addAll(paramList1.subList(paramList2.size(), paramList1.size()));
    }
    return localArrayList;
  }

  public static boolean shouldDeleteLocalAttachment(TimelineNano.TimelineItem paramTimelineItem, TimelineNano.Attachment paramAttachment)
  {
    return (paramAttachment.clientCachePath != null) && (paramAttachment.clientCachePath.startsWith(GlassApplication.DCIM_DIRECTORY)) && (paramTimelineItem.source != null) && (paramTimelineItem.source.startsWith("device:"));
  }

  public boolean cloneAttachments(TimelineNano.TimelineItem paramTimelineItem)
  {
    Assert.assertNotUiThread();
    if (ArrayUtils.isEmpty(paramTimelineItem.attachment))
      return true;
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    int i = 0;
    long l1 = 0L;
    for (TimelineNano.Attachment localAttachment2 : paramTimelineItem.attachment)
      if (!isPhotosServiceAttachment(localAttachment2))
      {
        File localFile2 = getFileForAttachment(localAttachment2, localCachedFilesManager);
        if (localFile2 != null)
        {
          i++;
          l1 += localFile2.length();
        }
      }
    StorageHelper localStorageHelper = new StorageHelper(this.context);
    long l2 = l1 + 4194304L;
    long l3 = localStorageHelper.getAvailableBytesInExternalStorage();
    if (l3 < l2)
    {
      long l5 = l2 - l3;
      FormattingLogger localFormattingLogger6 = logger;
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Long.valueOf(l5);
      localFormattingLogger6.v("Trying to trim %s bytes from CachedFilesManager", arrayOfObject6);
      if (!localCachedFilesManager.trimBySize(l5))
      {
        FormattingLogger localFormattingLogger7 = logger;
        Object[] arrayOfObject7 = new Object[3];
        arrayOfObject7[0] = Long.valueOf(l1);
        arrayOfObject7[1] = paramTimelineItem.id;
        arrayOfObject7[2] = Long.valueOf(localStorageHelper.getAvailableBytesInExternalStorage());
        localFormattingLogger7.w("Insufficient space to copy %s bytes of attachments for item %s, Free bytes: %s", arrayOfObject7);
        localStorageHelper.showFullStorageDialog();
        return false;
      }
    }
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(i);
    arrayOfObject1[1] = Long.valueOf(l1);
    arrayOfObject1[2] = paramTimelineItem.id;
    localFormattingLogger1.i("Copying %s attachments, %s bytes for %s", arrayOfObject1);
    long l4 = SystemClock.elapsedRealtime();
    ArrayList localArrayList = new ArrayList(Arrays.asList(paramTimelineItem.attachment));
    int m = 0;
    int n = localArrayList.size();
    if (m < n)
    {
      TimelineNano.Attachment localAttachment1 = (TimelineNano.Attachment)localArrayList.get(m);
      if (isPhotosServiceAttachment(localAttachment1))
      {
        FormattingLogger localFormattingLogger5 = logger;
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = localAttachment1.id;
        localFormattingLogger5.i("Not copying photo service attachment %s", arrayOfObject5);
      }
      while (true)
      {
        m++;
        break;
        File localFile1 = getFileForAttachment(localAttachment1, localCachedFilesManager);
        if (localFile1 == null)
          break label527;
        String str = paramTimelineItem.id + "-" + m;
        if (!localCachedFilesManager.save(CachedFilesManager.Type.SHARE, str, FileSaver.newSaver(localFile1)))
          break label464;
        localAttachment1.clientCachePath = localCachedFilesManager.getPath(CachedFilesManager.Type.SHARE, str);
        localAttachment1.id = null;
      }
      label464: FormattingLogger localFormattingLogger4 = logger;
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = localAttachment1.id;
      arrayOfObject4[1] = paramTimelineItem.id;
      localFormattingLogger4.w("Failed to copy attachment %s on %s", arrayOfObject4);
      int i1 = m - 1;
      localArrayList.remove(m);
      while (true)
      {
        m = i1;
        break;
        label527: FormattingLogger localFormattingLogger3 = logger;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = localAttachment1.id;
        arrayOfObject3[1] = paramTimelineItem.id;
        localFormattingLogger3.w("Could not find attachment %s on %s", arrayOfObject3);
        i1 = m - 1;
        localArrayList.remove(m);
      }
    }
    paramTimelineItem.attachment = ((TimelineNano.Attachment[])localArrayList.toArray(new TimelineNano.Attachment[0]));
    FormattingLogger localFormattingLogger2 = logger;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Long.valueOf(SystemClock.elapsedRealtime() - l4);
    localFormattingLogger2.d("Copied attachments in %s ms", arrayOfObject2);
    return true;
  }

  public byte[] getAttachmentBytes(String paramString, CachedFilesManager.Type paramType, TimelineNano.Attachment paramAttachment)
    throws InterruptedException
  {
    Assert.assertNotUiThread();
    if ((!TextUtils.isEmpty(paramAttachment.clientCachePath)) && (new File(paramAttachment.clientCachePath).exists()));
    CachedFilesManager localCachedFilesManager;
    for (String str = paramAttachment.clientCachePath; ; str = localCachedFilesManager.getPath(paramType, paramAttachment.id))
    {
      boolean bool1 = TextUtils.isEmpty(str);
      byte[] arrayOfByte1 = null;
      if (!bool1)
        arrayOfByte1 = (byte[])CachedFilesManager.getSharedInstance().load(str, new CachedFilesManager.ByteArrayLoader());
      boolean bool2;
      do
      {
        return arrayOfByte1;
        localCachedFilesManager = CachedFilesManager.getSharedInstance();
        if (localCachedFilesManager.contains(paramType, paramString))
          break;
        bool2 = TextUtils.isEmpty(paramAttachment.id);
        arrayOfByte1 = null;
      }
      while (bool2);
      byte[] arrayOfByte2 = getAttachmentFromServer(paramAttachment.id);
      if ((arrayOfByte2 == null) || (arrayOfByte2.length <= 0))
        break;
      localCachedFilesManager.save(paramType, paramString, FileSaver.newSaver(arrayOfByte2));
    }
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramAttachment.id;
    localFormattingLogger.e("Failed to get attachment from server: %s", arrayOfObject);
    return null;
  }

  public byte[] getAttachmentFromServer(String paramString)
    throws InterruptedException
  {
    logger.i("Requesting attachment %s from server.", new Object[] { paramString });
    SyncNano.AttachmentGetRequest localAttachmentGetRequest = new SyncNano.AttachmentGetRequest();
    localAttachmentGetRequest.attachmentId = paramString;
    WindowManager localWindowManager = (WindowManager)this.context.getSystemService("window");
    if (localWindowManager != null)
    {
      Display localDisplay = localWindowManager.getDefaultDisplay();
      SyncNano.AttachmentGetRequest.ScreenDimensions localScreenDimensions = new SyncNano.AttachmentGetRequest.ScreenDimensions();
      localScreenDimensions.widthPixels = Integer.valueOf(localDisplay.getWidth());
      localScreenDimensions.heightPixels = Integer.valueOf(localDisplay.getHeight());
      localAttachmentGetRequest.screenDimensions = localScreenDimensions;
    }
    ProtoResponse localProtoResponse = getRequestDispatcher().blockingDispatch(ServerConstants.Action.ATTACHMENT_GET, localAttachmentGetRequest, PARSER);
    if ((localProtoResponse == null) || (!localProtoResponse.isSuccess()));
    SyncNano.AttachmentGetResponse localAttachmentGetResponse;
    do
    {
      return null;
      localAttachmentGetResponse = (SyncNano.AttachmentGetResponse)localProtoResponse.getResponseProto();
    }
    while (localAttachmentGetResponse.responseCode != 0);
    byte[] arrayOfByte = localAttachmentGetResponse.content;
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(ArrayUtils.length(arrayOfByte));
    localFormattingLogger.w("Successfully get attachment from server: %s, %s bytes.", arrayOfObject);
    return arrayOfByte;
  }

  @VisibleForTesting
  ProtoRequestDispatcher getRequestDispatcher()
  {
    return GlassApplication.from(this.context).getPooledRequestDispatcher();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.AttachmentHelper
 * JD-Core Version:    0.6.2
 */