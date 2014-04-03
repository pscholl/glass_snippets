package com.google.android.speech.audio;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Locale;

public class AudioEncoderInputStream extends InputStream
{
  public static final String AAC_MIME_TYPE = "audio/mp4a-latm";
  private static final int ADTS_HEADER_LENGTH = 7;
  private static final boolean DBG = false;
  private static final String TAG = "AudioEncoderInputStream";
  private static final int TIMEOUT_USECS = 10000;
  private final ByteBuffer mAdtsHeader;
  private final int mChannels;
  private MediaCodec mCodec;
  private ByteBuffer[] mCodecInputBuffers;
  private ByteBuffer[] mCodecOutputBuffers;
  private int mCurrentOutputBufferIndex = -1;
  private final ByteBuffer mDataIn;
  private boolean mEof;
  private final boolean mIsAac;
  private final String mMimeType;
  private final int mReadSize;
  private final int mSampleRate;
  private final InputStream mStream;
  private int mTotalRead;

  public AudioEncoderInputStream(InputStream paramInputStream, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mReadSize = paramInt2;
    this.mStream = paramInputStream;
    this.mSampleRate = paramInt1;
    this.mChannels = paramInt4;
    this.mMimeType = paramString;
    this.mIsAac = "audio/mp4a-latm".equals(paramString);
    int k;
    if (this.mIsAac)
    {
      if (this.mSampleRate != 11025)
        break label189;
      k = i;
    }
    MediaFormat localMediaFormat;
    while (true)
    {
      Preconditions.checkState(k);
      if (this.mChannels == i)
      {
        Preconditions.checkState(i);
        this.mDataIn = ByteBuffer.wrap(new byte[this.mReadSize]);
        this.mDataIn.position(this.mReadSize);
        this.mAdtsHeader = ByteBuffer.wrap(new byte[7]);
        localMediaFormat = new MediaFormat();
        localMediaFormat.setString("mime", paramString);
        localMediaFormat.setInteger("sample-rate", this.mSampleRate);
        localMediaFormat.setInteger("bitrate", paramInt3);
        localMediaFormat.setInteger("channel-count", this.mChannels);
        if (!this.mIsAac)
          break;
      }
      else
      {
        try
        {
          startCodecByName("OMX.google.aac.encoder", localMediaFormat);
          return;
          label189: int m = 0;
          continue;
          int j = 0;
        }
        catch (Exception localException)
        {
          startCodecByMimeType(paramString, localMediaFormat);
          return;
        }
      }
    }
    startCodecByMimeType(paramString, localMediaFormat);
  }

  private void encodeStream()
    throws IOException
  {
    boolean bool1 = true;
    if (this.mCurrentOutputBufferIndex > -1)
      this.mCodec.releaseOutputBuffer(this.mCurrentOutputBufferIndex, false);
    int i = this.mCodec.dequeueInputBuffer(10000L);
    if (i != -1)
      onInputBufferReady(this.mCodec, i);
    MediaCodec.BufferInfo localBufferInfo = new MediaCodec.BufferInfo();
    int j = this.mCodec.dequeueOutputBuffer(localBufferInfo, 10000L);
    boolean bool2;
    boolean bool3;
    if (j == -2)
    {
      MediaFormat localMediaFormat = this.mCodec.getOutputFormat();
      if (this.mSampleRate == localMediaFormat.getInteger("sample-rate"))
      {
        bool2 = bool1;
        Preconditions.checkState(bool2);
        if (this.mChannels != localMediaFormat.getInteger("channel-count"))
          break label191;
        bool3 = bool1;
        label123: Preconditions.checkState(bool3);
        Preconditions.checkState(this.mMimeType.equals(localMediaFormat.getString("mime")));
        j = this.mCodec.dequeueOutputBuffer(localBufferInfo, 10000L);
      }
    }
    else
    {
      if (j == -2)
        break label197;
    }
    while (true)
    {
      Preconditions.checkState(bool1);
      if (j != -1)
        break label202;
      throw new IOException("Timed out while dequeuing output buffer");
      bool2 = false;
      break;
      label191: bool3 = false;
      break label123;
      label197: bool1 = false;
    }
    label202: if (j == -3)
      this.mCodecOutputBuffers = this.mCodec.getOutputBuffers();
    while (j == -1)
      return;
    onOutputBufferReady(this.mCodec, j, localBufferInfo.offset, localBufferInfo.size, localBufferInfo.presentationTimeUs, localBufferInfo.flags);
  }

