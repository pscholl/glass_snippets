package com.google.glass.companion;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.SystemClock;
import com.google.glass.bluetooth.BluetoothDeviceWrapper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import java.util.concurrent.atomic.AtomicInteger;

public class CompanionMessagingUtil
{
  public static final String ACTION_START_COMPANION_SERVICE = "com.google.glass.bluetooth.COMPANION_SERVICE";
  public static final long EXCLUSIVE_ID = 0L;
  public static final String KEY_ENVELOPE = "Envelope";
  public static final String KEY_MESSENGER = "Messenger";
  public static final String KEY_SCREENCAST_DEVICE = "Screencast_device";
  private static final AtomicInteger UNIQUE_ID_GENERATOR = new AtomicInteger(1);

  public static Bundle createBundle(BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("Screencast_device", paramBluetoothDeviceWrapper);
    return localBundle;
  }

  public static Bundle createBundle(Proto.Envelope paramEnvelope)
  {
    return createBundle(paramEnvelope, null);
  }

  public static Bundle createBundle(Proto.Envelope paramEnvelope, Messenger paramMessenger)
  {
    Bundle localBundle = new Bundle();
    localBundle.putByteArray("Envelope", MessageNano.toByteArray(paramEnvelope));
    if (paramMessenger != null)
      localBundle.putParcelable("Messenger", paramMessenger);
    return localBundle;
  }

  public static Message createMessage(Proto.Envelope paramEnvelope)
  {
    Message localMessage = Message.obtain();
    localMessage.getData().putByteArray("Envelope", MessageNano.toByteArray(paramEnvelope));
    return localMessage;
  }

  public static Proto.Envelope getEnvelope(Bundle paramBundle)
  {
    if (paramBundle.containsKey("Envelope"))
    {
      byte[] arrayOfByte = paramBundle.getByteArray("Envelope");
      if ((arrayOfByte != null) && (arrayOfByte.length > 0))
        try
        {
          Proto.Envelope localEnvelope = Proto.Envelope.parseFrom(arrayOfByte);
          return localEnvelope;
        }
        catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
        {
          FormattingLoggers.getContextLogger().e(localInvalidProtocolBufferNanoException, "Unable to parse envelope proto", new Object[0]);
        }
    }
    return null;
  }

  public static Proto.Envelope getEnvelope(Message paramMessage)
  {
    return getEnvelope(paramMessage.getData());
  }

  public static long getNextUniqueId()
  {
    return UNIQUE_ID_GENERATOR.incrementAndGet() + (Process.myPid() << 31);
  }

  public static Proto.Envelope newEnvelope()
  {
    Proto.Envelope localEnvelope = new Proto.Envelope();
    localEnvelope.version = Integer.valueOf(131078);
    localEnvelope.timeMillis = Long.valueOf(System.currentTimeMillis());
    localEnvelope.uptimeMillis = Long.valueOf(SystemClock.uptimeMillis());
    return localEnvelope;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.CompanionMessagingUtil
 * JD-Core Version:    0.6.2
 */