package com.google.android.speech.audio;

import android.media.AudioRecord;
import android.media.MediaSyncEvent;
import android.media.audiofx.NoiseSuppressor;
import android.util.Log;
import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

public class MicrophoneInputStream extends InputStream
{
  private static final int AUDIO_FORMAT = 2;
  private static final int AUDIO_SOURCE = 6;
  private static final int CHANNEL_CONFIG = 16;
  private static final boolean DEBUG = false;
  private static final String TAG = "MicrophoneInputStream";

  @GuardedBy("mLock")
  private AudioRecord mAudioRecord;
  private final int mBufferSize;

  @GuardedBy("mLock")
  private boolean mClosed;
  private final Object mLock = new Object();
  private final boolean mNoiseSuppressionEnabled;

  @GuardedBy("mLock")
  private NoiseSuppressor mNoiseSuppressor;
  private final int mSampleRate;

  @Nullable
  private final Supplier<MediaSyncEvent> mStartEventSupplier;

  @GuardedBy("mLock")
  private boolean mStarted = false;

  public MicrophoneInputStream(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, false, null);
  }

  public MicrophoneInputStream(int paramInt1, int paramInt2, boolean paramBoolean, @Nullable Supplier<MediaSyncEvent> paramSupplier)
  {
    this.mSampleRate = paramInt1;
    this.mBufferSize = Math.max(AudioRecord.getMinBufferSize(paramInt1, 16, 2), paramInt2);
    this.mAudioRecord = createAudioRecord();
    this.mNoiseSuppressionEnabled = paramBoolean;
    this.mStartEventSupplier = paramSupplier;
  }

  @Nonnull
  @GuardedBy("mLock")
  private AudioRecord ensureStartedLocked()
    throws IOException
  {
    ExtraPreconditions.checkHoldsLock(this.mLock);
    if (this.mAudioRecord == null)
      throw new IOException("AudioRecord failed to initialize.");
    if (this.mStarted)
      return this.mAudioRecord;
    try
    {
      if (this.mNoiseSuppressionEnabled)
      {
        this.mNoiseSuppressor = NoiseSuppressor.create(this.mAudioRecord.getAudioSessionId());
        if (this.mNoiseSuppressor.setEnabled(true) != 0)
          this.mNoiseSuppressor = null;
      }
      MediaSyncEvent localMediaSyncEvent = getStartEvent();
      if (localMediaSyncEvent != null)
      {
        this.mAudioRecord.startRecording(localMediaSyncEvent);
        int i = this.mAudioRecord.getRecordingState();
        if (i == 3)
          break label149;
        throw new IOException("couldn't start recording, state is:" + i);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.mNoiseSuppressor = null;
        continue;
        this.mAudioRecord.startRecording();
      }
      label149: this.mStarted = true;
    }
    return this.mAudioRecord;
  }

  private MediaSyncEvent getStartEvent()
  {
    if (this.mStartEventSupplier != null)
      return (MediaSyncEvent)this.mStartEventSupplier.get();
    return null;
  }

  public void close()
  {
    synchronized (this.mLock)
    {
      if ((this.mAudioRecord != null) && (!this.mClosed))
      {
        Log.i("MicrophoneInputStream", "mic_close");
        this.mAudioRecord.stop();
        if (this.mNoiseSuppressor != null)
        {
          this.mNoiseSuppressor.release();
          this.mNoiseSuppressor = null;
        }
        this.mAudioRecord.release();
        this.mClosed = true;
      }
      return;
    }
  }

  @VisibleForTesting
  protected AudioRecord createAudioRecord()
  {
    AudioRecord localAudioRecord = new AudioRecord(6, this.mSampleRate, 16, 2, this.mBufferSize);
    if (localAudioRecord.getState() != 1)
    {
      localAudioRecord.release();
      localAudioRecord = null;
    }
    return localAudioRecord;
  }

  public int read()
  {
    throw new UnsupportedOperationException("Single-byte read not supported");
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i;
    synchronized (this.mLock)
    {
      if (this.mClosed)
        return -1;
      AudioRecord localAudioRecord = ensureStartedLocked();
      i = localAudioRecord.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    synchronized (this.mLock)
    {
      if (this.mClosed)
      {
        return -1;
        localObject2 = finally;
        throw localObject2;
      }
      if (i >= -1)
        break label148;
      if (i == -3)
        throw new IOException("not open");
    }
    if (i == -2)
      throw new IOException("Bad offset/length arguments for buffer");
    throw new IOException("Unexpected error code: " + i);
    label148: return i;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.MicrophoneInputStream
 * JD-Core Version:    0.6.2
 */