  private static String hexdumpDebug(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    while (i < paramInt2)
    {
      Locale localLocale1 = Locale.US;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      localStringBuilder.append(String.format(localLocale1, "%08x:    ", arrayOfObject1));
      int j = 0;
      if (j < 16)
      {
        if (j == 8)
          localStringBuilder.append(" ");
        if (i + j >= paramInt2)
          localStringBuilder.append("   ");
        while (true)
        {
          j++;
          break;
          Locale localLocale3 = Locale.US;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Byte.valueOf(paramByteBuffer.get(j + (paramInt1 + i)));
          localStringBuilder.append(String.format(localLocale3, "%02x ", arrayOfObject3));
        }
      }
      localStringBuilder.append(" ");
      int k = 0;
      if ((k >= 16) || (i + k >= paramInt2))
      {
        i += 16;
        localStringBuilder.append('\n');
      }
      else
      {
        byte b = paramByteBuffer.get(k + (paramInt1 + i));
        if (isPrintableDebug(b))
        {
          Locale localLocale2 = Locale.US;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Byte.valueOf(b);
          localStringBuilder.append(String.format(localLocale2, "%c", arrayOfObject2));
        }
        while (true)
        {
          k++;
          break;
          localStringBuilder.append(".");
        }
      }
    }
    return localStringBuilder.toString();
  }

  private static boolean isPrintableDebug(byte paramByte)
  {
    return (paramByte >= 32) && (paramByte <= 45);
  }

  private void onInputBufferReady(MediaCodec paramMediaCodec, int paramInt)
    throws IOException
  {
    ByteBuffer localByteBuffer = this.mCodecInputBuffers[paramInt];
    localByteBuffer.clear();
    localByteBuffer.position(0);
    Preconditions.checkState(localByteBuffer.hasRemaining());
    while (true)
    {
      int i;
      if ((localByteBuffer.position() < this.mReadSize) && (localByteBuffer.hasRemaining()) && (!this.mEof))
      {
        if (this.mDataIn.hasRemaining())
        {
          int j = Math.min(this.mDataIn.remaining(), Math.min(localByteBuffer.remaining(), this.mReadSize - localByteBuffer.position()));
          localByteBuffer.put(this.mDataIn.array(), this.mDataIn.position(), j);
          this.mDataIn.position(j + this.mDataIn.position());
        }
        else
        {
          i = this.mStream.read(this.mDataIn.array());
          if (i != -1);
        }
      }
      else
      {
        if (localByteBuffer.position() <= 0)
          break;
        paramMediaCodec.queueInputBuffer(paramInt, 0, localByteBuffer.position(), 0L, 0);
        return;
        this.mDataIn.position(0);
        this.mDataIn.limit(i);
        this.mTotalRead = (i + this.mTotalRead);
      }
    }
    this.mEof = true;
    paramMediaCodec.queueInputBuffer(paramInt, 0, 0, 0L, 4);
  }

  private void onOutputBufferReady(MediaCodec paramMediaCodec, int paramInt1, int paramInt2, int paramInt3, long paramLong, int paramInt4)
  {
    this.mCurrentOutputBufferIndex = paramInt1;
    this.mAdtsHeader.clear();
    setAdtsHeaderBytes(paramInt3, this.mAdtsHeader);
    this.mAdtsHeader.flip();
    ByteBuffer localByteBuffer = this.mCodecOutputBuffers[paramInt1];
    localByteBuffer.clear();
    localByteBuffer.position(paramInt2);
    localByteBuffer.limit(paramInt2 + paramInt3);
  }

