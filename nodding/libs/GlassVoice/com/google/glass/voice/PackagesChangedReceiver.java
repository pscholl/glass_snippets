package com.google.glass.voice;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.common.collect.Lists;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.util.SafeBroadcastReceiver;
import java.util.Iterator;
import java.util.List;

public abstract class PackagesChangedReceiver
{
  private static final List<String> PACKAGE_CHANGES_ACTIONS = Lists.newArrayList(new String[] { "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED" });
  private final SafeBroadcastReceiver receiver = new SafeBroadcastReceiver()
  {
    protected FormattingLogger getLogger()
    {
      return PackagesChangedReceiver.this.getLogger();
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      PackagesChangedReceiver.this.onPackagesChanged();
    }
  };

  public abstract FormattingLogger getLogger();

  public abstract void onPackagesChanged();

  public final void registerSelf(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    Iterator localIterator = PACKAGE_CHANGES_ACTIONS.iterator();
    while (localIterator.hasNext())
      localIntentFilter.addAction((String)localIterator.next());
    localIntentFilter.addDataScheme("package");
    this.receiver.register(paramContext, localIntentFilter);
  }

  public String toString()
  {
    return getLogger().getTag() + " registered: " + this.receiver.isRegistered();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.PackagesChangedReceiver
 * JD-Core Version:    0.6.2
 */