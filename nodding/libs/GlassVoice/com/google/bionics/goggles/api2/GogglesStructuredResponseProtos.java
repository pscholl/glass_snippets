package com.google.bionics.goggles.api2;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class GogglesStructuredResponseProtos
{
  public static final class GogglesGenericResult extends MessageMicro
  {
    public static final int FACT_FIELD_NUMBER = 8;
    public static final int FIFE_IMAGE_URL_FIELD_NUMBER = 2;
    public static final int LINK_FIELD_NUMBER = 7;
    public static final int SUBTITLE_FIELD_NUMBER = 3;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<Fact> fact_ = Collections.emptyList();
    private String fifeImageUrl_ = "";
    private boolean hasFifeImageUrl;
    private boolean hasSubtitle;
    private boolean hasTitle;
    private List<Link> link_ = Collections.emptyList();
    private String subtitle_ = "";
    private String title_ = "";

    public static GogglesGenericResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GogglesGenericResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GogglesGenericResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GogglesGenericResult)new GogglesGenericResult().mergeFrom(paramArrayOfByte);
    }

    public GogglesGenericResult addFact(Fact paramFact)
    {
      if (paramFact == null)
        throw new NullPointerException();
      if (this.fact_.isEmpty())
        this.fact_ = new ArrayList();
      this.fact_.add(paramFact);
      return this;
    }

    public GogglesGenericResult addLink(Link paramLink)
    {
      if (paramLink == null)
        throw new NullPointerException();
      if (this.link_.isEmpty())
        this.link_ = new ArrayList();
      this.link_.add(paramLink);
      return this;
    }

    public final GogglesGenericResult clear()
    {
      clearTitle();
      clearSubtitle();
      clearFifeImageUrl();
      clearLink();
      clearFact();
      this.cachedSize = -1;
      return this;
    }

    public GogglesGenericResult clearFact()
    {
      this.fact_ = Collections.emptyList();
      return this;
    }

    public GogglesGenericResult clearFifeImageUrl()
    {
      this.hasFifeImageUrl = false;
      this.fifeImageUrl_ = "";
      return this;
    }

    public GogglesGenericResult clearLink()
    {
      this.link_ = Collections.emptyList();
      return this;
    }

    public GogglesGenericResult clearSubtitle()
    {
      this.hasSubtitle = false;
      this.subtitle_ = "";
      return this;
    }

    public GogglesGenericResult clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public Fact getFact(int paramInt)
    {
      return (Fact)this.fact_.get(paramInt);
    }

    public int getFactCount()
    {
      return this.fact_.size();
    }

    public List<Fact> getFactList()
    {
      return this.fact_;
    }

    public String getFifeImageUrl()
    {
      return this.fifeImageUrl_;
    }

    public Link getLink(int paramInt)
    {
      return (Link)this.link_.get(paramInt);
    }

    public int getLinkCount()
    {
      return this.link_.size();
    }

    public List<Link> getLinkList()
    {
      return this.link_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasTitle();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTitle());
      if (hasFifeImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getFifeImageUrl());
      if (hasSubtitle())
        i += CodedOutputStreamMicro.computeStringSize(3, getSubtitle());
      Iterator localIterator1 = getLinkList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(7, (Link)localIterator1.next());
      Iterator localIterator2 = getFactList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(8, (Fact)localIterator2.next());
      this.cachedSize = i;
      return i;
    }

    public String getSubtitle()
    {
      return this.subtitle_;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public boolean hasFifeImageUrl()
    {
      return this.hasFifeImageUrl;
    }

    public boolean hasSubtitle()
    {
      return this.hasSubtitle;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public GogglesGenericResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setFifeImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setSubtitle(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          Link localLink = new Link();
          paramCodedInputStreamMicro.readMessage(localLink);
          addLink(localLink);
          break;
        case 66:
        }
        Fact localFact = new Fact();
        paramCodedInputStreamMicro.readMessage(localFact);
        addFact(localFact);
      }
    }

    public GogglesGenericResult setFact(int paramInt, Fact paramFact)
    {
      if (paramFact == null)
        throw new NullPointerException();
      this.fact_.set(paramInt, paramFact);
      return this;
    }

    public GogglesGenericResult setFifeImageUrl(String paramString)
    {
      this.hasFifeImageUrl = true;
      this.fifeImageUrl_ = paramString;
      return this;
    }

    public GogglesGenericResult setLink(int paramInt, Link paramLink)
    {
      if (paramLink == null)
        throw new NullPointerException();
      this.link_.set(paramInt, paramLink);
      return this;
    }

    public GogglesGenericResult setSubtitle(String paramString)
    {
      this.hasSubtitle = true;
      this.subtitle_ = paramString;
      return this;
    }

    public GogglesGenericResult setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(1, getTitle());
      if (hasFifeImageUrl())
        paramCodedOutputStreamMicro.writeString(2, getFifeImageUrl());
      if (hasSubtitle())
        paramCodedOutputStreamMicro.writeString(3, getSubtitle());
      Iterator localIterator1 = getLinkList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(7, (Link)localIterator1.next());
      Iterator localIterator2 = getFactList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(8, (Fact)localIterator2.next());
    }

    public static final class Fact extends MessageMicro
    {
      public static final int NAME_FIELD_NUMBER = 1;
      public static final int VALUE_FIELD_NUMBER = 2;
      private int cachedSize = -1;
      private boolean hasName;
      private boolean hasValue;
      private String name_ = "";
      private String value_ = "";

      public final Fact clear()
      {
        clearName();
        clearValue();
        this.cachedSize = -1;
        return this;
      }

      public Fact clearName()
      {
        this.hasName = false;
        this.name_ = "";
        return this;
      }

      public Fact clearValue()
      {
        this.hasValue = false;
        this.value_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getName()
      {
        return this.name_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasName();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
        if (hasValue())
          i += CodedOutputStreamMicro.computeStringSize(2, getValue());
        this.cachedSize = i;
        return i;
      }

      public String getValue()
      {
        return this.value_;
      }

      public boolean hasName()
      {
        return this.hasName;
      }

      public boolean hasValue()
      {
        return this.hasValue;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Fact mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setName(paramCodedInputStreamMicro.readString());
            break;
          case 18:
          }
          setValue(paramCodedInputStreamMicro.readString());
        }
      }

      public Fact parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Fact().mergeFrom(paramCodedInputStreamMicro);
      }

      public Fact parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Fact)new Fact().mergeFrom(paramArrayOfByte);
      }

      public Fact setName(String paramString)
      {
        this.hasName = true;
        this.name_ = paramString;
        return this;
      }

      public Fact setValue(String paramString)
      {
        this.hasValue = true;
        this.value_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasName())
          paramCodedOutputStreamMicro.writeString(1, getName());
        if (hasValue())
          paramCodedOutputStreamMicro.writeString(2, getValue());
      }
    }

    public static final class Link extends MessageMicro
    {
      public static final int ICON_FIELD_NUMBER = 3;
      public static final int ICON_ICON_ART_PROJECT = 1;
      public static final int ICON_ICON_WEB = 0;
      public static final int LABEL_FIELD_NUMBER = 1;
      public static final int URL_FIELD_NUMBER = 2;
      private int cachedSize = -1;
      private boolean hasIcon;
      private boolean hasLabel;
      private boolean hasUrl;
      private int icon_ = 0;
      private String label_ = "";
      private String url_ = "";

      public final Link clear()
      {
        clearLabel();
        clearUrl();
        clearIcon();
        this.cachedSize = -1;
        return this;
      }

      public Link clearIcon()
      {
        this.hasIcon = false;
        this.icon_ = 0;
        return this;
      }

      public Link clearLabel()
      {
        this.hasLabel = false;
        this.label_ = "";
        return this;
      }

      public Link clearUrl()
      {
        this.hasUrl = false;
        this.url_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getIcon()
      {
        return this.icon_;
      }

      public String getLabel()
      {
        return this.label_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasLabel();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLabel());
        if (hasUrl())
          i += CodedOutputStreamMicro.computeStringSize(2, getUrl());
        if (hasIcon())
          i += CodedOutputStreamMicro.computeInt32Size(3, getIcon());
        this.cachedSize = i;
        return i;
      }

      public String getUrl()
      {
        return this.url_;
      }

      public boolean hasIcon()
      {
        return this.hasIcon;
      }

      public boolean hasLabel()
      {
        return this.hasLabel;
      }

      public boolean hasUrl()
      {
        return this.hasUrl;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Link mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setLabel(paramCodedInputStreamMicro.readString());
            break;
          case 18:
            setUrl(paramCodedInputStreamMicro.readString());
            break;
          case 24:
          }
          setIcon(paramCodedInputStreamMicro.readInt32());
        }
      }

      public Link parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Link().mergeFrom(paramCodedInputStreamMicro);
      }

      public Link parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Link)new Link().mergeFrom(paramArrayOfByte);
      }

      public Link setIcon(int paramInt)
      {
        this.hasIcon = true;
        this.icon_ = paramInt;
        return this;
      }

      public Link setLabel(String paramString)
      {
        this.hasLabel = true;
        this.label_ = paramString;
        return this;
      }

      public Link setUrl(String paramString)
      {
        this.hasUrl = true;
        this.url_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasLabel())
          paramCodedOutputStreamMicro.writeString(1, getLabel());
        if (hasUrl())
          paramCodedOutputStreamMicro.writeString(2, getUrl());
        if (hasIcon())
          paramCodedOutputStreamMicro.writeInt32(3, getIcon());
      }
    }
  }

  public static final class RecognizedContact extends MessageMicro
  {
    public static final int ADDRESS_FIELD_NUMBER = 6;
    public static final int COMPANY_FIELD_NUMBER = 3;
    public static final int EMAIL_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PHONE_NUMBER_FIELD_NUMBER = 7;
    public static final int TITLE_FIELD_NUMBER = 2;
    public static final int URL_FIELD_NUMBER = 4;
    private List<PostalAddress> address_ = Collections.emptyList();
    private int cachedSize = -1;
    private String company_ = "";
    private List<Email> email_ = Collections.emptyList();
    private boolean hasCompany;
    private boolean hasName;
    private boolean hasTitle;
    private Name name_ = null;
    private List<PhoneNumber> phoneNumber_ = Collections.emptyList();
    private String title_ = "";
    private List<String> url_ = Collections.emptyList();

    public static RecognizedContact parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizedContact().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizedContact parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizedContact)new RecognizedContact().mergeFrom(paramArrayOfByte);
    }

    public RecognizedContact addAddress(PostalAddress paramPostalAddress)
    {
      if (paramPostalAddress == null)
        throw new NullPointerException();
      if (this.address_.isEmpty())
        this.address_ = new ArrayList();
      this.address_.add(paramPostalAddress);
      return this;
    }

    public RecognizedContact addEmail(Email paramEmail)
    {
      if (paramEmail == null)
        throw new NullPointerException();
      if (this.email_.isEmpty())
        this.email_ = new ArrayList();
      this.email_.add(paramEmail);
      return this;
    }

    public RecognizedContact addPhoneNumber(PhoneNumber paramPhoneNumber)
    {
      if (paramPhoneNumber == null)
        throw new NullPointerException();
      if (this.phoneNumber_.isEmpty())
        this.phoneNumber_ = new ArrayList();
      this.phoneNumber_.add(paramPhoneNumber);
      return this;
    }

    public RecognizedContact addUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.url_.isEmpty())
        this.url_ = new ArrayList();
      this.url_.add(paramString);
      return this;
    }

    public final RecognizedContact clear()
    {
      clearName();
      clearTitle();
      clearCompany();
      clearUrl();
      clearEmail();
      clearAddress();
      clearPhoneNumber();
      this.cachedSize = -1;
      return this;
    }

    public RecognizedContact clearAddress()
    {
      this.address_ = Collections.emptyList();
      return this;
    }

    public RecognizedContact clearCompany()
    {
      this.hasCompany = false;
      this.company_ = "";
      return this;
    }

    public RecognizedContact clearEmail()
    {
      this.email_ = Collections.emptyList();
      return this;
    }

    public RecognizedContact clearName()
    {
      this.hasName = false;
      this.name_ = null;
      return this;
    }

    public RecognizedContact clearPhoneNumber()
    {
      this.phoneNumber_ = Collections.emptyList();
      return this;
    }

    public RecognizedContact clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public RecognizedContact clearUrl()
    {
      this.url_ = Collections.emptyList();
      return this;
    }

    public PostalAddress getAddress(int paramInt)
    {
      return (PostalAddress)this.address_.get(paramInt);
    }

    public int getAddressCount()
    {
      return this.address_.size();
    }

    public List<PostalAddress> getAddressList()
    {
      return this.address_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getCompany()
    {
      return this.company_;
    }

    public Email getEmail(int paramInt)
    {
      return (Email)this.email_.get(paramInt);
    }

    public int getEmailCount()
    {
      return this.email_.size();
    }

    public List<Email> getEmailList()
    {
      return this.email_;
    }

    public Name getName()
    {
      return this.name_;
    }

    public PhoneNumber getPhoneNumber(int paramInt)
    {
      return (PhoneNumber)this.phoneNumber_.get(paramInt);
    }

    public int getPhoneNumberCount()
    {
      return this.phoneNumber_.size();
    }

    public List<PhoneNumber> getPhoneNumberList()
    {
      return this.phoneNumber_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getName());
      if (hasTitle())
        i += CodedOutputStreamMicro.computeStringSize(2, getTitle());
      if (hasCompany())
        i += CodedOutputStreamMicro.computeStringSize(3, getCompany());
      int j = 0;
      Iterator localIterator1 = getUrlList().iterator();
      while (localIterator1.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator1.next());
      int k = i + j + 1 * getUrlList().size();
      Iterator localIterator2 = getEmailList().iterator();
      while (localIterator2.hasNext())
        k += CodedOutputStreamMicro.computeMessageSize(5, (Email)localIterator2.next());
      Iterator localIterator3 = getAddressList().iterator();
      while (localIterator3.hasNext())
        k += CodedOutputStreamMicro.computeMessageSize(6, (PostalAddress)localIterator3.next());
      Iterator localIterator4 = getPhoneNumberList().iterator();
      while (localIterator4.hasNext())
        k += CodedOutputStreamMicro.computeMessageSize(7, (PhoneNumber)localIterator4.next());
      this.cachedSize = k;
      return k;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public String getUrl(int paramInt)
    {
      return (String)this.url_.get(paramInt);
    }

    public int getUrlCount()
    {
      return this.url_.size();
    }

    public List<String> getUrlList()
    {
      return this.url_;
    }

    public boolean hasCompany()
    {
      return this.hasCompany;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RecognizedContact mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          Name localName = new Name();
          paramCodedInputStreamMicro.readMessage(localName);
          setName(localName);
          break;
        case 18:
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setCompany(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          addUrl(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          Email localEmail = new Email();
          paramCodedInputStreamMicro.readMessage(localEmail);
          addEmail(localEmail);
          break;
        case 50:
          PostalAddress localPostalAddress = new PostalAddress();
          paramCodedInputStreamMicro.readMessage(localPostalAddress);
          addAddress(localPostalAddress);
          break;
        case 58:
        }
        PhoneNumber localPhoneNumber = new PhoneNumber();
        paramCodedInputStreamMicro.readMessage(localPhoneNumber);
        addPhoneNumber(localPhoneNumber);
      }
    }

    public RecognizedContact setAddress(int paramInt, PostalAddress paramPostalAddress)
    {
      if (paramPostalAddress == null)
        throw new NullPointerException();
      this.address_.set(paramInt, paramPostalAddress);
      return this;
    }

    public RecognizedContact setCompany(String paramString)
    {
      this.hasCompany = true;
      this.company_ = paramString;
      return this;
    }

    public RecognizedContact setEmail(int paramInt, Email paramEmail)
    {
      if (paramEmail == null)
        throw new NullPointerException();
      this.email_.set(paramInt, paramEmail);
      return this;
    }

    public RecognizedContact setName(Name paramName)
    {
      if (paramName == null)
        throw new NullPointerException();
      this.hasName = true;
      this.name_ = paramName;
      return this;
    }

    public RecognizedContact setPhoneNumber(int paramInt, PhoneNumber paramPhoneNumber)
    {
      if (paramPhoneNumber == null)
        throw new NullPointerException();
      this.phoneNumber_.set(paramInt, paramPhoneNumber);
      return this;
    }

    public RecognizedContact setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public RecognizedContact setUrl(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.url_.set(paramInt, paramString);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeMessage(1, getName());
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(2, getTitle());
      if (hasCompany())
        paramCodedOutputStreamMicro.writeString(3, getCompany());
      Iterator localIterator1 = getUrlList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeString(4, (String)localIterator1.next());
      Iterator localIterator2 = getEmailList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (Email)localIterator2.next());
      Iterator localIterator3 = getAddressList().iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStreamMicro.writeMessage(6, (PostalAddress)localIterator3.next());
      Iterator localIterator4 = getPhoneNumberList().iterator();
      while (localIterator4.hasNext())
        paramCodedOutputStreamMicro.writeMessage(7, (PhoneNumber)localIterator4.next());
    }

    public static final class Email extends MessageMicro
    {
      public static final int ADDRESS_FIELD_NUMBER = 1;
      private String address_ = "";
      private int cachedSize = -1;
      private boolean hasAddress;

      public final Email clear()
      {
        clearAddress();
        this.cachedSize = -1;
        return this;
      }

      public Email clearAddress()
      {
        this.hasAddress = false;
        this.address_ = "";
        return this;
      }

      public String getAddress()
      {
        return this.address_;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getSerializedSize()
      {
        boolean bool = hasAddress();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getAddress());
        this.cachedSize = i;
        return i;
      }

      public boolean hasAddress()
      {
        return this.hasAddress;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Email mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          }
          setAddress(paramCodedInputStreamMicro.readString());
        }
      }

      public Email parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Email().mergeFrom(paramCodedInputStreamMicro);
      }

      public Email parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Email)new Email().mergeFrom(paramArrayOfByte);
      }

      public Email setAddress(String paramString)
      {
        this.hasAddress = true;
        this.address_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasAddress())
          paramCodedOutputStreamMicro.writeString(1, getAddress());
      }
    }

    public static final class Name extends MessageMicro
    {
      public static final int FULL_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private String full_ = "";
      private boolean hasFull;

      public final Name clear()
      {
        clearFull();
        this.cachedSize = -1;
        return this;
      }

      public Name clearFull()
      {
        this.hasFull = false;
        this.full_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getFull()
      {
        return this.full_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasFull();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getFull());
        this.cachedSize = i;
        return i;
      }

      public boolean hasFull()
      {
        return this.hasFull;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Name mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          }
          setFull(paramCodedInputStreamMicro.readString());
        }
      }

      public Name parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Name().mergeFrom(paramCodedInputStreamMicro);
      }

      public Name parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Name)new Name().mergeFrom(paramArrayOfByte);
      }

      public Name setFull(String paramString)
      {
        this.hasFull = true;
        this.full_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasFull())
          paramCodedOutputStreamMicro.writeString(1, getFull());
      }
    }

    public static final class PhoneNumber extends MessageMicro
    {
      public static final int FULL_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private String full_ = "";
      private boolean hasFull;

      public final PhoneNumber clear()
      {
        clearFull();
        this.cachedSize = -1;
        return this;
      }

      public PhoneNumber clearFull()
      {
        this.hasFull = false;
        this.full_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getFull()
      {
        return this.full_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasFull();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getFull());
        this.cachedSize = i;
        return i;
      }

      public boolean hasFull()
      {
        return this.hasFull;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public PhoneNumber mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          }
          setFull(paramCodedInputStreamMicro.readString());
        }
      }

      public PhoneNumber parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new PhoneNumber().mergeFrom(paramCodedInputStreamMicro);
      }

      public PhoneNumber parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (PhoneNumber)new PhoneNumber().mergeFrom(paramArrayOfByte);
      }

      public PhoneNumber setFull(String paramString)
      {
        this.hasFull = true;
        this.full_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasFull())
          paramCodedOutputStreamMicro.writeString(1, getFull());
      }
    }

    public static final class PostalAddress extends MessageMicro
    {
      public static final int FULL_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private String full_ = "";
      private boolean hasFull;

      public final PostalAddress clear()
      {
        clearFull();
        this.cachedSize = -1;
        return this;
      }

      public PostalAddress clearFull()
      {
        this.hasFull = false;
        this.full_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getFull()
      {
        return this.full_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasFull();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getFull());
        this.cachedSize = i;
        return i;
      }

      public boolean hasFull()
      {
        return this.hasFull;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public PostalAddress mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          }
          setFull(paramCodedInputStreamMicro.readString());
        }
      }

      public PostalAddress parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new PostalAddress().mergeFrom(paramCodedInputStreamMicro);
      }

      public PostalAddress parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (PostalAddress)new PostalAddress().mergeFrom(paramArrayOfByte);
      }

      public PostalAddress setFull(String paramString)
      {
        this.hasFull = true;
        this.full_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasFull())
          paramCodedOutputStreamMicro.writeString(1, getFull());
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.bionics.goggles.api2.GogglesStructuredResponseProtos
 * JD-Core Version:    0.6.2
 */