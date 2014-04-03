package speech.s3.goggles;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class GogglesS3
{
  public static final class GogglesS3SessionOptions extends MessageMicro
  {
    public static final int ANNOTATION_FIELD_NUMBER = 1;
    public static final int CAN_LOG_IMAGE_FIELD_NUMBER = 2;
    public static final int CAN_LOG_LOCATION_FIELD_NUMBER = 3;
    public static final int DISCLOSED_CAPABILITIES_FIELD_NUMBER = 4;
    public static final int DISCLOSED_CAPABILITY_CAPABILITY_ARTWORK = 1;
    public static final int DISCLOSED_CAPABILITY_CAPABILITY_SHOPPING;
    private String annotation_ = "";
    private int cachedSize = -1;
    private boolean canLogImage_ = false;
    private boolean canLogLocation_ = false;
    private List<Integer> disclosedCapabilities_ = Collections.emptyList();
    private boolean hasAnnotation;
    private boolean hasCanLogImage;
    private boolean hasCanLogLocation;

    public static GogglesS3SessionOptions parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GogglesS3SessionOptions().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GogglesS3SessionOptions parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GogglesS3SessionOptions)new GogglesS3SessionOptions().mergeFrom(paramArrayOfByte);
    }

    public GogglesS3SessionOptions addDisclosedCapabilities(int paramInt)
    {
      if (this.disclosedCapabilities_.isEmpty())
        this.disclosedCapabilities_ = new ArrayList();
      this.disclosedCapabilities_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final GogglesS3SessionOptions clear()
    {
      clearAnnotation();
      clearCanLogImage();
      clearCanLogLocation();
      clearDisclosedCapabilities();
      this.cachedSize = -1;
      return this;
    }

    public GogglesS3SessionOptions clearAnnotation()
    {
      this.hasAnnotation = false;
      this.annotation_ = "";
      return this;
    }

    public GogglesS3SessionOptions clearCanLogImage()
    {
      this.hasCanLogImage = false;
      this.canLogImage_ = false;
      return this;
    }

    public GogglesS3SessionOptions clearCanLogLocation()
    {
      this.hasCanLogLocation = false;
      this.canLogLocation_ = false;
      return this;
    }

    public GogglesS3SessionOptions clearDisclosedCapabilities()
    {
      this.disclosedCapabilities_ = Collections.emptyList();
      return this;
    }

    public String getAnnotation()
    {
      return this.annotation_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public boolean getCanLogImage()
    {
      return this.canLogImage_;
    }

    public boolean getCanLogLocation()
    {
      return this.canLogLocation_;
    }

    public int getDisclosedCapabilities(int paramInt)
    {
      return ((Integer)this.disclosedCapabilities_.get(paramInt)).intValue();
    }

    public int getDisclosedCapabilitiesCount()
    {
      return this.disclosedCapabilities_.size();
    }

    public List<Integer> getDisclosedCapabilitiesList()
    {
      return this.disclosedCapabilities_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAnnotation();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAnnotation());
      if (hasCanLogImage())
        i += CodedOutputStreamMicro.computeBoolSize(2, getCanLogImage());
      if (hasCanLogLocation())
        i += CodedOutputStreamMicro.computeBoolSize(3, getCanLogLocation());
      int j = 0;
      Iterator localIterator = getDisclosedCapabilitiesList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int k = i + j + 1 * getDisclosedCapabilitiesList().size();
      this.cachedSize = k;
      return k;
    }

    public boolean hasAnnotation()
    {
      return this.hasAnnotation;
    }

    public boolean hasCanLogImage()
    {
      return this.hasCanLogImage;
    }

    public boolean hasCanLogLocation()
    {
      return this.hasCanLogLocation;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public GogglesS3SessionOptions mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 10:
          setAnnotation(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setCanLogImage(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
          setCanLogLocation(paramCodedInputStreamMicro.readBool());
          break;
        case 32:
        }
        addDisclosedCapabilities(paramCodedInputStreamMicro.readInt32());
      }
    }

    public GogglesS3SessionOptions setAnnotation(String paramString)
    {
      this.hasAnnotation = true;
      this.annotation_ = paramString;
      return this;
    }

    public GogglesS3SessionOptions setCanLogImage(boolean paramBoolean)
    {
      this.hasCanLogImage = true;
      this.canLogImage_ = paramBoolean;
      return this;
    }

    public GogglesS3SessionOptions setCanLogLocation(boolean paramBoolean)
    {
      this.hasCanLogLocation = true;
      this.canLogLocation_ = paramBoolean;
      return this;
    }

    public GogglesS3SessionOptions setDisclosedCapabilities(int paramInt1, int paramInt2)
    {
      this.disclosedCapabilities_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAnnotation())
        paramCodedOutputStreamMicro.writeString(1, getAnnotation());
      if (hasCanLogImage())
        paramCodedOutputStreamMicro.writeBool(2, getCanLogImage());
      if (hasCanLogLocation())
        paramCodedOutputStreamMicro.writeBool(3, getCanLogLocation());
      Iterator localIterator = getDisclosedCapabilitiesList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(4, ((Integer)localIterator.next()).intValue());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     speech.s3.goggles.GogglesS3
 * JD-Core Version:    0.6.2
 */