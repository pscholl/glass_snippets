package com.google.android.speech.embedded;

import com.google.common.base.Supplier;
import java.io.File;

public abstract interface EndpointerModelCopier
{
  public abstract boolean copyEndpointerModels(Supplier<File> paramSupplier, Greco3DataManager paramGreco3DataManager);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.EndpointerModelCopier
 * JD-Core Version:    0.6.2
 */