package com.google.i18n.phonenumbers;

import java.io.Serializable;

public final class Phonenumber
{
  public static class PhoneNumber
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    private CountryCodeSource countryCodeSource_ = CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
    private int countryCode_ = 0;
    private String extension_ = "";
    private boolean hasCountryCode;
    private boolean hasCountryCodeSource;
    private boolean hasExtension;
    private boolean hasItalianLeadingZero;
    private boolean hasNationalNumber;
    private boolean hasPreferredDomesticCarrierCode;
    private boolean hasRawInput;
    private boolean italianLeadingZero_ = false;
    private long nationalNumber_ = 0L;
    private String preferredDomesticCarrierCode_ = "";
    private String rawInput_ = "";

    public final PhoneNumber clear()
    {
      clearCountryCode();
      clearNationalNumber();
      clearExtension();
      clearItalianLeadingZero();
      clearRawInput();
      clearCountryCodeSource();
      clearPreferredDomesticCarrierCode();
      return this;
    }

    public PhoneNumber clearCountryCode()
    {
      this.hasCountryCode = false;
      this.countryCode_ = 0;
      return this;
    }

    public PhoneNumber clearCountryCodeSource()
    {
      this.hasCountryCodeSource = false;
      this.countryCodeSource_ = CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
      return this;
    }

    public PhoneNumber clearExtension()
    {
      this.hasExtension = false;
      this.extension_ = "";
      return this;
    }

    public PhoneNumber clearItalianLeadingZero()
    {
      this.hasItalianLeadingZero = false;
      this.italianLeadingZero_ = false;
      return this;
    }

    public PhoneNumber clearNationalNumber()
    {
      this.hasNationalNumber = false;
      this.nationalNumber_ = 0L;
      return this;
    }

    public PhoneNumber clearPreferredDomesticCarrierCode()
    {
      this.hasPreferredDomesticCarrierCode = false;
      this.preferredDomesticCarrierCode_ = "";
      return this;
    }

    public PhoneNumber clearRawInput()
    {
      this.hasRawInput = false;
      this.rawInput_ = "";
      return this;
    }

    public boolean equals(Object paramObject)
    {
      return ((paramObject instanceof PhoneNumber)) && (exactlySameAs((PhoneNumber)paramObject));
    }

    public boolean exactlySameAs(PhoneNumber paramPhoneNumber)
    {
      boolean bool = true;
      if (paramPhoneNumber == null)
        bool = false;
      while ((this == paramPhoneNumber) || ((this.countryCode_ == paramPhoneNumber.countryCode_) && (this.nationalNumber_ == paramPhoneNumber.nationalNumber_) && (this.extension_.equals(paramPhoneNumber.extension_)) && (this.italianLeadingZero_ == paramPhoneNumber.italianLeadingZero_) && (this.rawInput_.equals(paramPhoneNumber.rawInput_)) && (this.countryCodeSource_ == paramPhoneNumber.countryCodeSource_) && (this.preferredDomesticCarrierCode_.equals(paramPhoneNumber.preferredDomesticCarrierCode_)) && (hasPreferredDomesticCarrierCode() == paramPhoneNumber.hasPreferredDomesticCarrierCode())))
        return bool;
      return false;
    }

    public int getCountryCode()
    {
      return this.countryCode_;
    }

    public CountryCodeSource getCountryCodeSource()
    {
      return this.countryCodeSource_;
    }

    public String getExtension()
    {
      return this.extension_;
    }

    public long getNationalNumber()
    {
      return this.nationalNumber_;
    }

    public String getPreferredDomesticCarrierCode()
    {
      return this.preferredDomesticCarrierCode_;
    }

    public String getRawInput()
    {
      return this.rawInput_;
    }

    public boolean hasCountryCode()
    {
      return this.hasCountryCode;
    }

    public boolean hasCountryCodeSource()
    {
      return this.hasCountryCodeSource;
    }

    public boolean hasExtension()
    {
      return this.hasExtension;
    }

    public boolean hasItalianLeadingZero()
    {
      return this.hasItalianLeadingZero;
    }

    public boolean hasNationalNumber()
    {
      return this.hasNationalNumber;
    }

    public boolean hasPreferredDomesticCarrierCode()
    {
      return this.hasPreferredDomesticCarrierCode;
    }

    public boolean hasRawInput()
    {
      return this.hasRawInput;
    }

