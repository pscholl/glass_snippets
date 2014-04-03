package com.google.android.speech.audio;

import android.util.Log;
import com.google.android.speech.SpeechLevelSource;
import com.google.android.speech.listeners.RecognitionEventListener;
import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import java.io.IOException;
import java.io.InputStream;

public class AudioSource
  implements AudioInputStreamFactory
{
  private static final boolean DEBUG = false;
  private static final int MAX_SIBLINGS = 16;
  private static final String TAG = "AudioSource";
  private CaptureThread mCaptureThread;
  private AudioInputStreamFactory mInputStreamFactory;
  private final int mMaxBuffers;
  private final int mMinBuffers;
  private final int mReadSize;
  private final SpeechLevelGenerator mSpeechLevelGenerator;
  private Tee mTee;

  public AudioSource(int paramInt1, int paramInt2, int paramInt3, AudioInputStreamFactory paramAudioInputStreamFactory, SpeechLevelSource paramSpeechLevelSource)
  {
    Preconditions.checkNotNull(paramAudioInputStreamFactory);
    this.mReadSize = paramInt1;
    this.mMinBuffers = paramInt2;
    this.mMaxBuffers = paramInt3;
    this.mInputStreamFactory = paramAudioInputStreamFactory;
    this.mSpeechLevelGenerator = new SpeechLevelGenerator(paramSpeechLevelSource);
  }

  public AudioSource(AudioSource paramAudioSource)
  {
    try
    {
      this.mReadSize = paramAudioSource.mReadSize;
      this.mMinBuffers = paramAudioSource.mMinBuffers;
      this.mMaxBuffers = paramAudioSource.mMaxBuffers;
      this.mInputStreamFactory = paramAudioSource.mInputStreamFactory;
      this.mSpeechLevelGenerator = paramAudioSource.mSpeechLevelGenerator;
      this.mTee = paramAudioSource.mTee;
      this.mCaptureThread = paramAudioSource.mCaptureThread;
      paramAudioSource.mInputStreamFactory = null;
      paramAudioSource.mTee = null;
      paramAudioSource.mCaptureThread = null;
      return;
    }
    finally
    {
    }
  }

  public InputStream createInputStream()
    throws IOException
  {
    try
    {
      if (this.mInputStreamFactory == null)
        throw new IOException("Stopped");
    }
    finally
    {
    }
    if (this.mTee == null)
    {
      this.mTee = new Tee(this.mInputStreamFactory.createInputStream(), this.mReadSize, this.mMinBuffers, this.mMaxBuffers, 16);
      if (this.mCaptureThread != null)
      {
        this.mCaptureThread.setInputStream(this.mTee.getLeader());
        this.mCaptureThread.start();
      }
    }
    InputStream localInputStream = this.mTee.split();
    return localInputStream;
  }

  public void setStartTime(long paramLong)
  {
    Preconditions.checkNotNull(this.mTee);
    Preconditions.checkNotNull(this.mCaptureThread);
    Preconditions.checkNotNull(this.mInputStreamFactory);
    long l = 16L * paramLong / 1000L;
    this.mTee.setStartAtDelegatePos(l);
  }

  public void shutdown()
  {
    try
    {
      stopListening();
      this.mInputStreamFactory = null;
      this.mTee = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void start(RecognitionEventListener paramRecognitionEventListener)
  {
    try
    {
      if (this.mCaptureThread == null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        Preconditions.checkNotNull(this.mInputStreamFactory);
        this.mCaptureThread = new CaptureThread(this.mReadSize, this.mSpeechLevelGenerator, paramRecognitionEventListener);
        if (this.mTee != null)
        {
          this.mCaptureThread.setInputStream(this.mTee.getLeader());
          this.mCaptureThread.start();
        }
        return;
      }
    }
    finally
    {
    }
  }

  public void stopListening()
  {
    try
    {
      if (this.mCaptureThread != null)
      {
        this.mCaptureThread.closeLeader();
        if (this.mTee != null)
          this.mCaptureThread.interrupt();
      }
      try
      {
        this.mCaptureThread.join();
        this.mCaptureThread = null;
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
        {
          Log.e("AudioSource", "Interrupted in #stop", localInterruptedException);
          Thread.currentThread().interrupt();
        }
      }
    }
    finally
    {
    }
  }

  private static class CaptureThread extends Thread
  {
    private final RecognitionEventListener mEventListener;
    private InputStream mLeader;
    private final int mReadSize;
    private final SpeechLevelGenerator mSpeechLevelGenerator;

    public CaptureThread(int paramInt, SpeechLevelGenerator paramSpeechLevelGenerator, RecognitionEventListener paramRecognitionEventListener)
    {
      super();
      this.mReadSize = paramInt;
      this.mSpeechLevelGenerator = paramSpeechLevelGenerator;
      this.mEventListener = paramRecognitionEventListener;
    }

    public void closeLeader()
    {
      Closeables.closeQuietly(this.mLeader);
    }

    public void run()
    {
      Preconditions.checkNotNull(this.mLeader);
      byte[] arrayOfByte = new byte[this.mReadSize];
      int i = 1;
      try
      {
        while (true)
        {
          int j = this.mLeader.read(arrayOfByte);
          if ((j == -1) || (Thread.currentThread().isInterrupted()))
            break;
          if (i != 0)
          {
            this.mEventListener.onReadyForSpeech(0.0F, 0.0F);
            i = 0;
          }
          this.mSpeechLevelGenerator.update(arrayOfByte, 0, j);
        }
      }
      catch (IOException localIOException)
      {
        return;
        return;
      }
      finally
      {
        Closeables.closeQuietly(this.mLeader);
      }
    }

    public void setInputStream(InputStream paramInputStream)
    {
      this.mLeader = paramInputStream;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.AudioSource
 * JD-Core Version:    0.6.2
 */