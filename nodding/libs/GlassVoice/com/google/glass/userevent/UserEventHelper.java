package com.google.glass.userevent;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableListMultimap.Builder;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.logging.GlassExtensionsNano.GlassUserEventProto;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.IntentSender;
import com.google.protobuf.nano.MessageNano;
import java.util.Iterator;
import java.util.concurrent.Executor;

public class UserEventHelper
{
  private static final char EVENT_TUPLE_ASSIGNMENT = '=';
  private static final char EVENT_TUPLE_SEPARATOR = '|';
  private static final Splitter EVENT_TUPLE_SPLITTER = Splitter.on('|').omitEmptyStrings();
  public static final String EXTRA_CHECKIN = "checkin";
  public static final String EXTRA_FORCE_FLUSH = "force_flush";
  public static final String EXTRA_FORCE_SAVE_TO_DISK = "force_save_to_disk";
  public static final String EXTRA_USER_EVENT = "user_event";
  public static final String NON_ASSIGNMENT_ITEM_KEY = String.valueOf('=');
  private static final CharMatcher RESERVED_CHAR_MATCHER;
  public static final String USER_EVENT_SERVICE = "com.google.glass.logging.UserEventService";
  public static final String USER_EVENT_SERVICE_PACKAGE = "com.google.glass.logging";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final boolean loggingEnabled;

  static
  {
    RESERVED_CHAR_MATCHER = CharMatcher.anyOf(Character.toString('=') + Character.toString('|'));
  }

  public UserEventHelper(Context paramContext)
  {
  }

  UserEventHelper(Context paramContext, boolean paramBoolean)
  {
    this.context = paramContext;
    this.loggingEnabled = paramBoolean;
  }

  public static void appendData(StringBuilder paramStringBuilder, String paramString)
  {
    if ((paramString == null) || (paramString.isEmpty()))
      return;
    ensureEndsWithSeparator(paramStringBuilder);
    if (paramString.charAt(0) == '|')
      paramStringBuilder.append(paramString, 1, paramString.length());
    while (true)
    {
      ensureEndsWithSeparator(paramStringBuilder);
      return;
      paramStringBuilder.append(paramString);
    }
  }

  public static void appendPair(StringBuilder paramStringBuilder, String paramString, Object paramObject)
  {
    ensureEndsWithSeparator(paramStringBuilder);
    paramStringBuilder.append(sanitize(paramString));
    paramStringBuilder.append('=');
    paramStringBuilder.append(sanitize(paramObject));
    paramStringBuilder.append('|');
  }

  private void checkinInternal()
  {
    Assert.assertNotUiThread();
    logger.i("Sending checkin.", new Object[0]);
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.UserEventService");
    localIntent.putExtra("checkin", true);
    this.context.startService(localIntent);
  }

  public static String createEventTuple(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return createEventTupleBuilder(paramString, paramObject, paramArrayOfObject).toString();
  }

