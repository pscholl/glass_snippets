package com.google.glass.entity;

import android.content.ContentResolver;
import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Strings;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.ArrayUtils;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public abstract class MatchEntity extends AsyncTask<Void, Void, TimelineNano.Entity>
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private TimelineNano.Entity target;

  public MatchEntity(Context paramContext)
  {
    Assert.assertNotNull(paramContext);
    this.target = new TimelineNano.Entity();
    this.context = paramContext;
  }

  public MatchEntity addPhoneNumber(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      logger.w("Phone number was null or empty, not setting.", new Object[0]);
      return this;
    }
    if (TextUtils.isEmpty(this.target.phoneNumber))
    {
      this.target.phoneNumber = paramString;
      return this;
    }
    if (ArrayUtils.isEmpty(this.target.secondaryPhoneNumber))
    {
      this.target.secondaryPhoneNumber = new String[] { paramString };
      return this;
    }
    ArrayList localArrayList = new ArrayList(Arrays.asList(this.target.secondaryPhoneNumber));
    localArrayList.add(paramString);
    this.target.secondaryPhoneNumber = ((String[])localArrayList.toArray(new String[0]));
    return this;
  }

  public void byPartialEntity(TimelineNano.Entity paramEntity)
  {
    this.target = EntityHelper.clone(paramEntity);
    execute(new Void[0]);
  }

  protected TimelineNano.Entity doInBackground(Void[] paramArrayOfVoid)
  {
    TimelineNano.Entity localEntity1 = this.target;
    ContentResolver localContentResolver = this.context.getContentResolver();
    if (!TextUtils.isEmpty(localEntity1.phoneNumber))
    {
      logger.d("Searching for entity via phone numbers.", new Object[0]);
      LinkedList localLinkedList = new LinkedList();
      if (!ArrayUtils.isEmpty(localEntity1.secondaryPhoneNumber))
        localLinkedList.addAll(Arrays.asList(localEntity1.secondaryPhoneNumber));
      localLinkedList.add(0, localEntity1.phoneNumber);
      Iterator localIterator1 = localLinkedList.iterator();
      while (localIterator1.hasNext())
      {
        TimelineNano.Entity localEntity5 = EntityHelper.queryByPhoneNumber(localContentResolver, (String)localIterator1.next());
        if (localEntity5 != null)
        {
          logger.d("Entity found via phone number.", new Object[0]);
          return localEntity5;
        }
      }
      Iterator localIterator2 = localLinkedList.iterator();
      while (localIterator2.hasNext())
      {
        TimelineNano.Entity localEntity4 = EntityHelper.queryBySecondaryPhoneNumber(localContentResolver, (String)localIterator2.next());
        if (localEntity4 != null)
        {
          logger.d("Entity found via secondary phone number.", new Object[0]);
          return localEntity4;
        }
      }
    }
    if (!TextUtils.isEmpty(localEntity1.id))
    {
      logger.d("Searching for entity via id.", new Object[0]);
      TimelineNano.Entity localEntity3 = EntityHelper.queryByEmail(localContentResolver, localEntity1.id);
      if (localEntity3 != null)
      {
        logger.d("Entity found via id.", new Object[0]);
        return localEntity3;
      }
    }
    if (!TextUtils.isEmpty(localEntity1.email))
    {
      logger.d("Searching for entity via email address.", new Object[0]);
      TimelineNano.Entity localEntity2 = EntityHelper.queryByEmail(localContentResolver, localEntity1.email);
      if (localEntity2 != null)
      {
        logger.d("Entity found via email address.", new Object[0]);
        return localEntity2;
      }
    }
    return null;
  }

  @VisibleForTesting
  public String getEmailAddress()
  {
    return Strings.nullToEmpty(this.target.email);
  }

  @VisibleForTesting
  public String getPhoneNumber()
  {
    return Strings.nullToEmpty(this.target.phoneNumber);
  }

  public abstract void onEntityMatched(TimelineNano.Entity paramEntity);

  public abstract void onNoMatchFound();

  protected void onPostExecute(TimelineNano.Entity paramEntity)
  {
    if (paramEntity == null)
    {
      logger.d("No entity found, sending to onNoMatchFound().", new Object[0]);
      onNoMatchFound();
      return;
    }
    logger.d("Entity found, sending to onEntityMatched().", new Object[0]);
    onEntityMatched(paramEntity);
  }

  public MatchEntity setEmailAddress(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      logger.w("Email address was null or empty, not setting.", new Object[0]);
      return this;
    }
    this.target.email = paramString;
    return this;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.MatchEntity
 * JD-Core Version:    0.6.2
 */