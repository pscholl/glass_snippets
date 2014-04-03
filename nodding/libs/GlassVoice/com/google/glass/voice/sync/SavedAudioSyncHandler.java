package com.google.glass.voice.sync;

import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.audio.S3SavedAudioSyncer;
import com.google.glass.logging.audio.SavedAudioStorage;
import com.google.glass.logging.audio.SyncFailedException;
import com.google.glass.net.AndroidHttpRequestDispatcher;
import com.google.glass.sync.BackOffSyncHandler;
import com.google.glass.util.RetryStrategy;
import java.util.concurrent.TimeUnit;

public class SavedAudioSyncHandler extends BackOffSyncHandler
{
  private static final double BACKOFF_MULTIPLIER = 2.0D;
  private static final int FIRST_RETRY_DELAY_MS = (int)TimeUnit.SECONDS.toMillis(10L);
  private static final String TAG = SavedAudioSyncHandler.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private Context context;
  private SavedAudioStorage savedAudioStorage;

  public SavedAudioSyncHandler(Context paramContext)
  {
    super(RetryStrategy.exponentialBackoff(FIRST_RETRY_DELAY_MS, 2.0D, -1));
    this.context = paramContext;
    this.savedAudioStorage = new SavedAudioStorage(S3SavedAudioSyncer.createS3SavedAudioSyncer(paramContext, new AndroidHttpRequestDispatcher(paramContext)));
  }

  public void deleteOldAudio()
  {
    this.savedAudioStorage.deleteOldAudio(this.context);
  }

  protected String getTag()
  {
    return TAG;
  }

  public void syncSavedAudio()
  {
    try
    {
      this.savedAudioStorage.uploadStoredAudio(this.context, SavedAudioStorage.getEnabledStorageLabs());
      handleSuccess();
      return;
    }
    catch (SyncFailedException localSyncFailedException)
    {
      logger.e(TAG, new Object[] { "Syncing saved audio to S3 failed", localSyncFailedException });
      handleFail(4);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.sync.SavedAudioSyncHandler
 * JD-Core Version:    0.6.2
 */