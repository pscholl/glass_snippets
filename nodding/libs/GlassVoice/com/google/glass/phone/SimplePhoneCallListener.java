package com.google.glass.phone;

import com.google.glass.entity.EntityHelper;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;

public class SimplePhoneCallListener extends IPhoneCallListener.Stub
{
  public void onCallConnected(PhoneCall paramPhoneCall)
  {
  }

  public void onCallConnecting(PhoneCall paramPhoneCall)
  {
  }

  public void onCallDisconnected(PhoneCall paramPhoneCall)
  {
  }

  public void onCallDisconnecting(PhoneCall paramPhoneCall)
  {
  }

  public void onCallError(PhoneCall paramPhoneCall)
  {
  }

  public final void onCallerIdentified(PhoneCall paramPhoneCall, byte[] paramArrayOfByte)
  {
    onCallerIdentified(EntityHelper.fromProtoByteArray(paramArrayOfByte));
  }

  public void onCallerIdentified(TimelineNano.Entity paramEntity)
  {
  }

  public void onIncomingCallInitiated(PhoneCall paramPhoneCall)
  {
  }

  public void onOutgoingCallInitiated(PhoneCall paramPhoneCall)
  {
  }

  public void onPhoneNumberSet(PhoneCall paramPhoneCall, String paramString)
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.SimplePhoneCallListener
 * JD-Core Version:    0.6.2
 */