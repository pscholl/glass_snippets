package com.google.glass.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.glass.logging.Log;
import com.google.glass.predicates.Assert;

public abstract class RateLimitedRunnable
  implements Runnable
{
  private final Clock clock;
  protected final Context context;
  private final SharedPreferences sharedPrefs;

  public RateLimitedRunnable(Context paramContext, SharedPreferences paramSharedPreferences)
  {
    this(paramContext, paramSharedPreferences, new Clock.Impl());
  }

  public RateLimitedRunnable(Context paramContext, SharedPreferences paramSharedPreferences, Clock paramClock)
  {
    this.context = paramContext;
    this.sharedPrefs = paramSharedPreferences;
    this.clock = paramClock;
  }

  protected abstract void execute(long paramLong);

  protected abstract long getInterval();

  protected abstract String getTag();

  protected abstract String getTimestampPref();

  public final void run()
  {
    Assert.assertNotUiThread();
    if (Assert.isTest())
      return;
    long l = this.clock.currentTimeMillis();
    if (l - this.sharedPrefs.getLong(getTimestampPref(), 0L) < getInterval())
    {
      Log.d(getTag(), "Has run recently, will not run now.", new Object[0]);
      return;
    }
    this.sharedPrefs.edit().putLong(getTimestampPref(), l).commit();
    execute(l);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.RateLimitedRunnable
 * JD-Core Version:    0.6.2
 */