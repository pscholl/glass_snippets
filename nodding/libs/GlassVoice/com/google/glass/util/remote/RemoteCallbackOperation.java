package com.google.glass.util.remote;

import android.os.IInterface;
import android.os.RemoteException;

public abstract interface RemoteCallbackOperation<Callback extends IInterface>
{
  public abstract void doOperation(Callback paramCallback)
    throws RemoteException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.remote.RemoteCallbackOperation
 * JD-Core Version:    0.6.2
 */