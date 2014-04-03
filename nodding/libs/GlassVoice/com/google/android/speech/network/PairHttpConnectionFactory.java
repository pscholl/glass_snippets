package com.google.android.speech.network;

import com.google.common.base.Supplier;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.PairHttpServerInfo;
import javax.annotation.Nonnull;

public class PairHttpConnectionFactory
  implements S3ConnectionFactory
{

  @Nonnull
  private final ConnectionFactory mConnectionFactory;

  @Nonnull
  private final Supplier<GstaticConfiguration.PairHttpServerInfo> mHttpServerInfoSupplier;

  public PairHttpConnectionFactory(@Nonnull Supplier<GstaticConfiguration.PairHttpServerInfo> paramSupplier, @Nonnull ConnectionFactory paramConnectionFactory)
  {
    this.mHttpServerInfoSupplier = paramSupplier;
    this.mConnectionFactory = paramConnectionFactory;
  }

  @Nonnull
  public S3Connection create()
  {
    return new PairHttpConnection((GstaticConfiguration.PairHttpServerInfo)this.mHttpServerInfoSupplier.get(), this.mConnectionFactory, true);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.PairHttpConnectionFactory
 * JD-Core Version:    0.6.2
 */