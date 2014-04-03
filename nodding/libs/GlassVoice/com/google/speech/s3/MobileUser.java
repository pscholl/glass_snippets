package com.google.speech.s3;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class MobileUser
{
  public static final class MobileUserInfo extends MessageMicro
  {
    public static final int NETWORK_MCC_FIELD_NUMBER = 1;
    public static final int NETWORK_MNC_FIELD_NUMBER = 2;
    public static final int NETWORK_TYPE_BLUETOOTH = 17;
    public static final int NETWORK_TYPE_CDMA = 3;
    public static final int NETWORK_TYPE_EDGE = 4;
    public static final int NETWORK_TYPE_EHRPD = 5;
    public static final int NETWORK_TYPE_ETHERNET = 18;
    public static final int NETWORK_TYPE_EVDO_0 = 6;
    public static final int NETWORK_TYPE_EVDO_A = 7;
    public static final int NETWORK_TYPE_EVDO_B = 8;
    public static final int NETWORK_TYPE_FIELD_NUMBER = 5;
    public static final int NETWORK_TYPE_GPRS = 9;
    public static final int NETWORK_TYPE_HSDPA = 10;
    public static final int NETWORK_TYPE_HSPA = 11;
    public static final int NETWORK_TYPE_HSPAP = 12;
    public static final int NETWORK_TYPE_HSUPA = 13;
    public static final int NETWORK_TYPE_IDEN = 14;
    public static final int NETWORK_TYPE_LTE = 15;
    public static final int NETWORK_TYPE_RTT = 2;
    public static final int NETWORK_TYPE_UMTS = 16;
    public static final int NETWORK_TYPE_UNKNOWN = 0;
    public static final int NETWORK_TYPE_UNKNOWN_CELLULAR = 20;
    public static final int NETWORK_TYPE_WIFI = 1;
    public static final int NETWORK_TYPE_WIMAX = 19;
    public static final int SIM_MCC_FIELD_NUMBER = 3;
    public static final int SIM_MNC_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private boolean hasNetworkMcc;
    private boolean hasNetworkMnc;
    private boolean hasNetworkType;
    private boolean hasSimMcc;
    private boolean hasSimMnc;
    private int networkMcc_ = 0;
    private int networkMnc_ = 0;
    private int networkType_ = 0;
    private int simMcc_ = 0;
    private int simMnc_ = 0;

    public static MobileUserInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MobileUserInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MobileUserInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MobileUserInfo)new MobileUserInfo().mergeFrom(paramArrayOfByte);
    }

    public final MobileUserInfo clear()
    {
      clearNetworkMcc();
      clearNetworkMnc();
      clearSimMcc();
      clearSimMnc();
      clearNetworkType();
      this.cachedSize = -1;
      return this;
    }

    public MobileUserInfo clearNetworkMcc()
    {
      this.hasNetworkMcc = false;
      this.networkMcc_ = 0;
      return this;
    }

    public MobileUserInfo clearNetworkMnc()
    {
      this.hasNetworkMnc = false;
      this.networkMnc_ = 0;
      return this;
    }

    public MobileUserInfo clearNetworkType()
    {
      this.hasNetworkType = false;
      this.networkType_ = 0;
      return this;
    }

    public MobileUserInfo clearSimMcc()
    {
      this.hasSimMcc = false;
      this.simMcc_ = 0;
      return this;
    }

    public MobileUserInfo clearSimMnc()
    {
      this.hasSimMnc = false;
      this.simMnc_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getNetworkMcc()
    {
      return this.networkMcc_;
    }

    public int getNetworkMnc()
    {
      return this.networkMnc_;
    }

    public int getNetworkType()
    {
      return this.networkType_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasNetworkMcc();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getNetworkMcc());
      if (hasNetworkMnc())
        i += CodedOutputStreamMicro.computeInt32Size(2, getNetworkMnc());
      if (hasSimMcc())
        i += CodedOutputStreamMicro.computeInt32Size(3, getSimMcc());
      if (hasSimMnc())
        i += CodedOutputStreamMicro.computeInt32Size(4, getSimMnc());
      if (hasNetworkType())
        i += CodedOutputStreamMicro.computeInt32Size(5, getNetworkType());
      this.cachedSize = i;
      return i;
    }

    public int getSimMcc()
    {
      return this.simMcc_;
    }

    public int getSimMnc()
    {
      return this.simMnc_;
    }

    public boolean hasNetworkMcc()
    {
      return this.hasNetworkMcc;
    }

    public boolean hasNetworkMnc()
    {
      return this.hasNetworkMnc;
    }

    public boolean hasNetworkType()
    {
      return this.hasNetworkType;
    }

    public boolean hasSimMcc()
    {
      return this.hasSimMcc;
    }

    public boolean hasSimMnc()
    {
      return this.hasSimMnc;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MobileUserInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setNetworkMcc(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setNetworkMnc(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setSimMcc(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setSimMnc(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
        }
        setNetworkType(paramCodedInputStreamMicro.readInt32());
      }
    }

    public MobileUserInfo setNetworkMcc(int paramInt)
    {
      this.hasNetworkMcc = true;
      this.networkMcc_ = paramInt;
      return this;
    }

    public MobileUserInfo setNetworkMnc(int paramInt)
    {
      this.hasNetworkMnc = true;
      this.networkMnc_ = paramInt;
      return this;
    }

    public MobileUserInfo setNetworkType(int paramInt)
    {
      this.hasNetworkType = true;
      this.networkType_ = paramInt;
      return this;
    }

    public MobileUserInfo setSimMcc(int paramInt)
    {
      this.hasSimMcc = true;
      this.simMcc_ = paramInt;
      return this;
    }

    public MobileUserInfo setSimMnc(int paramInt)
    {
      this.hasSimMnc = true;
      this.simMnc_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasNetworkMcc())
        paramCodedOutputStreamMicro.writeInt32(1, getNetworkMcc());
      if (hasNetworkMnc())
        paramCodedOutputStreamMicro.writeInt32(2, getNetworkMnc());
      if (hasSimMcc())
        paramCodedOutputStreamMicro.writeInt32(3, getSimMcc());
      if (hasSimMnc())
        paramCodedOutputStreamMicro.writeInt32(4, getSimMnc());
      if (hasNetworkType())
        paramCodedOutputStreamMicro.writeInt32(5, getNetworkType());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.s3.MobileUser
 * JD-Core Version:    0.6.2
 */