  private void release()
  {
    if (this.mCodec != null)
      this.mCodec.release();
    this.mCodec = null;
  }

  private void setAdtsHeaderBytes(int paramInt, ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.remaining() >= 7);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      long l = writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(writeBits(0L, 12, 4095), 1, 0), 2, 0), 1, 1), 2, 0), 4, 10), 1, 0), 3, 1), 1, 0), 1, 0), 1, 0), 1, 0), 13, paramInt + 7), 11, 2047), 2, 0);
      paramByteBuffer.put((byte)(int)(0xFF & l >>> 48));
      paramByteBuffer.put((byte)(int)(0xFF & l >>> 40));
      paramByteBuffer.put((byte)(int)(0xFF & l >>> 32));
      paramByteBuffer.put((byte)(int)(0xFF & l >>> 24));
      paramByteBuffer.put((byte)(int)(0xFF & l >>> 16));
      paramByteBuffer.put((byte)(int)(0xFF & l >>> 8));
      paramByteBuffer.put((byte)(int)l);
      return;
    }
  }

  private void startAndConfigureCodec(MediaCodec paramMediaCodec, MediaFormat paramMediaFormat)
  {
    try
    {
      this.mCodec = paramMediaCodec;
      this.mCodec.configure(paramMediaFormat, null, null, 1);
      this.mCodec.start();
      this.mCodecInputBuffers = this.mCodec.getInputBuffers();
      this.mCodecOutputBuffers = this.mCodec.getOutputBuffers();
      if (this.mCodec == null)
        throw new IllegalArgumentException("Could not create codec");
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.mCodec = null;
        this.mCodecInputBuffers = null;
        this.mCodecOutputBuffers = null;
      }
    }
  }

  private void startCodecByMimeType(String paramString, MediaFormat paramMediaFormat)
  {
    startAndConfigureCodec(MediaCodec.createEncoderByType(paramString), paramMediaFormat);
  }

  private void startCodecByName(String paramString, MediaFormat paramMediaFormat)
  {
    startAndConfigureCodec(MediaCodec.createByCodecName(paramString), paramMediaFormat);
  }

  private void stop()
  {
    if (this.mCodec != null)
      this.mCodec.stop();
  }

  private static long writeBits(long paramLong, int paramInt1, int paramInt2)
  {
    long l = -1L >>> 64 - paramInt1;
    return paramLong << paramInt1 | l & paramInt2;
  }

  public void close()
  {
    Closeables.closeQuietly(this.mStream);
    stop();
    release();
  }

  public void finalize()
    throws Throwable
  {
    if (this.mCodec != null)
    {
      close();
      throw new IllegalStateException("no one closed");
    }
  }

  public int getTotalRead()
  {
    return this.mTotalRead;
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
    if ((this.mEof) && (!this.mDataIn.hasRemaining()));
    for (int i = 1; ; i = 0)
    {
      if ((i == 0) && ((this.mCurrentOutputBufferIndex == -1) || (!this.mCodecOutputBuffers[this.mCurrentOutputBufferIndex].hasRemaining())))
        encodeStream();
      if (!this.mEof)
        break;
      return -1;
    }
    boolean bool = this.mAdtsHeader.hasRemaining();
    int j = 0;
    if (bool)
    {
      j = Math.min(paramInt2, this.mAdtsHeader.remaining());
      this.mAdtsHeader.get(paramArrayOfByte, paramInt1, j);
      paramInt1 += j;
      paramInt2 -= j;
    }
    ByteBuffer localByteBuffer = this.mCodecOutputBuffers[this.mCurrentOutputBufferIndex];
    Preconditions.checkState(localByteBuffer.hasRemaining());
    int k = Math.min(paramInt2, localByteBuffer.remaining());
    localByteBuffer.get(paramArrayOfByte, paramInt1, k);
    return k + j;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.AudioEncoderInputStream
 * JD-Core Version:    0.6.2
 */