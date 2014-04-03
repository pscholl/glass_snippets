package com.google.android.speech.callback;

public abstract interface Callback<T, K> extends SimpleCallback<T>
{
  public abstract void onError(K paramK);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.callback.Callback
 * JD-Core Version:    0.6.2
 */