package com.google.common.logging;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class GlassExtensionsNano
{
  public static final class GlassExtensionsProto extends MessageNano
  {
    public static final GlassExtensionsProto[] EMPTY_ARRAY = new GlassExtensionsProto[0];
    private int cachedSize = -1;
    public int hardwareVersion = -2147483648;
    public String sessionId;
    public String softwareVersion;
    public GlassExtensionsNano.GlassUserEventProto[] userEvent = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;

    public static GlassExtensionsProto parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassExtensionsProto().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassExtensionsProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassExtensionsProto)MessageNano.mergeFrom(new GlassExtensionsProto(), paramArrayOfByte);
    }

    public final GlassExtensionsProto clear()
    {
      this.sessionId = null;
      this.softwareVersion = null;
      this.userEvent = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;
      this.hardwareVersion = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label93: label108: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof GlassExtensionsProto))
          return false;
        GlassExtensionsProto localGlassExtensionsProto = (GlassExtensionsProto)paramObject;
        if (this.sessionId == null)
          if (localGlassExtensionsProto.sessionId == null)
          {
            if (this.softwareVersion != null)
              break label93;
            if (localGlassExtensionsProto.softwareVersion != null);
          }
        while (true)
        {
          if ((Arrays.equals(this.userEvent, localGlassExtensionsProto.userEvent)) && (this.hardwareVersion == localGlassExtensionsProto.hardwareVersion))
            break label108;
          do
          {
            do
              return false;
            while (!this.sessionId.equals(localGlassExtensionsProto.sessionId));
            break;
          }
          while (!this.softwareVersion.equals(localGlassExtensionsProto.softwareVersion));
        }
      }
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.sessionId;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.sessionId);
      if (this.softwareVersion != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.softwareVersion);
      if (this.userEvent != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEvent;
        int j = arrayOfGlassUserEventProto.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfGlassUserEventProto[k]);
      }
      if (this.hardwareVersion != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.hardwareVersion);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.sessionId == null)
      {
        i = 0;
        j = 31 * (i + 527);
        if (this.softwareVersion != null)
          break label68;
      }
      int m;
      label68: for (int k = 0; ; k = this.softwareVersion.hashCode())
      {
        m = j + k;
        if (this.userEvent != null)
          break label79;
        m *= 31;
        return m * 31 + this.hardwareVersion;
        i = this.sessionId.hashCode();
        break;
      }
      label79: int n = 0;
      label82: int i1;
      if (n < this.userEvent.length)
      {
        i1 = m * 31;
        if (this.userEvent[n] != null)
          break label125;
      }
      label125: for (int i2 = 0; ; i2 = this.userEvent[n].hashCode())
      {
        m = i1 + i2;
        n++;
        break label82;
        break;
      }
    }

    public GlassExtensionsProto mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 10:
          this.sessionId = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.softwareVersion = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          if (this.userEvent == null);
          for (int k = 0; ; k = this.userEvent.length)
          {
            GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = new GlassExtensionsNano.GlassUserEventProto[k + j];
            if (this.userEvent != null)
              System.arraycopy(this.userEvent, 0, arrayOfGlassUserEventProto, 0, k);
            this.userEvent = arrayOfGlassUserEventProto;
            while (k < -1 + this.userEvent.length)
            {
              this.userEvent[k] = new GlassExtensionsNano.GlassUserEventProto();
              paramCodedInputByteBufferNano.readMessage(this.userEvent[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.userEvent[k] = new GlassExtensionsNano.GlassUserEventProto();
          paramCodedInputByteBufferNano.readMessage(this.userEvent[k]);
          break;
        case 32:
        }
        this.hardwareVersion = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.sessionId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.sessionId);
      if (this.softwareVersion != null)
        paramCodedOutputByteBufferNano.writeString(2, this.softwareVersion);
      if (this.userEvent != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEvent;
        int i = arrayOfGlassUserEventProto.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfGlassUserEventProto[j]);
      }
      if (this.hardwareVersion != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(4, this.hardwareVersion);
    }
  }

  public static final class GlassUserEventFrequencyStat extends MessageNano
  {
    public static final GlassUserEventFrequencyStat[] EMPTY_ARRAY = new GlassUserEventFrequencyStat[0];
    private int cachedSize = -1;
    public Long durationMs;
    public Long frequencyHz;

    public static GlassUserEventFrequencyStat parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassUserEventFrequencyStat().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassUserEventFrequencyStat parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassUserEventFrequencyStat)MessageNano.mergeFrom(new GlassUserEventFrequencyStat(), paramArrayOfByte);
    }

    public final GlassUserEventFrequencyStat clear()
    {
      this.frequencyHz = null;
      this.durationMs = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassUserEventFrequencyStat localGlassUserEventFrequencyStat;
      do
      {
        return true;
        if (!(paramObject instanceof GlassUserEventFrequencyStat))
          return false;
        localGlassUserEventFrequencyStat = (GlassUserEventFrequencyStat)paramObject;
        if (this.frequencyHz != null)
          break label51;
        if (localGlassUserEventFrequencyStat.frequencyHz != null)
          break;
        if (this.durationMs != null)
          break label68;
      }
      while (localGlassUserEventFrequencyStat.durationMs == null);
      label51: label68: 
      while (!this.durationMs.equals(localGlassUserEventFrequencyStat.durationMs))
      {
        do
          return false;
        while (!this.frequencyHz.equals(localGlassUserEventFrequencyStat.frequencyHz));
        break;
      }
      return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt64Size(1, this.frequencyHz.longValue()) + CodedOutputByteBufferNano.computeInt64Size(2, this.durationMs.longValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      int k;
      if (this.frequencyHz == null)
      {
        i = 0;
        j = 31 * (i + 527);
        Long localLong = this.durationMs;
        k = 0;
        if (localLong != null)
          break label58;
      }
      while (true)
      {
        return j + k;
        i = (int)(this.frequencyHz.longValue() ^ this.frequencyHz.longValue() >>> 32);
        break;
        label58: k = (int)(this.durationMs.longValue() ^ this.durationMs.longValue() >>> 32);
      }
    }

    public GlassUserEventFrequencyStat mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 8:
          this.frequencyHz = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 16:
        }
        this.durationMs = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt64(1, this.frequencyHz.longValue());
      paramCodedOutputByteBufferNano.writeInt64(2, this.durationMs.longValue());
    }
  }

  public static final class GlassUserEventPerformanceStats extends MessageNano
  {
    public static final GlassUserEventPerformanceStats[] EMPTY_ARRAY = new GlassUserEventPerformanceStats[0];
    public Integer batteryChargeWhenFullUah;
    public Integer batteryStateOfChargeUah;
    public Integer batteryTemperatureMilliCentigrade;
    public Integer boardTemperatureMilliCentigrade;
    private int cachedSize = -1;
    public Integer frequencyScalingGovernor;
    public GlassExtensionsNano.GlassUserEventFrequencyStat[] frequencyStat = GlassExtensionsNano.GlassUserEventFrequencyStat.EMPTY_ARRAY;
    public Integer reportedSoc;
    public Long totalBytesSent;
    public Long totalKernelMs;

    public static GlassUserEventPerformanceStats parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassUserEventPerformanceStats().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassUserEventPerformanceStats parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassUserEventPerformanceStats)MessageNano.mergeFrom(new GlassUserEventPerformanceStats(), paramArrayOfByte);
    }

    public final GlassUserEventPerformanceStats clear()
    {
      this.frequencyStat = GlassExtensionsNano.GlassUserEventFrequencyStat.EMPTY_ARRAY;
      this.totalKernelMs = null;
      this.boardTemperatureMilliCentigrade = null;
      this.batteryStateOfChargeUah = null;
      this.batteryChargeWhenFullUah = null;
      this.reportedSoc = null;
      this.batteryTemperatureMilliCentigrade = null;
      this.totalBytesSent = null;
      this.frequencyScalingGovernor = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassUserEventPerformanceStats localGlassUserEventPerformanceStats;
      label63: label77: label91: label105: label119: 
      do
      {
        return true;
        if (!(paramObject instanceof GlassUserEventPerformanceStats))
          return false;
        localGlassUserEventPerformanceStats = (GlassUserEventPerformanceStats)paramObject;
        if (!Arrays.equals(this.frequencyStat, localGlassUserEventPerformanceStats.frequencyStat))
          break;
        if (this.totalKernelMs != null)
          break label149;
        if (localGlassUserEventPerformanceStats.totalKernelMs != null)
          break;
        if (this.boardTemperatureMilliCentigrade != null)
          break label166;
        if (localGlassUserEventPerformanceStats.boardTemperatureMilliCentigrade != null)
          break;
        if (this.batteryStateOfChargeUah != null)
          break label183;
        if (localGlassUserEventPerformanceStats.batteryStateOfChargeUah != null)
          break;
        if (this.batteryChargeWhenFullUah != null)
          break label200;
        if (localGlassUserEventPerformanceStats.batteryChargeWhenFullUah != null)
          break;
        if (this.reportedSoc != null)
          break label217;
        if (localGlassUserEventPerformanceStats.reportedSoc != null)
          break;
        if (this.batteryTemperatureMilliCentigrade != null)
          break label234;
        if (localGlassUserEventPerformanceStats.batteryTemperatureMilliCentigrade != null)
          break;
        if (this.totalBytesSent != null)
          break label251;
        if (localGlassUserEventPerformanceStats.totalBytesSent != null)
          break;
        if (this.frequencyScalingGovernor != null)
          break label268;
      }
      while (localGlassUserEventPerformanceStats.frequencyScalingGovernor == null);
      label133: label149: label166: label183: label200: label217: label234: label251: 
      while (!this.frequencyScalingGovernor.equals(localGlassUserEventPerformanceStats.frequencyScalingGovernor))
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                      return false;
                    while (!this.totalKernelMs.equals(localGlassUserEventPerformanceStats.totalKernelMs));
                    break;
                  }
                  while (!this.boardTemperatureMilliCentigrade.equals(localGlassUserEventPerformanceStats.boardTemperatureMilliCentigrade));
                  break label63;
                }
                while (!this.batteryStateOfChargeUah.equals(localGlassUserEventPerformanceStats.batteryStateOfChargeUah));
                break label77;
              }
              while (!this.batteryChargeWhenFullUah.equals(localGlassUserEventPerformanceStats.batteryChargeWhenFullUah));
              break label91;
            }
            while (!this.reportedSoc.equals(localGlassUserEventPerformanceStats.reportedSoc));
            break label105;
          }
          while (!this.batteryTemperatureMilliCentigrade.equals(localGlassUserEventPerformanceStats.batteryTemperatureMilliCentigrade));
          break label119;
        }
        while (!this.totalBytesSent.equals(localGlassUserEventPerformanceStats.totalBytesSent));
        break label133;
      }
      label268: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat1 = this.frequencyStat;
      int i = 0;
      if (arrayOfGlassUserEventFrequencyStat1 != null)
      {
        GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat2 = this.frequencyStat;
        int j = arrayOfGlassUserEventFrequencyStat2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfGlassUserEventFrequencyStat2[k]);
      }
      if (this.totalKernelMs != null)
        i += CodedOutputByteBufferNano.computeInt64Size(2, this.totalKernelMs.longValue());
      if (this.boardTemperatureMilliCentigrade != null)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.boardTemperatureMilliCentigrade.intValue());
      if (this.batteryStateOfChargeUah != null)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.batteryStateOfChargeUah.intValue());
      if (this.batteryChargeWhenFullUah != null)
        i += CodedOutputByteBufferNano.computeInt32Size(5, this.batteryChargeWhenFullUah.intValue());
      if (this.batteryTemperatureMilliCentigrade != null)
        i += CodedOutputByteBufferNano.computeInt32Size(6, this.batteryTemperatureMilliCentigrade.intValue());
      if (this.totalBytesSent != null)
        i += CodedOutputByteBufferNano.computeInt64Size(7, this.totalBytesSent.longValue());
      if (this.reportedSoc != null)
        i += CodedOutputByteBufferNano.computeInt32Size(8, this.reportedSoc.intValue());
      if (this.frequencyScalingGovernor != null)
        i += CodedOutputByteBufferNano.computeInt32Size(9, this.frequencyScalingGovernor.intValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      int i1;
      label31: int i3;
      label51: int i5;
      label71: int i7;
      label91: int i9;
      label111: int i11;
      label131: int i13;
      label151: int i14;
      int i15;
      if (this.frequencyStat == null)
      {
        i *= 31;
        int n = i * 31;
        if (this.totalKernelMs != null)
          break label234;
        i1 = 0;
        int i2 = 31 * (n + i1);
        if (this.boardTemperatureMilliCentigrade != null)
          break label258;
        i3 = 0;
        int i4 = 31 * (i2 + i3);
        if (this.batteryStateOfChargeUah != null)
          break label270;
        i5 = 0;
        int i6 = 31 * (i4 + i5);
        if (this.batteryChargeWhenFullUah != null)
          break label282;
        i7 = 0;
        int i8 = 31 * (i6 + i7);
        if (this.reportedSoc != null)
          break label294;
        i9 = 0;
        int i10 = 31 * (i8 + i9);
        if (this.batteryTemperatureMilliCentigrade != null)
          break label306;
        i11 = 0;
        int i12 = 31 * (i10 + i11);
        if (this.totalBytesSent != null)
          break label318;
        i13 = 0;
        i14 = 31 * (i12 + i13);
        Integer localInteger = this.frequencyScalingGovernor;
        i15 = 0;
        if (localInteger != null)
          break label342;
      }
      while (true)
      {
        return i14 + i15;
        int j = 0;
        label183: int k;
        if (j < this.frequencyStat.length)
        {
          k = i * 31;
          if (this.frequencyStat[j] != null)
            break label220;
        }
        label220: for (int m = 0; ; m = this.frequencyStat[j].hashCode())
        {
          i = k + m;
          j++;
          break label183;
          break;
        }
        label234: i1 = (int)(this.totalKernelMs.longValue() ^ this.totalKernelMs.longValue() >>> 32);
        break label31;
        label258: i3 = this.boardTemperatureMilliCentigrade.intValue();
        break label51;
        label270: i5 = this.batteryStateOfChargeUah.intValue();
        break label71;
        label282: i7 = this.batteryChargeWhenFullUah.intValue();
        break label91;
        label294: i9 = this.reportedSoc.intValue();
        break label111;
        label306: i11 = this.batteryTemperatureMilliCentigrade.intValue();
        break label131;
        label318: i13 = (int)(this.totalBytesSent.longValue() ^ this.totalBytesSent.longValue() >>> 32);
        break label151;
        label342: i15 = this.frequencyScalingGovernor.intValue();
      }
    }

    public GlassUserEventPerformanceStats mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 10:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 10);
          if (this.frequencyStat == null);
          for (int k = 0; ; k = this.frequencyStat.length)
          {
            GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat = new GlassExtensionsNano.GlassUserEventFrequencyStat[k + j];
            if (this.frequencyStat != null)
              System.arraycopy(this.frequencyStat, 0, arrayOfGlassUserEventFrequencyStat, 0, k);
            this.frequencyStat = arrayOfGlassUserEventFrequencyStat;
            while (k < -1 + this.frequencyStat.length)
            {
              this.frequencyStat[k] = new GlassExtensionsNano.GlassUserEventFrequencyStat();
              paramCodedInputByteBufferNano.readMessage(this.frequencyStat[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.frequencyStat[k] = new GlassExtensionsNano.GlassUserEventFrequencyStat();
          paramCodedInputByteBufferNano.readMessage(this.frequencyStat[k]);
          break;
        case 16:
          this.totalKernelMs = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 24:
          this.boardTemperatureMilliCentigrade = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 32:
          this.batteryStateOfChargeUah = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 40:
          this.batteryChargeWhenFullUah = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 48:
          this.batteryTemperatureMilliCentigrade = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 56:
          this.totalBytesSent = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 64:
          this.reportedSoc = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 72:
        }
        this.frequencyScalingGovernor = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.frequencyStat != null)
      {
        GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat = this.frequencyStat;
        int i = arrayOfGlassUserEventFrequencyStat.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfGlassUserEventFrequencyStat[j]);
      }
      if (this.totalKernelMs != null)
        paramCodedOutputByteBufferNano.writeInt64(2, this.totalKernelMs.longValue());
      if (this.boardTemperatureMilliCentigrade != null)
        paramCodedOutputByteBufferNano.writeInt32(3, this.boardTemperatureMilliCentigrade.intValue());
      if (this.batteryStateOfChargeUah != null)
        paramCodedOutputByteBufferNano.writeInt32(4, this.batteryStateOfChargeUah.intValue());
      if (this.batteryChargeWhenFullUah != null)
        paramCodedOutputByteBufferNano.writeInt32(5, this.batteryChargeWhenFullUah.intValue());
      if (this.batteryTemperatureMilliCentigrade != null)
        paramCodedOutputByteBufferNano.writeInt32(6, this.batteryTemperatureMilliCentigrade.intValue());
      if (this.totalBytesSent != null)
        paramCodedOutputByteBufferNano.writeInt64(7, this.totalBytesSent.longValue());
      if (this.reportedSoc != null)
        paramCodedOutputByteBufferNano.writeInt32(8, this.reportedSoc.intValue());
      if (this.frequencyScalingGovernor != null)
        paramCodedOutputByteBufferNano.writeInt32(9, this.frequencyScalingGovernor.intValue());
    }
  }

  public static final class GlassUserEventProto extends MessageNano
  {
    public static final GlassUserEventProto[] EMPTY_ARRAY = new GlassUserEventProto[0];
    private int cachedSize = -1;
    public String eventData;
    public Long eventSerial;
    public Long eventTimeMs;
    public String eventType;
    public GlassExtensionsNano.GlassUserEventPerformanceStats performanceStats = null;

    public static GlassUserEventProto parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassUserEventProto().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassUserEventProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassUserEventProto)MessageNano.mergeFrom(new GlassUserEventProto(), paramArrayOfByte);
    }

    public final GlassUserEventProto clear()
    {
      this.eventTimeMs = null;
      this.eventSerial = null;
      this.eventType = null;
      this.eventData = null;
      this.performanceStats = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassUserEventProto localGlassUserEventProto;
      label49: label63: label77: 
      do
      {
        return true;
        if (!(paramObject instanceof GlassUserEventProto))
          return false;
        localGlassUserEventProto = (GlassUserEventProto)paramObject;
        if (this.eventTimeMs != null)
          break label93;
        if (localGlassUserEventProto.eventTimeMs != null)
          break;
        if (this.eventSerial != null)
          break label110;
        if (localGlassUserEventProto.eventSerial != null)
          break;
        if (this.eventType != null)
          break label127;
        if (localGlassUserEventProto.eventType != null)
          break;
        if (this.eventData != null)
          break label144;
        if (localGlassUserEventProto.eventData != null)
          break;
        if (this.performanceStats != null)
          break label161;
      }
      while (localGlassUserEventProto.performanceStats == null);
      label93: label110: label127: 
      while (!this.performanceStats.equals(localGlassUserEventProto.performanceStats))
      {
        do
        {
          do
          {
            do
            {
              do
                return false;
              while (!this.eventTimeMs.equals(localGlassUserEventProto.eventTimeMs));
              break;
            }
            while (!this.eventSerial.equals(localGlassUserEventProto.eventSerial));
            break label49;
          }
          while (!this.eventType.equals(localGlassUserEventProto.eventType));
          break label63;
        }
        while (!this.eventData.equals(localGlassUserEventProto.eventData));
        break label77;
      }
      label144: label161: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      Long localLong = this.eventTimeMs;
      int i = 0;
      if (localLong != null)
        i = 0 + CodedOutputByteBufferNano.computeInt64Size(1, this.eventTimeMs.longValue());
      if (this.eventType != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.eventType);
      if (this.eventData != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.eventData);
      if (this.performanceStats != null)
        i += CodedOutputByteBufferNano.computeMessageSize(4, this.performanceStats);
      if (this.eventSerial != null)
        i += CodedOutputByteBufferNano.computeInt64Size(5, this.eventSerial.longValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label65: int i3;
      int i4;
      if (this.eventTimeMs == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.eventSerial != null)
          break label118;
        k = 0;
        int m = 31 * (j + k);
        if (this.eventType != null)
          break label141;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.eventData != null)
          break label153;
        i2 = 0;
        i3 = 31 * (i1 + i2);
        GlassExtensionsNano.GlassUserEventPerformanceStats localGlassUserEventPerformanceStats = this.performanceStats;
        i4 = 0;
        if (localGlassUserEventPerformanceStats != null)
          break label165;
      }
      while (true)
      {
        return i3 + i4;
        i = (int)(this.eventTimeMs.longValue() ^ this.eventTimeMs.longValue() >>> 32);
        break;
        label118: k = (int)(this.eventSerial.longValue() ^ this.eventSerial.longValue() >>> 32);
        break label27;
        label141: n = this.eventType.hashCode();
        break label45;
        label153: i2 = this.eventData.hashCode();
        break label65;
        label165: i4 = this.performanceStats.hashCode();
      }
    }

    public GlassUserEventProto mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 8:
          this.eventTimeMs = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 18:
          this.eventType = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.eventData = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.performanceStats = new GlassExtensionsNano.GlassUserEventPerformanceStats();
          paramCodedInputByteBufferNano.readMessage(this.performanceStats);
          break;
        case 40:
        }
        this.eventSerial = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.eventTimeMs != null)
        paramCodedOutputByteBufferNano.writeInt64(1, this.eventTimeMs.longValue());
      if (this.eventType != null)
        paramCodedOutputByteBufferNano.writeString(2, this.eventType);
      if (this.eventData != null)
        paramCodedOutputByteBufferNano.writeString(3, this.eventData);
      if (this.performanceStats != null)
        paramCodedOutputByteBufferNano.writeMessage(4, this.performanceStats);
      if (this.eventSerial != null)
        paramCodedOutputByteBufferNano.writeInt64(5, this.eventSerial.longValue());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassExtensionsNano
 * JD-Core Version:    0.6.2
 */