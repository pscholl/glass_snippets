package com.google.android.speech.audio;

import android.util.Log;
import com.google.android.searchcommon.util.ProguardMustNotDelete;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import javax.annotation.concurrent.GuardedBy;

@ProguardMustNotDelete
public class Tee
{
  private static final boolean DBG = false;
  private static final int LEADER_ID = 0;
  private static final int READ_POSITION_CLOSED = 2147483647;
  private static final String TAG = "Tee";

  @GuardedBy("this")
  private int mBasePos;
  private final byte[] mBuffer;

  @GuardedBy("this")
  private int mBufferBegin;

  @GuardedBy("this")
  private int mBufferEnd;
  private final InputStream mDelegate;

  @GuardedBy("this")
  private boolean mEof;

  @GuardedBy("this")
  private IOException mException;
  private final int mKeepSize;
  private final InputStream mLeader;

  @GuardedBy("this")
  private final int[] mReadPositions;
  private final int mReadSize;

  @GuardedBy("this")
  private int mStartMark;

  public Tee(InputStream paramInputStream, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt2 < paramInt3);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      this.mDelegate = paramInputStream;
      this.mBuffer = new byte[paramInt3 * paramInt1];
      this.mKeepSize = (paramInt2 * paramInt1);
      this.mBufferBegin = 0;
      this.mBufferEnd = 0;
      this.mEof = false;
      this.mReadSize = paramInt1;
      this.mReadPositions = new int[paramInt4];
      Arrays.fill(this.mReadPositions, 2147483647);
      this.mLeader = new TeeLeaderInputStream(this);
      this.mReadPositions[0] = 0;
      return;
    }
  }

  private void doRead(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    byte[] arrayOfByte = this.mBuffer;
    int i = arrayOfByte.length;
    if (paramInt1 + paramInt3 <= i)
    {
      System.arraycopy(arrayOfByte, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    if (paramInt1 >= arrayOfByte.length)
    {
      System.arraycopy(arrayOfByte, paramInt1 - i, paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int j = i - paramInt1;
    int k = paramInt3 - j;
    System.arraycopy(arrayOfByte, paramInt1, paramArrayOfByte, paramInt2, j);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt2 + j, k);
  }

  private int findSlowestReaderLocked()
  {
    int i = 2147483647;
    for (int j = 0; j < this.mReadPositions.length; j++)
    {
      int k = this.mReadPositions[j];
      if (k < i)
        i = k;
    }
    if (i <= this.mBufferEnd);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      return i;
    }
  }

  // ERROR //
  private int readFromDelegate(int paramInt)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 50	com/google/android/speech/audio/Tee:mBuffer	[B
    //   4: arraylength
    //   5: istore_2
    //   6: iload_1
    //   7: iload_2
    //   8: if_icmpge +44 -> 52
    //   11: iload_1
    //   12: istore_3
    //   13: iload_2
    //   14: iload_3
    //   15: isub
    //   16: aload_0
    //   17: getfield 60	com/google/android/speech/audio/Tee:mReadSize	I
    //   20: if_icmplt +39 -> 59
    //   23: iconst_1
    //   24: istore 4
    //   26: iload 4
    //   28: invokestatic 46	com/google/common/base/Preconditions:checkArgument	(Z)V
    //   31: aload_0
    //   32: getfield 48	com/google/android/speech/audio/Tee:mDelegate	Ljava/io/InputStream;
    //   35: aload_0
    //   36: getfield 50	com/google/android/speech/audio/Tee:mBuffer	[B
    //   39: iload_3
    //   40: aload_0
    //   41: getfield 60	com/google/android/speech/audio/Tee:mReadSize	I
    //   44: invokestatic 98	com/google/common/io/ByteStreams:read	(Ljava/io/InputStream;[BII)I
    //   47: istore 7
    //   49: iload 7
    //   51: ireturn
    //   52: iload_1
    //   53: iload_2
    //   54: isub
    //   55: istore_3
    //   56: goto -43 -> 13
    //   59: iconst_0
    //   60: istore 4
    //   62: goto -36 -> 26
    //   65: astore 5
    //   67: aload_0
    //   68: monitorenter
    //   69: aload_0
    //   70: aload 5
    //   72: putfield 100	com/google/android/speech/audio/Tee:mException	Ljava/io/IOException;
    //   75: aload_0
    //   76: invokevirtual 103	java/lang/Object:notifyAll	()V
    //   79: aload_0
    //   80: monitorexit
    //   81: aload 5
    //   83: athrow
    //   84: astore 6
    //   86: aload_0
    //   87: monitorexit
    //   88: aload 6
    //   90: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   31	49	65	java/io/IOException
    //   69	81	84	finally
    //   86	88	84	finally
  }

  private void rewindBuffersLocked()
    throws IOException
  {
    if (this.mReadPositions[0] >= this.mKeepSize);
    int j;
    int k;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      int i = this.mReadPositions[0] - this.mKeepSize;
      j = Math.min(findSlowestReaderLocked(), i);
      k = this.mBuffer.length;
      if (this.mBufferEnd + this.mReadSize - j > k)
        break label191;
      if (this.mStartMark < j)
        this.mStartMark = 2147483647;
      if (j < k)
        break label185;
      this.mBasePos = (k + this.mBasePos);
      if (this.mStartMark != 2147483647)
        this.mStartMark -= k;
      for (int m = 0; m != this.mReadPositions.length; m++)
        if (this.mReadPositions[m] != 2147483647)
        {
          int[] arrayOfInt = this.mReadPositions;
          arrayOfInt[m] -= k;
        }
    }
    j -= k;
    this.mBufferEnd -= k;
    label185: this.mBufferBegin = j;
    return;
    label191: this.mException = new IOException("Buffer overflow, no available space.");
    throw this.mException;
  }

  void close()
  {
    try
    {
      this.mDelegate.close();
    }
    catch (IOException localIOException)
    {
      try
      {
        while (true)
        {
          this.mEof = true;
          notifyAll();
          return;
          localIOException = localIOException;
          Log.e("Tee", "IOException closing audio track: " + localIOException);
        }
      }
      finally
      {
      }
    }
  }

  public InputStream getLeader()
  {
    return this.mLeader;
  }

  int readLeader(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = this.mBuffer.length;
    int j = 0;
    int k = 0;
    int m = -1;
    try
    {
      if (this.mException != null)
        throw this.mException;
    }
    finally
    {
    }
    int n = this.mReadPositions[0];
    if (n == 2147483647)
    {
      if (m != -1)
      {
        int i4 = j - k;
        return i4;
      }
      return j;
    }
    int i1 = this.mBufferEnd;
    if (m != -1)
    {
      i1 += m;
      this.mBufferEnd = i1;
      notifyAll();
      if (m >= this.mReadSize)
        break label283;
      this.mEof = true;
      return j;
    }
    while (true)
    {
      if (k != 0)
      {
        n += k;
        this.mReadPositions[0] = n;
      }
      if (j == paramInt2)
        return paramInt2;
      if (i1 == n)
      {
        if (this.mEof)
          return j;
        if (i1 + this.mReadSize - this.mBufferBegin > i)
        {
          rewindBuffersLocked();
          n = this.mReadPositions[0];
          i1 = n;
        }
      }
      if (i1 == n)
      {
        m = readFromDelegate(i1);
        i1 += m;
      }
      int i2 = i1 - n;
      int i3 = paramInt2 - j;
      if (i2 < i3);
      for (k = i2; ; k = i3)
      {
        doRead(n, paramArrayOfByte, paramInt1 + j, k);
        j += k;
        break;
      }
      label283: m = -1;
    }
  }

  int readSecondary(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
    throws IOException
  {
    int i = 0;
    int j = 0;
    try
    {
      if (this.mException != null)
        throw this.mException;
    }
    finally
    {
    }
    int k = this.mReadPositions[paramInt1];
    if (k == 2147483647)
      return 0;
    if (j != 0)
    {
      k += j;
      this.mReadPositions[paramInt1] = k;
      j = 0;
    }
    if (i == paramInt3)
      return paramInt3;
    int m = this.mBufferEnd;
    int n;
    int i1;
    if (m != k)
    {
      n = m - k;
      i1 = paramInt3 - i;
      if (n >= i1)
        break label198;
    }
    label198: for (j = n; ; j = i1)
      while (true)
      {
        doRead(k, paramArrayOfByte, paramInt2 + i, j);
        i += j;
        break;
        if (this.mEof)
          return i;
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
          throw new IOException("Interrupted waiting for buffers: " + paramInt1);
        }
      }
  }

  void remove(int paramInt)
  {
    try
    {
      this.mReadPositions[paramInt] = 2147483647;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setStartAtDelegatePos(long paramLong)
  {
    while (true)
    {
      try
      {
        if (this.mBasePos + this.mBufferBegin > paramLong)
        {
          this.mStartMark = 2147483647;
          return;
        }
        if (this.mBasePos + this.mBufferEnd < paramLong)
        {
          this.mStartMark = 2147483647;
          continue;
        }
      }
      finally
      {
      }
      this.mStartMark = ((int)(paramLong - this.mBasePos));
    }
  }

  public InputStream split()
    throws IOException
  {
    try
    {
      if (this.mStartMark == 2147483647)
        throw new IOException("No splits possible, buffers rewound.");
    }
    finally
    {
    }
    for (int i = 1; (i != this.mReadPositions.length) && (this.mReadPositions[i] != 2147483647); i++);
    if (i == this.mReadPositions.length)
      throw new IOException("No splits possible, too many siblings.");
    TeeSecondaryInputStream localTeeSecondaryInputStream = new TeeSecondaryInputStream(this, i);
    this.mReadPositions[i] = this.mStartMark;
    return localTeeSecondaryInputStream;
  }

  private static class TeeLeaderInputStream extends InputStream
  {
    private final Tee mSharedStream;

    TeeLeaderInputStream(Tee paramTee)
    {
      this.mSharedStream = paramTee;
    }

    public void close()
    {
      this.mSharedStream.remove(0);
      this.mSharedStream.close();
    }

    public int read()
    {
      throw new UnsupportedOperationException("Find some other app to be inefficient in.");
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      int i = this.mSharedStream.readLeader(paramArrayOfByte, paramInt1, paramInt2);
      if (i == 0)
        i = -1;
      return i;
    }
  }

  private static class TeeSecondaryInputStream extends InputStream
  {
    private Tee mSharedStream;
    private final int mStreamId;

    TeeSecondaryInputStream(Tee paramTee, int paramInt)
    {
      this.mSharedStream = paramTee;
      this.mStreamId = paramInt;
    }

    public void close()
    {
      try
      {
        if (this.mSharedStream != null)
        {
          this.mSharedStream.remove(this.mStreamId);
          this.mSharedStream = null;
        }
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public int read()
    {
      throw new UnsupportedOperationException("Find some other app to be inefficient in.");
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      try
      {
        if (this.mSharedStream == null)
          throw new IOException("Secondary Tee stream closed.");
      }
      finally
      {
      }
      int i = this.mSharedStream.readSecondary(this.mStreamId, paramArrayOfByte, paramInt1, paramInt2);
      int j = i;
      if (j == 0)
        j = -1;
      return j;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.Tee
 * JD-Core Version:    0.6.2
 */