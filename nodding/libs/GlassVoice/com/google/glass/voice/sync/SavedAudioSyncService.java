package com.google.glass.voice.sync;

import android.accounts.Account;
import android.app.Service;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.WifiHelper;

public class SavedAudioSyncService extends Service
{
  public static final Object LOCK = new Object();
  private static final String TAG = SavedAudioSyncService.class.getSimpleName();
  private static SavedAudioSyncAdapter syncAdapter;

  public IBinder onBind(Intent paramIntent)
  {
    return syncAdapter.getSyncAdapterBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    synchronized (LOCK)
    {
      if (syncAdapter == null)
        syncAdapter = new SavedAudioSyncAdapter(this);
      return;
    }
  }

  private static class SavedAudioSyncAdapter extends AbstractThreadedSyncAdapter
  {
    private static final int MINIMUM_SYNC_DELAY_SECONDS = 60;
    private final BatteryHelper batteryHelper;
    private final SavedAudioSyncHandler handler;
    private final WifiHelper wifiHelper;

    public SavedAudioSyncAdapter(Context paramContext)
    {
      super(true);
      this.handler = new SavedAudioSyncHandler(paramContext);
      this.batteryHelper = new BatteryHelper(paramContext);
      this.wifiHelper = new WifiHelper(paramContext);
    }

    private boolean isPowered()
    {
      return this.batteryHelper.isPowered();
    }

    private boolean isWifiConnected()
    {
      return this.wifiHelper.isConnected();
    }

    public void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
    {
      Log.d(SavedAudioSyncService.TAG, "onPerformSync");
      this.handler.deleteOldAudio();
      if ((isPowered()) && (isWifiConnected()) && (this.handler.shouldRetry()))
        this.handler.syncSavedAudio();
      paramSyncResult.delayUntil = Math.max(60L, this.handler.getDelayRemainingSecs());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.sync.SavedAudioSyncService
 * JD-Core Version:    0.6.2
 */