package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class ImageDownloadNano
{
  public static final class ImageDownloadRequest extends MessageNano
  {
    public static final ImageDownloadRequest[] EMPTY_ARRAY = new ImageDownloadRequest[0];
    private int cachedSize = -1;
    public Boolean clientSupportsWebp;
    public int cropType = -2147483648;
    public RequestedDimensions requestedDimensions = null;
    public String url;

    public static ImageDownloadRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ImageDownloadRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ImageDownloadRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ImageDownloadRequest)MessageNano.mergeFrom(new ImageDownloadRequest(), paramArrayOfByte);
    }

    public final ImageDownloadRequest clear()
    {
      this.url = null;
      this.requestedDimensions = null;
      this.cropType = -2147483648;
      this.clientSupportsWebp = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ImageDownloadRequest localImageDownloadRequest;
      label49: 
      do
      {
        return true;
        if (!(paramObject instanceof ImageDownloadRequest))
          return false;
        localImageDownloadRequest = (ImageDownloadRequest)paramObject;
        if (this.url != null)
          break label76;
        if (localImageDownloadRequest.url != null)
          break;
        if (this.requestedDimensions != null)
          break label93;
        if (localImageDownloadRequest.requestedDimensions != null)
          break;
        if (this.cropType != localImageDownloadRequest.cropType)
          break;
        if (this.clientSupportsWebp != null)
          break label110;
      }
      while (localImageDownloadRequest.clientSupportsWebp == null);
      label76: label93: label110: 
      while (!this.clientSupportsWebp.equals(localImageDownloadRequest.clientSupportsWebp))
      {
        do
        {
          do
            return false;
          while (!this.url.equals(localImageDownloadRequest.url));
          break;
        }
        while (!this.requestedDimensions.equals(localImageDownloadRequest.requestedDimensions));
        break label49;
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
      String str = this.url;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.url);
      if (this.requestedDimensions != null)
        i += CodedOutputByteBufferNano.computeMessageSize(2, this.requestedDimensions);
      if (this.cropType != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.cropType);
      if (this.clientSupportsWebp != null)
        i += CodedOutputByteBufferNano.computeBoolSize(4, this.clientSupportsWebp.booleanValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int m;
      int n;
      if (this.url == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.requestedDimensions != null)
          break label74;
        k = 0;
        m = 31 * (31 * (j + k) + this.cropType);
        Boolean localBoolean = this.clientSupportsWebp;
        n = 0;
        if (localBoolean != null)
          break label85;
      }
      while (true)
      {
        return m + n;
        i = this.url.hashCode();
        break;
        label74: k = this.requestedDimensions.hashCode();
        break label27;
        label85: if (this.clientSupportsWebp.booleanValue())
          n = 1;
        else
          n = 2;
      }
    }

    public ImageDownloadRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.url = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.requestedDimensions = new RequestedDimensions();
          paramCodedInputByteBufferNano.readMessage(this.requestedDimensions);
          break;
        case 24:
          this.cropType = paramCodedInputByteBufferNano.readInt32();
          break;
        case 32:
        }
        this.clientSupportsWebp = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.url != null)
        paramCodedOutputByteBufferNano.writeString(1, this.url);
      if (this.requestedDimensions != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.requestedDimensions);
      if (this.cropType != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(3, this.cropType);
      if (this.clientSupportsWebp != null)
        paramCodedOutputByteBufferNano.writeBool(4, this.clientSupportsWebp.booleanValue());
    }

    public final class CropType
    {
      public static final int NO_CROP = 0;
      public static final int SMART_CROP = 1;

      public CropType()
      {
      }
    }

    public static final class RequestedDimensions extends MessageNano
    {
      public static final RequestedDimensions[] EMPTY_ARRAY = new RequestedDimensions[0];
      private int cachedSize = -1;
      public Integer heightPixels;
      public Integer widthPixels;

      public final RequestedDimensions clear()
      {
        this.widthPixels = null;
        this.heightPixels = null;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        RequestedDimensions localRequestedDimensions;
        do
        {
          return true;
          if (!(paramObject instanceof RequestedDimensions))
            return false;
          localRequestedDimensions = (RequestedDimensions)paramObject;
          if (this.widthPixels != null)
            break label51;
          if (localRequestedDimensions.widthPixels != null)
            break;
          if (this.heightPixels != null)
            break label68;
        }
        while (localRequestedDimensions.heightPixels == null);
        label51: label68: 
        while (!this.heightPixels.equals(localRequestedDimensions.heightPixels))
        {
          do
            return false;
          while (!this.widthPixels.equals(localRequestedDimensions.widthPixels));
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
        Integer localInteger = this.widthPixels;
        int i = 0;
        if (localInteger != null)
          i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.widthPixels.intValue());
        if (this.heightPixels != null)
          i += CodedOutputByteBufferNano.computeInt32Size(2, this.heightPixels.intValue());
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        int i;
        int j;
        int k;
        if (this.widthPixels == null)
        {
          i = 0;
          j = 31 * (i + 527);
          Integer localInteger = this.heightPixels;
          k = 0;
          if (localInteger != null)
            break label46;
        }
        while (true)
        {
          return j + k;
          i = this.widthPixels.intValue();
          break;
          label46: k = this.heightPixels.intValue();
        }
      }

      public RequestedDimensions mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.widthPixels = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
            break;
          case 16:
          }
          this.heightPixels = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
        }
      }

      public RequestedDimensions parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new RequestedDimensions().mergeFrom(paramCodedInputByteBufferNano);
      }

      public RequestedDimensions parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (RequestedDimensions)MessageNano.mergeFrom(new RequestedDimensions(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.widthPixels != null)
          paramCodedOutputByteBufferNano.writeInt32(1, this.widthPixels.intValue());
        if (this.heightPixels != null)
          paramCodedOutputByteBufferNano.writeInt32(2, this.heightPixels.intValue());
      }
    }
  }

  public static final class ImageDownloadResponse extends MessageNano
  {
    public static final ImageDownloadResponse[] EMPTY_ARRAY = new ImageDownloadResponse[0];
    private int cachedSize = -1;
    public byte[] image;
    public int status = -2147483648;

    public static ImageDownloadResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ImageDownloadResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ImageDownloadResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ImageDownloadResponse)MessageNano.mergeFrom(new ImageDownloadResponse(), paramArrayOfByte);
    }

    public final ImageDownloadResponse clear()
    {
      this.image = null;
      this.status = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ImageDownloadResponse localImageDownloadResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ImageDownloadResponse))
          return false;
        localImageDownloadResponse = (ImageDownloadResponse)paramObject;
      }
      while ((Arrays.equals(this.image, localImageDownloadResponse.image)) && (this.status == localImageDownloadResponse.status));
      return false;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      byte[] arrayOfByte = this.image;
      int i = 0;
      if (arrayOfByte != null)
        i = 0 + CodedOutputByteBufferNano.computeBytesSize(1, this.image);
      if (this.status != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(2, this.status);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.image == null)
        i *= 31;
      while (true)
      {
        return i * 31 + this.status;
        for (int j = 0; j < this.image.length; j++)
          i = i * 31 + this.image[j];
      }
    }

    public ImageDownloadResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.image = paramCodedInputByteBufferNano.readBytes();
          break;
        case 16:
        }
        this.status = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.image != null)
        paramCodedOutputByteBufferNano.writeBytes(1, this.image);
      if (this.status != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(2, this.status);
    }

    public final class Status
    {
      public static final int ERROR = 1;
      public static final int SUCCESS;

      public Status()
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ImageDownloadNano
 * JD-Core Version:    0.6.2
 */