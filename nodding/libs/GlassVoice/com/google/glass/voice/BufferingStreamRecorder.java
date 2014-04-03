package com.google.glass.voice;

import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.CircularByteBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class BufferingStreamRecorder extends InputStream
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final CircularByteBuffer circularBuffer;
  private final AtomicBoolean isRecording = new AtomicBoolean();
  private final Object readMonitor = new Object();
  private final ExecutorService recordExecutor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(10, "recordThread"));
  private final Runnable recordRunnable;
  private final InputStream underlyingStream;

  public BufferingStreamRecorder(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    this.underlyingStream = paramInputStream;
    this.circularBuffer = new CircularByteBuffer(ByteBuffer.allocateDirect(paramInt1));
    this.recordRunnable = createRecordThreadRunnable(paramInt2);
  }

  private final Runnable createRecordThreadRunnable(final int paramInt)
  {
    return new Runnable()
    {
      private final byte[] buffer = new byte[paramInt];
      private boolean overflowLogged = false;
      private final FormattingLogger recordThreadLogger = FormattingLoggers.getLogger(BufferingStreamRecorder.logger, "recordThread");

      private void notifyReadMonitor()
      {
        synchronized (BufferingStreamRecorder.this.readMonitor)
        {
          BufferingStreamRecorder.this.readMonitor.notifyAll();
          return;
        }
      }

      public void run()
      {
        if (BufferingStreamRecorder.this.isRecording.get())
          try
          {
            int i = BufferingStreamRecorder.this.underlyingStream.read(this.buffer);
            if (i <= 0)
            {
              this.recordThreadLogger.e("Stopping recording because read returned: " + i, new Object[0]);
              BufferingStreamRecorder.this.stopRecording();
              return;
            }
            if (BufferingStreamRecorder.this.circularBuffer.put(ByteBuffer.wrap(this.buffer, 0, i)))
              if (!this.overflowLogged)
                this.recordThreadLogger.w("Buffer overflow!", new Object[0]);
            for (this.overflowLogged = true; ; this.overflowLogged = false)
            {
              BufferingStreamRecorder.this.recordExecutor.execute(this);
              return;
            }
          }
          catch (IOException localIOException)
          {
            this.recordThreadLogger.e(localIOException, "IOException from underlying stream.", new Object[0]);
            return;
          }
          finally
          {
            notifyReadMonitor();
          }
        this.recordThreadLogger.d("Stopped recording", new Object[0]);
        notifyReadMonitor();
      }
    };
  }

  public void close()
    throws IOException
  {
    try
    {
      stopRecording();
      this.underlyingStream.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int read()
    throws IOException
  {
    throw new UnsupportedOperationException();
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (true)
    {
      if (i < paramInt2);
      try
      {
        if (!this.isRecording.get())
        {
          logger.e("No longer recording from underlying input stream; returning -1.", new Object[0]);
          i = -1;
          return i;
        }
        int j = this.circularBuffer.read(ByteBuffer.wrap(paramArrayOfByte, paramInt1 + i, paramInt2 - i));
        i += j;
        if (i >= paramInt2)
          continue;
        try
        {
          synchronized (this.readMonitor)
          {
            this.readMonitor.wait();
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
        }
      }
      finally
      {
      }
    }
  }

  public void startRecording()
  {
    try
    {
      if (!this.isRecording.compareAndSet(false, true))
        throw new IllegalStateException("Already started.");
    }
    finally
    {
    }
    logger.d("Starting recording.", new Object[0]);
    this.recordExecutor.execute(this.recordRunnable);
  }

  public void stopRecording()
  {
    try
    {
      if (!this.isRecording.get())
        break label56;
      if (!this.isRecording.compareAndSet(true, false))
        throw new IllegalStateException("Already stopped.");
    }
    finally
    {
    }
    logger.d("Stopping recording.", new Object[0]);
    while (true)
    {
      return;
      label56: logger.i("Recording has already been stopped.", new Object[0]);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.BufferingStreamRecorder
 * JD-Core Version:    0.6.2
 */