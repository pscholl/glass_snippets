package com.google.android.voicesearch.speechservice.s3;

import com.google.common.base.Supplier;
import com.google.speech.s3.PinholeStream.PinholeParams;
import java.util.concurrent.Callable;

public abstract interface PinholeParamsBuilder
{
  public abstract Callable<PinholeStream.PinholeParams> getPinholeParamsCallable(Supplier<String> paramSupplier);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.voicesearch.speechservice.s3.PinholeParamsBuilder
 * JD-Core Version:    0.6.2
 */