package speech;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class DecodedWordProto
{
  public static final class DecodedWord extends MessageMicro
  {
    public static final int END_FRAME_FIELD_NUMBER = 3;
    public static final int START_FRAME_FIELD_NUMBER = 2;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private int endFrame_ = 0;
    private boolean hasEndFrame;
    private boolean hasStartFrame;
    private boolean hasText;
    private int startFrame_ = 0;
    private String text_ = "";

    public static DecodedWord parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new DecodedWord().mergeFrom(paramCodedInputStreamMicro);
    }

    public static DecodedWord parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (DecodedWord)new DecodedWord().mergeFrom(paramArrayOfByte);
    }

    public final DecodedWord clear()
    {
      clearText();
      clearStartFrame();
      clearEndFrame();
      this.cachedSize = -1;
      return this;
    }

    public DecodedWord clearEndFrame()
    {
      this.hasEndFrame = false;
      this.endFrame_ = 0;
      return this;
    }

    public DecodedWord clearStartFrame()
    {
      this.hasStartFrame = false;
      this.startFrame_ = 0;
      return this;
    }

    public DecodedWord clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getEndFrame()
    {
      return this.endFrame_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasStartFrame())
        i += CodedOutputStreamMicro.computeUInt32Size(2, getStartFrame());
      if (hasEndFrame())
        i += CodedOutputStreamMicro.computeUInt32Size(3, getEndFrame());
      this.cachedSize = i;
      return i;
    }

    public int getStartFrame()
    {
      return this.startFrame_;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasEndFrame()
    {
      return this.hasEndFrame;
    }

    public boolean hasStartFrame()
    {
      return this.hasStartFrame;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      if (!this.hasText);
      while ((!this.hasStartFrame) || (!this.hasEndFrame))
        return false;
      return true;
    }

    public DecodedWord mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setStartFrame(paramCodedInputStreamMicro.readUInt32());
          break;
        case 24:
        }
        setEndFrame(paramCodedInputStreamMicro.readUInt32());
      }
    }

    public DecodedWord setEndFrame(int paramInt)
    {
      this.hasEndFrame = true;
      this.endFrame_ = paramInt;
      return this;
    }

    public DecodedWord setStartFrame(int paramInt)
    {
      this.hasStartFrame = true;
      this.startFrame_ = paramInt;
      return this;
    }

    public DecodedWord setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasText())
        paramCodedOutputStreamMicro.writeString(1, getText());
      if (hasStartFrame())
        paramCodedOutputStreamMicro.writeUInt32(2, getStartFrame());
      if (hasEndFrame())
        paramCodedOutputStreamMicro.writeUInt32(3, getEndFrame());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     speech.DecodedWordProto
 * JD-Core Version:    0.6.2
 */