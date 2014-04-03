package com.google.android.speech.audio;

import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import com.google.common.util.concurrent.SettableFuture;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

public class AudioRecorder
{
  private static final int BYTES_PER_MSEC = 16;
  private static final boolean DBG = false;
  private static final int MAX_FLATTENED_BUFFER_SIZE = 960000;
  private static final int MIN_FLATTENED_BUFFER_SIZE = 160000;
  private static final String TAG = "AudioRecorder";
  private int mEndPos;
  private SettableFuture<byte[]> mFutureAudio = null;
  private ClampedLengthRecordingThread mRecordingThread;
  private int mStartPos;

  private void doStopRecording(boolean paramBoolean)
  {
    if (this.mRecordingThread == null)
      return;
    if (paramBoolean)
      this.mRecordingThread.requestStop();
    while (true)
    {
      try
      {
        this.mRecordingThread.join();
        if (this.mRecordingThread.isGood())
        {
          arrayOfByte = this.mRecordingThread.getBuffer();
          this.mEndPos = Math.min(this.mRecordingThread.getTotalLength(), this.mEndPos);
          if (this.mStartPos >= this.mEndPos)
            arrayOfByte = null;
          this.mFutureAudio.set(getLastAudio(arrayOfByte));
          this.mFutureAudio = null;
          this.mRecordingThread = null;
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        this.mFutureAudio.set(null);
        this.mFutureAudio = null;
        return;
      }
      boolean bool = this.mRecordingThread.isOverflown();
      byte[] arrayOfByte = null;
      if (bool)
      {
        int i = this.mEndPos;
        arrayOfByte = null;
        if (i <= 960000)
          arrayOfByte = this.mRecordingThread.getBuffer();
      }
    }
  }

  private byte[] getLastAudio(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || ((this.mStartPos == 0) && (this.mEndPos == paramArrayOfByte.length)))
      return paramArrayOfByte;
    return Arrays.copyOfRange(paramArrayOfByte, this.mStartPos, this.mEndPos);
  }

  public boolean isRecording()
  {
    return this.mRecordingThread != null;
  }

  public void setRecordingEndTime(long paramLong)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.mRecordingThread != null)
    {
      bool2 = bool1;
      Preconditions.checkState(bool2);
      if (paramLong < 0L)
        break label48;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1);
      this.mEndPos = ((int)(16L * paramLong / 1000L));
      return;
      bool2 = false;
      break;
      label48: bool1 = false;
    }
  }

  public void setRecordingStartTime(long paramLong)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.mRecordingThread != null)
    {
      bool2 = bool1;
      Preconditions.checkState(bool2);
      if (paramLong < 0L)
        break label48;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1);
      this.mStartPos = ((int)(16L * paramLong / 1000L));
      return;
      bool2 = false;
      break;
      label48: bool1 = false;
    }
  }

  public void startRecording(InputStream paramInputStream, int paramInt, SettableFuture<byte[]> paramSettableFuture)
  {
    if (this.mRecordingThread == null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      this.mFutureAudio = paramSettableFuture;
      this.mStartPos = 0;
      this.mEndPos = 2147483647;
      this.mRecordingThread = new ClampedLengthRecordingThread(160000, 960000, paramInputStream, paramInt);
      this.mRecordingThread.start();
      return;
    }
  }

  public void stopRecording()
  {
    doStopRecording(true);
  }

  public void waitForRecording()
  {
    doStopRecording(false);
  }

  private static class ClampedLengthRecordingThread extends Thread
  {
    private static final int ERROR = -1;
    private static final int OVERFLOW = -2;
    private static final int RUNNING = 1;
    private static final int STOPPED = 3;
    private static final int STOPPING = 2;
    private byte[] mBuf;
    private final InputStream mInput;
    private final int mMaxSize;
    private final int mReadSize;
    private int mState;
    private int mTotalLength;

    ClampedLengthRecordingThread(int paramInt1, int paramInt2, InputStream paramInputStream, int paramInt3)
    {
      this.mMaxSize = paramInt2;
      this.mReadSize = paramInt3;
      this.mInput = paramInputStream;
      this.mBuf = new byte[paramInt1];
      this.mState = 1;
    }

    public byte[] getBuffer()
    {
      return this.mBuf;
    }

    public int getTotalLength()
    {
      return this.mTotalLength;
    }

    public boolean isGood()
    {
      return this.mState == 3;
    }

    public boolean isOverflown()
    {
      return this.mState == -2;
    }

    public void requestStop()
    {
      try
      {
        if (this.mState == 1)
        {
          this.mState = 2;
          interrupt();
        }
        return;
      }
      finally
      {
      }
    }

    public void run()
    {
      int i = 0;
      int j = 0;
      try
      {
        while (true)
        {
          if (j != -1);
          try
          {
            if (this.mState == 2)
            {
              this.mTotalLength = i;
              this.mState = 3;
              return;
            }
            int m = i + j;
            if (m > this.mMaxSize)
            {
              this.mTotalLength = this.mMaxSize;
              this.mState = -2;
              return;
            }
            i += j;
            if (i < this.mMaxSize)
            {
              int i1 = Math.min(i + this.mReadSize, this.mMaxSize);
              if (i1 > this.mBuf.length)
              {
                byte[] arrayOfByte = new byte[Math.min(i1 * 2, this.mMaxSize)];
                System.arraycopy(this.mBuf, 0, arrayOfByte, 0, i);
                this.mBuf = arrayOfByte;
              }
              int i2 = i1 - i;
              int i3 = this.mInput.read(this.mBuf, i, i2);
              j = i3;
              continue;
            }
          }
          finally
          {
          }
        }
      }
      catch (IOException localIOException)
      {
        while (true)
          try
          {
            this.mTotalLength = i;
            if (this.mState == 2);
            for (int k = 3; ; k = -1)
            {
              this.mState = k;
              return;
              int n = this.mInput.read(new byte[1]);
              j = n;
              break;
            }
          }
          finally
          {
          }
      }
      finally
      {
        Closeables.closeQuietly(this.mInput);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.AudioRecorder
 * JD-Core Version:    0.6.2
 */