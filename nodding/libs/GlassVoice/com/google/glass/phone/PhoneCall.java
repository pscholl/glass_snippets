package com.google.glass.phone;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;

public final class PhoneCall
  implements Parcelable
{
  public static final int CALL_ERROR_NONE = -1;
  public static final Parcelable.Creator<PhoneCall> CREATOR = new Parcelable.Creator()
  {
    public PhoneCall createFromParcel(Parcel paramAnonymousParcel)
    {
      return new PhoneCall(paramAnonymousParcel, null);
    }

    public PhoneCall[] newArray(int paramAnonymousInt)
    {
      return new PhoneCall[paramAnonymousInt];
    }
  };
  public static final String EXTRA_ENTITY = "entity";
  public static final String EXTRA_PHONE_CALL = "phone_call";
  private static final int NO_CALL_END_TIME = -1;
  private static final int PARCEL_FALSE = 0;
  private static final int PARCEL_TRUE = 1;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private boolean accepted;
  private TimelineNano.Entity callerId;
  private CallDirection direction = CallDirection.UNKNOWN;
  private long endTime = -1L;
  private int errorCode = -1;
  private boolean localRingtone = true;
  private boolean missed;
  private String phoneNumber;
  private long startTime;

  public PhoneCall()
  {
  }

  private PhoneCall(Parcel paramParcel)
  {
    this();
    this.phoneNumber = paramParcel.readString();
    if (paramParcel.readInt() == i);
    while (true)
    {
      try
      {
        this.callerId = TimelineNano.Entity.parseFrom(paramParcel.createByteArray());
        this.startTime = paramParcel.readLong();
        this.endTime = paramParcel.readLong();
        this.direction = CallDirection.values()[paramParcel.readInt()];
        if (paramParcel.readInt() == i)
        {
          j = i;
          this.accepted = j;
          if (paramParcel.readInt() != i)
            break label139;
          k = i;
          this.missed = k;
          this.errorCode = paramParcel.readInt();
          if (paramParcel.readInt() != i)
            break label145;
          this.localRingtone = i;
          return;
        }
      }
      catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
      {
        logger.e(localInvalidProtocolBufferNanoException, "Unable to read entity from parcel", new Object[0]);
        return;
      }
      int j = 0;
      continue;
      label139: int k = 0;
      continue;
      label145: i = 0;
    }
  }

  public PhoneCall(PhoneCall paramPhoneCall)
  {
    this();
    this.phoneNumber = paramPhoneCall.phoneNumber;
    this.callerId = paramPhoneCall.callerId;
    this.startTime = paramPhoneCall.startTime;
    this.endTime = paramPhoneCall.endTime;
    this.direction = paramPhoneCall.direction;
    this.accepted = paramPhoneCall.accepted;
    this.missed = paramPhoneCall.missed;
    this.errorCode = paramPhoneCall.errorCode;
    this.localRingtone = paramPhoneCall.localRingtone;
  }

  public static PhoneCall fromBundle(Bundle paramBundle)
  {
    paramBundle.setClassLoader(PhoneCall.class.getClassLoader());
    return (PhoneCall)paramBundle.getParcelable("phone_call");
  }

  public int describeContents()
  {
    return 0;
  }

  public CallDirection getCallDirection()
  {
    return this.direction;
  }

  public long getCallRunTime()
  {
    if (!wasAccepted())
      return 0L;
    if (this.endTime == -1L)
      return SystemClock.uptimeMillis() - this.startTime;
    return this.endTime - this.startTime;
  }

  public long getCallStartTime()
  {
    return this.startTime;
  }

  public TimelineNano.Entity getCallerId()
  {
    if ((this.callerId == null) && (!TextUtils.isEmpty(this.phoneNumber)))
    {
      logger.i("Caller id is null, returning an entity with just a phone number.", new Object[0]);
      TimelineNano.Entity localEntity = new TimelineNano.Entity();
      localEntity.phoneNumber = this.phoneNumber;
      return localEntity;
    }
    return this.callerId;
  }

  public int getError()
  {
    return this.errorCode;
  }

  public boolean getLocalRingtone()
  {
    return this.localRingtone;
  }

  public String getLoggablePhoneNumber()
  {
    if (Build.TYPE.equals("user"))
      return "[phone number redacted]";
    if (!TextUtils.isEmpty(this.phoneNumber))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      String str = String.valueOf(this.phoneNumber);
      int i = str.length() / 3;
      localStringBuilder.append(str.substring(0, i));
      for (int j = i; j < -1 + str.length(); j++)
        localStringBuilder.append("*");
      localStringBuilder.append(str.charAt(-1 + str.length()));
      return localStringBuilder.toString();
    }
    return this.phoneNumber;
  }

  public String getPhoneNumber()
  {
    return this.phoneNumber;
  }

  public boolean hasError()
  {
    return this.errorCode != -1;
  }

  public boolean isIncomingCall()
  {
    return CallDirection.INCOMING.equals(this.direction);
  }

  public boolean isMissedCall()
  {
    return this.missed;
  }

  public void setCallAccepted(boolean paramBoolean)
  {
    this.accepted = paramBoolean;
  }

  public boolean setCallDirection(CallDirection paramCallDirection)
  {
    if (this.direction.equals(paramCallDirection))
    {
      logger.d("Direction did not change from: %s", new Object[] { paramCallDirection });
      return false;
    }
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.direction;
    arrayOfObject[1] = paramCallDirection;
    localFormattingLogger.d("Direction was %s and is now %s", arrayOfObject);
    this.direction = paramCallDirection;
    return true;
  }

  public void setCallerId(TimelineNano.Entity paramEntity)
  {
    this.callerId = paramEntity;
  }

  public void setCallerId(byte[] paramArrayOfByte)
  {
    try
    {
      setCallerId(TimelineNano.Entity.parseFrom(paramArrayOfByte));
      return;
    }
    catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
    {
      logger.w("Failed to parse caller id from byte array.", new Object[0]);
    }
  }

  public void setEndTime(long paramLong)
  {
    if (paramLong != -1L)
    {
      logger.w("Call already ended, not setting a new time.", new Object[0]);
      return;
    }
    this.endTime = paramLong;
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    localFormattingLogger.d("Call ended at %s", arrayOfObject);
  }

  public void setError(int paramInt)
  {
    this.errorCode = paramInt;
  }

  public void setLocalRingtone(boolean paramBoolean)
  {
    this.localRingtone = paramBoolean;
  }

  public void setMissed(boolean paramBoolean)
  {
    if (!isIncomingCall())
      throw new IllegalArgumentException("A missed call cannot be an outgoing call.");
    this.missed = paramBoolean;
  }

  public boolean setPhoneNumber(String paramString)
  {
    if ((TextUtils.isEmpty(this.phoneNumber)) && (!TextUtils.isEmpty(paramString)))
    {
      this.phoneNumber = paramString;
      return true;
    }
    return false;
  }

  public void setStartTime(long paramLong)
  {
    this.startTime = paramLong;
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    localFormattingLogger.d("Call started at %s", arrayOfObject);
  }

  public String toString()
  {
    return "PhoneCall [startTime=" + this.startTime + ", endTime=" + this.endTime + ", direction=" + this.direction + ", accepted=" + this.accepted + ", missed=" + this.missed + ", error=" + this.errorCode + ", getPrintablePhoneNumber()=" + getLoggablePhoneNumber() + ", getCallRunTime()=" + getCallRunTime() + ", getLocalRingtone()=" + getLocalRingtone() + "]";
  }

  public boolean wasAccepted()
  {
    return this.accepted;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.phoneNumber);
    int j;
    int k;
    label81: int m;
    if (this.callerId != null)
    {
      j = i;
      paramParcel.writeInt(j);
      if (this.callerId != null)
        paramParcel.writeByteArray(MessageNano.toByteArray(this.callerId));
      paramParcel.writeLong(this.startTime);
      paramParcel.writeLong(this.endTime);
      paramParcel.writeInt(this.direction.ordinal());
      if (!this.accepted)
        break label130;
      k = i;
      paramParcel.writeInt(k);
      if (!this.missed)
        break label136;
      m = i;
      label97: paramParcel.writeInt(m);
      paramParcel.writeInt(this.errorCode);
      if (!this.localRingtone)
        break label142;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      return;
      j = 0;
      break;
      label130: k = 0;
      break label81;
      label136: m = 0;
      break label97;
      label142: i = 0;
    }
  }

  public static enum CallDirection
  {
    static
    {
      CallDirection[] arrayOfCallDirection = new CallDirection[3];
      arrayOfCallDirection[0] = INCOMING;
      arrayOfCallDirection[1] = OUTGOING;
      arrayOfCallDirection[2] = UNKNOWN;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCall
 * JD-Core Version:    0.6.2
 */