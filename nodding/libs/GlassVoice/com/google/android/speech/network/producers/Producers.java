package com.google.android.speech.network.producers;

import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import com.google.speech.s3.S3.S3Request;
import java.io.IOException;
import javax.annotation.Nonnull;

public class Producers
{
  public static class CompositeProducer
    implements S3RequestProducer
  {
    private S3RequestProducer mCurrent;
    private final S3RequestProducer mFirst;
    private final S3RequestProducer mSecond;

    public CompositeProducer(S3RequestProducer paramS3RequestProducer1, S3RequestProducer paramS3RequestProducer2)
    {
      this.mFirst = paramS3RequestProducer1;
      this.mSecond = paramS3RequestProducer2;
      this.mCurrent = this.mFirst;
    }

    public void close()
    {
      Closeables.closeQuietly(this.mFirst);
      Closeables.closeQuietly(this.mSecond);
    }

    public S3.S3Request next()
      throws IOException
    {
      try
      {
        Object localObject = this.mCurrent.next();
        if (localObject == null)
        {
          if (this.mCurrent == this.mFirst)
          {
            this.mCurrent = this.mSecond;
            S3.S3Request localS3Request = this.mCurrent.next();
            localObject = localS3Request;
          }
        }
        else
          return localObject;
        return null;
      }
      catch (IOException localIOException)
      {
        close();
        throw localIOException;
      }
    }
  }

  public static abstract class SingleRequestProducer
    implements S3RequestProducer
  {
    private boolean mComplete;

    public void close()
    {
      this.mComplete = true;
    }

    public S3.S3Request next()
      throws IOException
    {
      if (this.mComplete)
        return null;
      this.mComplete = true;
      return (S3.S3Request)Preconditions.checkNotNull(produceRequest());
    }

    @Nonnull
    protected abstract S3.S3Request produceRequest()
      throws IOException;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.Producers
 * JD-Core Version:    0.6.2
 */