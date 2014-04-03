package com.google.glass.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class MapRenderingServiceNano
{
  public static final class LatLng extends MessageNano
  {
    public static final LatLng[] EMPTY_ARRAY = new LatLng[0];
    private int cachedSize = -1;
    public Double lat;
    public Double lng;

    public static LatLng parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LatLng().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LatLng parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LatLng)MessageNano.mergeFrom(new LatLng(), paramArrayOfByte);
    }

    public final LatLng clear()
    {
      this.lat = null;
      this.lng = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LatLng localLatLng;
      do
      {
        return true;
        if (!(paramObject instanceof LatLng))
          return false;
        localLatLng = (LatLng)paramObject;
        if (this.lat != null)
          break label51;
        if (localLatLng.lat != null)
          break;
        if (this.lng != null)
          break label68;
      }
      while (localLatLng.lng == null);
      label51: label68: 
      while (!this.lng.equals(localLatLng.lng))
      {
        do
          return false;
        while (!this.lat.equals(localLatLng.lat));
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
      Double localDouble = this.lat;
      int i = 0;
      if (localDouble != null)
        i = 0 + CodedOutputByteBufferNano.computeDoubleSize(1, this.lat.doubleValue());
      if (this.lng != null)
        i += CodedOutputByteBufferNano.computeDoubleSize(2, this.lng.doubleValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      int k;
      if (this.lat == null)
      {
        i = 0;
        j = 31 * (i + 527);
        Double localDouble = this.lng;
        k = 0;
        if (localDouble != null)
          break label64;
      }
      while (true)
      {
        return j + k;
        i = (int)(Double.doubleToLongBits(this.lat.doubleValue()) ^ Double.doubleToLongBits(this.lat.doubleValue()) >>> 32);
        break;
        label64: k = (int)(Double.doubleToLongBits(this.lng.doubleValue()) ^ Double.doubleToLongBits(this.lng.doubleValue()) >>> 32);
      }
    }

    public LatLng mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        case 9:
          this.lat = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 17:
        }
        this.lng = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.lat != null)
        paramCodedOutputByteBufferNano.writeDouble(1, this.lat.doubleValue());
      if (this.lng != null)
        paramCodedOutputByteBufferNano.writeDouble(2, this.lng.doubleValue());
    }
  }

  public static final class MapRenderRequest extends MessageNano
  {
    public static final MapRenderRequest[] EMPTY_ARRAY = new MapRenderRequest[0];
    private int cachedSize = -1;
    public MapRenderingServiceNano.LatLng center = null;
    public Integer height;
    public String id;
    public Double latSpan;
    public Double lngSpan;
    public MapRenderingServiceNano.Marker[] marker = MapRenderingServiceNano.Marker.EMPTY_ARRAY;
    public MapRenderingServiceNano.Polyline[] polyline = MapRenderingServiceNano.Polyline.EMPTY_ARRAY;
    public int type = -2147483648;
    public String uri;
    public Integer width;
    public Float zoom;

    public static MapRenderRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MapRenderRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MapRenderRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MapRenderRequest)MessageNano.mergeFrom(new MapRenderRequest(), paramArrayOfByte);
    }

    public final MapRenderRequest clear()
    {
      this.id = null;
      this.type = -2147483648;
      this.uri = null;
      this.width = null;
      this.height = null;
      this.center = null;
      this.zoom = null;
      this.latSpan = null;
      this.lngSpan = null;
      this.marker = MapRenderingServiceNano.Marker.EMPTY_ARRAY;
      this.polyline = MapRenderingServiceNano.Polyline.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label130: label259: label276: label293: label308: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof MapRenderRequest))
          return false;
        MapRenderRequest localMapRenderRequest = (MapRenderRequest)paramObject;
        if (this.id == null)
          if (localMapRenderRequest.id == null)
            if (this.type == localMapRenderRequest.type)
            {
              if (this.uri != null)
                break label191;
              if (localMapRenderRequest.uri == null)
              {
                label60: if (this.width != null)
                  break label208;
                if (localMapRenderRequest.width == null)
                {
                  label74: if (this.height != null)
                    break label225;
                  if (localMapRenderRequest.height == null)
                  {
                    label88: if (this.center != null)
                      break label242;
                    if (localMapRenderRequest.center == null)
                    {
                      label102: if (this.zoom != null)
                        break label259;
                      if (localMapRenderRequest.zoom == null)
                      {
                        label116: if (this.latSpan != null)
                          break label276;
                        if (localMapRenderRequest.latSpan == null)
                        {
                          if (this.lngSpan != null)
                            break label293;
                          if (localMapRenderRequest.lngSpan != null);
                        }
                      }
                    }
                  }
                }
              }
            }
        while (true)
        {
          if ((Arrays.equals(this.marker, localMapRenderRequest.marker)) && (Arrays.equals(this.polyline, localMapRenderRequest.polyline)))
            break label308;
          label191: label208: label225: label242: 
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
                      {
                        do
                          return false;
                        while (!this.id.equals(localMapRenderRequest.id));
                        break;
                      }
                      while (!this.uri.equals(localMapRenderRequest.uri));
                      break label60;
                    }
                    while (!this.width.equals(localMapRenderRequest.width));
                    break label74;
                  }
                  while (!this.height.equals(localMapRenderRequest.height));
                  break label88;
                }
                while (!this.center.equals(localMapRenderRequest.center));
                break label102;
              }
              while (!this.zoom.equals(localMapRenderRequest.zoom));
              break label116;
            }
            while (!this.latSpan.equals(localMapRenderRequest.latSpan));
            break label130;
          }
          while (!this.lngSpan.equals(localMapRenderRequest.lngSpan));
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
      String str = this.id;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.type != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(2, this.type);
      if (this.width != null)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.width.intValue());
      if (this.height != null)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.height.intValue());
      if (this.center != null)
        i += CodedOutputByteBufferNano.computeMessageSize(5, this.center);
      if (this.zoom != null)
        i += CodedOutputByteBufferNano.computeFloatSize(6, this.zoom.floatValue());
      if (this.latSpan != null)
        i += CodedOutputByteBufferNano.computeDoubleSize(8, this.latSpan.doubleValue());
      if (this.lngSpan != null)
        i += CodedOutputByteBufferNano.computeDoubleSize(9, this.lngSpan.doubleValue());
      if (this.marker != null)
      {
        MapRenderingServiceNano.Marker[] arrayOfMarker = this.marker;
        int m = arrayOfMarker.length;
        for (int n = 0; n < m; n++)
          i += CodedOutputByteBufferNano.computeMessageSize(10, arrayOfMarker[n]);
      }
      if (this.polyline != null)
      {
        MapRenderingServiceNano.Polyline[] arrayOfPolyline = this.polyline;
        int j = arrayOfPolyline.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(11, arrayOfPolyline[k]);
      }
      if (this.uri != null)
        i += CodedOutputByteBufferNano.computeStringSize(12, this.uri);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label35: int n;
      label53: int i2;
      label73: int i4;
      label93: int i6;
      label113: int i8;
      label133: int i9;
      if (this.id == null)
      {
        i = 0;
        int j = 31 * (31 * (i + 527) + this.type);
        if (this.uri != null)
          break label202;
        k = 0;
        int m = 31 * (j + k);
        if (this.width != null)
          break label213;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.height != null)
          break label225;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.center != null)
          break label237;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.zoom != null)
          break label249;
        i6 = 0;
        int i7 = 31 * (i5 + i6);
        if (this.latSpan != null)
          break label264;
        i8 = 0;
        i9 = 31 * (i7 + i8);
        if (this.lngSpan != null)
          break label294;
      }
      int i11;
      label264: label294: for (int i10 = 0; ; i10 = (int)(Double.doubleToLongBits(this.lngSpan.doubleValue()) ^ Double.doubleToLongBits(this.lngSpan.doubleValue()) >>> 32))
      {
        i11 = i9 + i10;
        if (this.marker != null)
          break label324;
        i11 *= 31;
        if (this.polyline != null)
          break label385;
        i11 *= 31;
        return i11;
        i = this.id.hashCode();
        break;
        label202: k = this.uri.hashCode();
        break label35;
        label213: n = this.width.intValue();
        break label53;
        label225: i2 = this.height.intValue();
        break label73;
        label237: i4 = this.center.hashCode();
        break label93;
        label249: i6 = Float.floatToIntBits(this.zoom.floatValue());
        break label113;
        i8 = (int)(Double.doubleToLongBits(this.latSpan.doubleValue()) ^ Double.doubleToLongBits(this.latSpan.doubleValue()) >>> 32);
        break label133;
      }
      label324: int i12 = 0;
      label327: int i13;
      if (i12 < this.marker.length)
      {
        i13 = i11 * 31;
        if (this.marker[i12] != null)
          break label370;
      }
      label370: for (int i14 = 0; ; i14 = this.marker[i12].hashCode())
      {
        i11 = i13 + i14;
        i12++;
        break label327;
        break;
      }
      label385: int i15 = 0;
      label388: int i16;
      if (i15 < this.polyline.length)
      {
        i16 = i11 * 31;
        if (this.polyline[i15] != null)
          break label431;
      }
      label431: for (int i17 = 0; ; i17 = this.polyline[i15].hashCode())
      {
        i11 = i16 + i17;
        i15++;
        break label388;
        break;
      }
    }

    public MapRenderRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 16:
          this.type = paramCodedInputByteBufferNano.readInt32();
          break;
        case 24:
          this.width = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 32:
          this.height = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 42:
          this.center = new MapRenderingServiceNano.LatLng();
          paramCodedInputByteBufferNano.readMessage(this.center);
          break;
        case 53:
          this.zoom = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 65:
          this.latSpan = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 73:
          this.lngSpan = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 82:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 82);
          if (this.marker == null);
          for (int n = 0; ; n = this.marker.length)
          {
            MapRenderingServiceNano.Marker[] arrayOfMarker = new MapRenderingServiceNano.Marker[n + m];
            if (this.marker != null)
              System.arraycopy(this.marker, 0, arrayOfMarker, 0, n);
            this.marker = arrayOfMarker;
            while (n < -1 + this.marker.length)
            {
              this.marker[n] = new MapRenderingServiceNano.Marker();
              paramCodedInputByteBufferNano.readMessage(this.marker[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.marker[n] = new MapRenderingServiceNano.Marker();
          paramCodedInputByteBufferNano.readMessage(this.marker[n]);
          break;
        case 90:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 90);
          if (this.polyline == null);
          for (int k = 0; ; k = this.polyline.length)
          {
            MapRenderingServiceNano.Polyline[] arrayOfPolyline = new MapRenderingServiceNano.Polyline[k + j];
            if (this.polyline != null)
              System.arraycopy(this.polyline, 0, arrayOfPolyline, 0, k);
            this.polyline = arrayOfPolyline;
            while (k < -1 + this.polyline.length)
            {
              this.polyline[k] = new MapRenderingServiceNano.Polyline();
              paramCodedInputByteBufferNano.readMessage(this.polyline[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.polyline[k] = new MapRenderingServiceNano.Polyline();
          paramCodedInputByteBufferNano.readMessage(this.polyline[k]);
          break;
        case 98:
        }
        this.uri = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(2, this.type);
      if (this.width != null)
        paramCodedOutputByteBufferNano.writeInt32(3, this.width.intValue());
      if (this.height != null)
        paramCodedOutputByteBufferNano.writeInt32(4, this.height.intValue());
      if (this.center != null)
        paramCodedOutputByteBufferNano.writeMessage(5, this.center);
      if (this.zoom != null)
        paramCodedOutputByteBufferNano.writeFloat(6, this.zoom.floatValue());
      if (this.latSpan != null)
        paramCodedOutputByteBufferNano.writeDouble(8, this.latSpan.doubleValue());
      if (this.lngSpan != null)
        paramCodedOutputByteBufferNano.writeDouble(9, this.lngSpan.doubleValue());
      if (this.marker != null)
      {
        MapRenderingServiceNano.Marker[] arrayOfMarker = this.marker;
        int k = arrayOfMarker.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(10, arrayOfMarker[m]);
      }
      if (this.polyline != null)
      {
        MapRenderingServiceNano.Polyline[] arrayOfPolyline = this.polyline;
        int i = arrayOfPolyline.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(11, arrayOfPolyline[j]);
      }
      if (this.uri != null)
        paramCodedOutputByteBufferNano.writeString(12, this.uri);
    }

    public final class Type
    {
      public static final int CANCEL = 2;
      public static final int RENDER_MAP = 1;

      public Type()
      {
      }
    }
  }

  public static final class MapRenderResponse extends MessageNano
  {
    public static final MapRenderResponse[] EMPTY_ARRAY = new MapRenderResponse[0];
    private int cachedSize = -1;
    public String id;
    public byte[] image;

    public static MapRenderResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MapRenderResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MapRenderResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MapRenderResponse)MessageNano.mergeFrom(new MapRenderResponse(), paramArrayOfByte);
    }

    public final MapRenderResponse clear()
    {
      this.id = null;
      this.image = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof MapRenderResponse))
          return false;
        MapRenderResponse localMapRenderResponse = (MapRenderResponse)paramObject;
        if (this.id == null)
          if (localMapRenderResponse.id != null);
        while (!Arrays.equals(this.image, localMapRenderResponse.image))
          do
            return false;
          while (!this.id.equals(localMapRenderResponse.id));
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
      int i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.image != null)
        i += CodedOutputByteBufferNano.computeBytesSize(2, this.image);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.id == null)
      {
        i = 0;
        j = i + 527;
        if (this.image != null)
          break label40;
        j *= 31;
      }
      while (true)
      {
        return j;
        i = this.id.hashCode();
        break;
        label40: for (int k = 0; k < this.image.length; k++)
          j = j * 31 + this.image[k];
      }
    }

    public MapRenderResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
        }
        this.image = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.image != null)
        paramCodedOutputByteBufferNano.writeBytes(2, this.image);
    }
  }

  public static final class Marker extends MessageNano
  {
    public static final Marker[] EMPTY_ARRAY = new Marker[0];
    private int cachedSize = -1;
    public MapRenderingServiceNano.LatLng location = null;
    public int type = -2147483648;

    public static Marker parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Marker().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Marker parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Marker)MessageNano.mergeFrom(new Marker(), paramArrayOfByte);
    }

    public final Marker clear()
    {
      this.type = -2147483648;
      this.location = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Marker localMarker;
      do
      {
        return true;
        if (!(paramObject instanceof Marker))
          return false;
        localMarker = (Marker)paramObject;
        if (this.type != localMarker.type)
          break;
        if (this.location != null)
          break label48;
      }
      while (localMarker.location == null);
      label48: 
      while (!this.location.equals(localMarker.location))
        return false;
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
      int i = this.type;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      if (this.location != null)
        j += CodedOutputByteBufferNano.computeMessageSize(2, this.location);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      if (this.location == null);
      for (int j = 0; ; j = this.location.hashCode())
        return i + j;
    }

    public Marker mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.type = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
        }
        this.location = new MapRenderingServiceNano.LatLng();
        paramCodedInputByteBufferNano.readMessage(this.location);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      if (this.location != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.location);
    }

    public final class MarkerType
    {
      public static final int TYPE_MY_LOCATION = 1;
      public static final int TYPE_PLACEMARK;

      public MarkerType()
      {
      }
    }
  }

  public static final class Polyline extends MessageNano
  {
    public static final Polyline[] EMPTY_ARRAY = new Polyline[0];
    private int cachedSize = -1;
    public Integer colorArgb;
    public MapRenderingServiceNano.LatLng[] vertex = MapRenderingServiceNano.LatLng.EMPTY_ARRAY;
    public Float width;

    public static Polyline parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Polyline().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Polyline parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Polyline)MessageNano.mergeFrom(new Polyline(), paramArrayOfByte);
    }

    public final Polyline clear()
    {
      this.vertex = MapRenderingServiceNano.LatLng.EMPTY_ARRAY;
      this.width = null;
      this.colorArgb = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Polyline localPolyline;
      do
      {
        return true;
        if (!(paramObject instanceof Polyline))
          return false;
        localPolyline = (Polyline)paramObject;
        if (!Arrays.equals(this.vertex, localPolyline.vertex))
          break;
        if (this.width != null)
          break label65;
        if (localPolyline.width != null)
          break;
        if (this.colorArgb != null)
          break label82;
      }
      while (localPolyline.colorArgb == null);
      label65: label82: 
      while (!this.colorArgb.equals(localPolyline.colorArgb))
      {
        do
          return false;
        while (!this.width.equals(localPolyline.width));
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
      MapRenderingServiceNano.LatLng[] arrayOfLatLng1 = this.vertex;
      int i = 0;
      if (arrayOfLatLng1 != null)
      {
        MapRenderingServiceNano.LatLng[] arrayOfLatLng2 = this.vertex;
        int j = arrayOfLatLng2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfLatLng2[k]);
      }
      if (this.width != null)
        i += CodedOutputByteBufferNano.computeFloatSize(2, this.width.floatValue());
      if (this.colorArgb != null)
        i += CodedOutputByteBufferNano.computeFixed32Size(3, this.colorArgb.intValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      int i1;
      label31: int i2;
      int i3;
      if (this.vertex == null)
      {
        i *= 31;
        int n = i * 31;
        if (this.width != null)
          break label114;
        i1 = 0;
        i2 = 31 * (n + i1);
        Integer localInteger = this.colorArgb;
        i3 = 0;
        if (localInteger != null)
          break label129;
      }
      while (true)
      {
        return i2 + i3;
        int j = 0;
        label63: int k;
        if (j < this.vertex.length)
        {
          k = i * 31;
          if (this.vertex[j] != null)
            break label100;
        }
        label100: for (int m = 0; ; m = this.vertex[j].hashCode())
        {
          i = k + m;
          j++;
          break label63;
          break;
        }
        label114: i1 = Float.floatToIntBits(this.width.floatValue());
        break label31;
        label129: i3 = this.colorArgb.intValue();
      }
    }

    public Polyline mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.vertex == null);
          for (int k = 0; ; k = this.vertex.length)
          {
            MapRenderingServiceNano.LatLng[] arrayOfLatLng = new MapRenderingServiceNano.LatLng[k + j];
            if (this.vertex != null)
              System.arraycopy(this.vertex, 0, arrayOfLatLng, 0, k);
            this.vertex = arrayOfLatLng;
            while (k < -1 + this.vertex.length)
            {
              this.vertex[k] = new MapRenderingServiceNano.LatLng();
              paramCodedInputByteBufferNano.readMessage(this.vertex[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.vertex[k] = new MapRenderingServiceNano.LatLng();
          paramCodedInputByteBufferNano.readMessage(this.vertex[k]);
          break;
        case 21:
          this.width = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 29:
        }
        this.colorArgb = Integer.valueOf(paramCodedInputByteBufferNano.readFixed32());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.vertex != null)
      {
        MapRenderingServiceNano.LatLng[] arrayOfLatLng = this.vertex;
        int i = arrayOfLatLng.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfLatLng[j]);
      }
      if (this.width != null)
        paramCodedOutputByteBufferNano.writeFloat(2, this.width.floatValue());
      if (this.colorArgb != null)
        paramCodedOutputByteBufferNano.writeFixed32(3, this.colorArgb.intValue());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MapRenderingServiceNano
 * JD-Core Version:    0.6.2
 */