  public static StringBuilder createEventTupleBuilder(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    Preconditions.checkNotNull(paramString, "null key");
    if (paramArrayOfObject.length % 2 == 0);
    StringBuilder localStringBuilder;
    for (boolean bool1 = true; ; bool1 = false)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramArrayOfObject.length);
      Preconditions.checkArgument(bool1, "invalid number of key/value arguments (%s", arrayOfObject1);
      localStringBuilder = new StringBuilder();
      appendPair(localStringBuilder, paramString, paramObject);
      for (int i = 0; i < -1 + paramArrayOfObject.length; i += 2)
      {
        Object localObject1 = paramArrayOfObject[i];
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i);
        Object localObject2 = Preconditions.checkNotNull(localObject1, "null key (vararg %s)", arrayOfObject2);
        boolean bool2 = localObject2 instanceof String;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(i);
        Preconditions.checkArgument(bool2, "key (vararg %s) is not a String.", arrayOfObject3);
        appendPair(localStringBuilder, (String)localObject2, paramArrayOfObject[(i + 1)]);
      }
    }
    return localStringBuilder;
  }

  public static GlassExtensionsNano.GlassUserEventProto createProto(UserEventAction paramUserEventAction, String paramString)
  {
    GlassExtensionsNano.GlassUserEventProto localGlassUserEventProto = new GlassExtensionsNano.GlassUserEventProto();
    localGlassUserEventProto.eventType = paramUserEventAction.action;
    localGlassUserEventProto.eventTimeMs = Long.valueOf(System.currentTimeMillis());
    if (!TextUtils.isEmpty(paramString))
      localGlassUserEventProto.eventData = paramString;
    return localGlassUserEventProto;
  }

  private static void ensureEndsWithSeparator(StringBuilder paramStringBuilder)
  {
    int i = paramStringBuilder.length();
    if ((i == 0) || (paramStringBuilder.charAt(i - 1) != '|'))
      paramStringBuilder.append('|');
  }

  private void flushInternal()
  {
    Assert.assertNotUiThread();
    if (!this.loggingEnabled)
    {
      logger.d("Not flushing user events as logging is disabled.", new Object[0]);
      return;
    }
    logger.i("Flushing user events.", new Object[0]);
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.UserEventService");
    localIntent.putExtra("force_flush", true);
    this.context.startService(localIntent);
  }

  private void logInternal(UserEventAction paramUserEventAction, String paramString)
  {
    Assert.assertNotUiThread();
    if (!this.loggingEnabled)
      return;
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.UserEventService");
    localIntent.putExtra("user_event", MessageNano.toByteArray(createProto(paramUserEventAction, paramString)));
    IntentSender.getInstance().startService(this.context, localIntent);
  }

  public static ImmutableMultimap<String, String> parseEventTuple(String paramString)
  {
    Preconditions.checkNotNull(paramString, "null eventTuple");
    ImmutableListMultimap.Builder localBuilder = ImmutableListMultimap.builder();
    Iterator localIterator = EVENT_TUPLE_SPLITTER.split(paramString).iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      int i = str1.indexOf('=');
      String str2;
      String str3;
      if (i < 0)
      {
        str2 = NON_ASSIGNMENT_ITEM_KEY;
        str3 = str1;
        localBuilder.put(str2, str3);
      }
      else
      {
        str2 = str1.substring(0, i);
        int j = str1.length();
        if (j > i + 1);
        for (str3 = str1.substring(i + 1, j); ; str3 = "")
          break;
      }
    }
    return localBuilder.build();
  }

  private static String sanitize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return RESERVED_CHAR_MATCHER.removeFrom(String.valueOf(paramObject));
  }

  private void saveToDiskInternal()
  {
    Assert.assertNotUiThread();
    if (!this.loggingEnabled)
    {
      logger.d("Not saving to disk as logging is disabled.", new Object[0]);
      return;
    }
    logger.i("Saving to disk.", new Object[0]);
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.UserEventService");
    localIntent.putExtra("force_save_to_disk", true);
    this.context.startService(localIntent);
  }

  public void checkin()
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        UserEventHelper.this.checkinInternal();
      }
    });
  }

  public void flush()
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        UserEventHelper.this.flushInternal();
      }
    });
  }

  public void log(UserEventAction paramUserEventAction)
  {
    log(paramUserEventAction, null);
  }

  public void log(final UserEventAction paramUserEventAction, final String paramString)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramUserEventAction;
    arrayOfObject[1] = paramString;
    arrayOfObject[2] = Boolean.valueOf(this.loggingEnabled);
    localFormattingLogger.d("Log user event. action: [%s], data: [%s], loggingEnabled: [%s].", arrayOfObject);
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        UserEventHelper.this.logInternal(paramUserEventAction, paramString);
      }
    });
  }

  public void saveToDisk()
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        UserEventHelper.this.saveToDiskInternal();
      }
    });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.userevent.UserEventHelper
 * JD-Core Version:    0.6.2
 */