    public int hashCode()
    {
      int i = 1231;
      int j = 53 * (53 * (53 * (2173 + getCountryCode()) + Long.valueOf(getNationalNumber()).hashCode()) + getExtension().hashCode());
      int k;
      int m;
      if (isItalianLeadingZero())
      {
        k = i;
        m = 53 * (53 * (53 * (53 * (j + k) + getRawInput().hashCode()) + getCountryCodeSource().hashCode()) + getPreferredDomesticCarrierCode().hashCode());
        if (!hasPreferredDomesticCarrierCode())
          break label110;
      }
      while (true)
      {
        return m + i;
        k = 1237;
        break;
        label110: i = 1237;
      }
    }

    public boolean isItalianLeadingZero()
    {
      return this.italianLeadingZero_;
    }

    public PhoneNumber mergeFrom(PhoneNumber paramPhoneNumber)
    {
      if (paramPhoneNumber.hasCountryCode())
        setCountryCode(paramPhoneNumber.getCountryCode());
      if (paramPhoneNumber.hasNationalNumber())
        setNationalNumber(paramPhoneNumber.getNationalNumber());
      if (paramPhoneNumber.hasExtension())
        setExtension(paramPhoneNumber.getExtension());
      if (paramPhoneNumber.hasItalianLeadingZero())
        setItalianLeadingZero(paramPhoneNumber.isItalianLeadingZero());
      if (paramPhoneNumber.hasRawInput())
        setRawInput(paramPhoneNumber.getRawInput());
      if (paramPhoneNumber.hasCountryCodeSource())
        setCountryCodeSource(paramPhoneNumber.getCountryCodeSource());
      if (paramPhoneNumber.hasPreferredDomesticCarrierCode())
        setPreferredDomesticCarrierCode(paramPhoneNumber.getPreferredDomesticCarrierCode());
      return this;
    }

    public PhoneNumber setCountryCode(int paramInt)
    {
      this.hasCountryCode = true;
      this.countryCode_ = paramInt;
      return this;
    }

    public PhoneNumber setCountryCodeSource(CountryCodeSource paramCountryCodeSource)
    {
      if (paramCountryCodeSource == null)
        throw new NullPointerException();
      this.hasCountryCodeSource = true;
      this.countryCodeSource_ = paramCountryCodeSource;
      return this;
    }

    public PhoneNumber setExtension(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.hasExtension = true;
      this.extension_ = paramString;
      return this;
    }

    public PhoneNumber setItalianLeadingZero(boolean paramBoolean)
    {
      this.hasItalianLeadingZero = true;
      this.italianLeadingZero_ = paramBoolean;
      return this;
    }

    public PhoneNumber setNationalNumber(long paramLong)
    {
      this.hasNationalNumber = true;
      this.nationalNumber_ = paramLong;
      return this;
    }

    public PhoneNumber setPreferredDomesticCarrierCode(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.hasPreferredDomesticCarrierCode = true;
      this.preferredDomesticCarrierCode_ = paramString;
      return this;
    }

    public PhoneNumber setRawInput(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.hasRawInput = true;
      this.rawInput_ = paramString;
      return this;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Country Code: ").append(this.countryCode_);
      localStringBuilder.append(" National Number: ").append(this.nationalNumber_);
      if ((hasItalianLeadingZero()) && (isItalianLeadingZero()))
        localStringBuilder.append(" Leading Zero: true");
      if (hasExtension())
        localStringBuilder.append(" Extension: ").append(this.extension_);
      if (hasCountryCodeSource())
        localStringBuilder.append(" Country Code Source: ").append(this.countryCodeSource_);
      if (hasPreferredDomesticCarrierCode())
        localStringBuilder.append(" Preferred Domestic Carrier Code: ").append(this.preferredDomesticCarrierCode_);
      return localStringBuilder.toString();
    }

    public static enum CountryCodeSource
    {
      static
      {
        FROM_NUMBER_WITH_IDD = new CountryCodeSource("FROM_NUMBER_WITH_IDD", 1);
        FROM_NUMBER_WITHOUT_PLUS_SIGN = new CountryCodeSource("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
        FROM_DEFAULT_COUNTRY = new CountryCodeSource("FROM_DEFAULT_COUNTRY", 3);
        CountryCodeSource[] arrayOfCountryCodeSource = new CountryCodeSource[4];
        arrayOfCountryCodeSource[0] = FROM_NUMBER_WITH_PLUS_SIGN;
        arrayOfCountryCodeSource[1] = FROM_NUMBER_WITH_IDD;
        arrayOfCountryCodeSource[2] = FROM_NUMBER_WITHOUT_PLUS_SIGN;
        arrayOfCountryCodeSource[3] = FROM_DEFAULT_COUNTRY;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.Phonenumber
 * JD-Core Version:    0.6.2
 */