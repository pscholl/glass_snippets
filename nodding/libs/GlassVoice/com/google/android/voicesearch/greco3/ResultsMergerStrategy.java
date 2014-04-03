package com.google.android.voicesearch.greco3;

public enum ResultsMergerStrategy
{
  static
  {
    EMBEDDED_MERGE_NETWORK = new ResultsMergerStrategy("EMBEDDED_MERGE_NETWORK", 1);
    EMBEDDED_IGNORE_NETWORK = new ResultsMergerStrategy("EMBEDDED_IGNORE_NETWORK", 2);
    EMBEDDED_ONLY = new ResultsMergerStrategy("EMBEDDED_ONLY", 3);
    ResultsMergerStrategy[] arrayOfResultsMergerStrategy = new ResultsMergerStrategy[4];
    arrayOfResultsMergerStrategy[0] = PREFER_NETWORK;
    arrayOfResultsMergerStrategy[1] = EMBEDDED_MERGE_NETWORK;
    arrayOfResultsMergerStrategy[2] = EMBEDDED_IGNORE_NETWORK;
    arrayOfResultsMergerStrategy[3] = EMBEDDED_ONLY;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.voicesearch.greco3.ResultsMergerStrategy
 * JD-Core Version:    0.6.2
 */