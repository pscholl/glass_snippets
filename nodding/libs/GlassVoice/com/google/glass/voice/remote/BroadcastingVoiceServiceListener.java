package com.google.glass.voice.remote;

import android.os.RemoteException;
import com.google.glass.util.remote.RemoteCallbackBroadcaster;
import com.google.glass.util.remote.RemoteCallbackBroadcaster.BroadcastTo;
import com.google.glass.util.remote.RemoteCallbackOperation;
import com.google.glass.voice.IVoiceServiceListener;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceServiceListener;
import java.util.concurrent.atomic.AtomicReference;

public class BroadcastingVoiceServiceListener extends RemoteCallbackBroadcaster<IVoiceServiceListener>
  implements VoiceServiceListener
{
  private static final String TAG = BroadcastingVoiceServiceListener.class.getSimpleName();

  public String getTag()
  {
    return TAG;
  }

  public void onResampledAudioData(final byte[] paramArrayOfByte, final int paramInt1, final int paramInt2)
  {
    doOperation(RemoteCallbackBroadcaster.BroadcastTo.TOP_OF_STACK, new RemoteVoiceListenerOperation()
    {
      public void doOperation(IVoiceServiceListener paramAnonymousIVoiceServiceListener)
        throws RemoteException
      {
        paramAnonymousIVoiceServiceListener.onResampledAudioData(paramArrayOfByte, paramInt1, paramInt2);
      }
    });
  }

  public void onVoiceAmplitudeChanged(final double paramDouble)
  {
    doOperation(RemoteCallbackBroadcaster.BroadcastTo.TOP_OF_STACK, new RemoteVoiceListenerOperation()
    {
      public void doOperation(IVoiceServiceListener paramAnonymousIVoiceServiceListener)
        throws RemoteException
      {
        paramAnonymousIVoiceServiceListener.onVoiceAmplitudeChanged(paramDouble);
      }
    });
  }

  public VoiceConfig onVoiceCommand(final VoiceCommand paramVoiceCommand)
  {
    final AtomicReference localAtomicReference = new AtomicReference();
    doOperation(RemoteCallbackBroadcaster.BroadcastTo.TOP_OF_STACK, new RemoteVoiceListenerOperation()
    {
      public void doOperation(IVoiceServiceListener paramAnonymousIVoiceServiceListener)
        throws RemoteException
      {
        localAtomicReference.set(paramAnonymousIVoiceServiceListener.onVoiceCommand(paramVoiceCommand));
      }
    });
    return (VoiceConfig)localAtomicReference.get();
  }

  public void onVoiceConfigChanged(final VoiceConfig paramVoiceConfig)
  {
    doOperation(RemoteCallbackBroadcaster.BroadcastTo.TOP_OF_STACK, new RemoteVoiceListenerOperation()
    {
      public void doOperation(IVoiceServiceListener paramAnonymousIVoiceServiceListener)
        throws RemoteException
      {
        paramAnonymousIVoiceServiceListener.onVoiceConfigChanged(paramVoiceConfig);
      }
    });
  }

  static abstract interface RemoteVoiceListenerOperation extends RemoteCallbackOperation<IVoiceServiceListener>
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.remote.BroadcastingVoiceServiceListener
 * JD-Core Version:    0.6.2
 */