package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class Phonemetadata
{
  public static class NumberFormat
    implements Externalizable
  {
    private static final long serialVersionUID = 1L;
    private String domesticCarrierCodeFormattingRule_ = "";
    private String format_ = "";
    private boolean hasDomesticCarrierCodeFormattingRule;
    private boolean hasFormat;
    private boolean hasNationalPrefixFormattingRule;
    private boolean hasNationalPrefixOptionalWhenFormatting;
    private boolean hasPattern;
    private List<String> leadingDigitsPattern_ = new ArrayList();
    private String nationalPrefixFormattingRule_ = "";
    private boolean nationalPrefixOptionalWhenFormatting_ = false;
    private String pattern_ = "";

    public static Builder newBuilder()
    {
      return new Builder();
    }

    public NumberFormat addLeadingDigitsPattern(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.leadingDigitsPattern_.add(paramString);
      return this;
    }

    public NumberFormat clearNationalPrefixFormattingRule()
    {
      this.hasNationalPrefixFormattingRule = false;
      this.nationalPrefixFormattingRule_ = "";
      return this;
    }

    public String getDomesticCarrierCodeFormattingRule()
    {
      return this.domesticCarrierCodeFormattingRule_;
    }

    public String getFormat()
    {
      return this.format_;
    }

    public String getLeadingDigitsPattern(int paramInt)
    {
      return (String)this.leadingDigitsPattern_.get(paramInt);
    }

    public String getNationalPrefixFormattingRule()
    {
      return this.nationalPrefixFormattingRule_;
    }

    public String getPattern()
    {
      return this.pattern_;
    }

    public boolean hasDomesticCarrierCodeFormattingRule()
    {
      return this.hasDomesticCarrierCodeFormattingRule;
    }

    public boolean hasFormat()
    {
      return this.hasFormat;
    }

    public boolean hasNationalPrefixFormattingRule()
    {
      return this.hasNationalPrefixFormattingRule;
    }

    public boolean hasNationalPrefixOptionalWhenFormatting()
    {
      return this.hasNationalPrefixOptionalWhenFormatting;
    }

    public boolean hasPattern()
    {
      return this.hasPattern;
    }

    public boolean isNationalPrefixOptionalWhenFormatting()
    {
      return this.nationalPrefixOptionalWhenFormatting_;
    }

    public List<String> leadingDigitPatterns()
    {
      return this.leadingDigitsPattern_;
    }

    public int leadingDigitsPatternSize()
    {
      return this.leadingDigitsPattern_.size();
    }

    public NumberFormat mergeFrom(NumberFormat paramNumberFormat)
    {
      if (paramNumberFormat.hasPattern())
        setPattern(paramNumberFormat.getPattern());
      if (paramNumberFormat.hasFormat())
        setFormat(paramNumberFormat.getFormat());
      int i = paramNumberFormat.leadingDigitsPatternSize();
      for (int j = 0; j < i; j++)
        addLeadingDigitsPattern(paramNumberFormat.getLeadingDigitsPattern(j));
      if (paramNumberFormat.hasNationalPrefixFormattingRule())
        setNationalPrefixFormattingRule(paramNumberFormat.getNationalPrefixFormattingRule());
      if (paramNumberFormat.hasDomesticCarrierCodeFormattingRule())
        setDomesticCarrierCodeFormattingRule(paramNumberFormat.getDomesticCarrierCodeFormattingRule());
      setNationalPrefixOptionalWhenFormatting(paramNumberFormat.isNationalPrefixOptionalWhenFormatting());
      return this;
    }

    public void readExternal(ObjectInput paramObjectInput)
      throws IOException
    {
      setPattern(paramObjectInput.readUTF());
      setFormat(paramObjectInput.readUTF());
      int i = paramObjectInput.readInt();
      for (int j = 0; j < i; j++)
        this.leadingDigitsPattern_.add(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setNationalPrefixFormattingRule(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setDomesticCarrierCodeFormattingRule(paramObjectInput.readUTF());
      setNationalPrefixOptionalWhenFormatting(paramObjectInput.readBoolean());
    }

    public NumberFormat setDomesticCarrierCodeFormattingRule(String paramString)
    {
      this.hasDomesticCarrierCodeFormattingRule = true;
      this.domesticCarrierCodeFormattingRule_ = paramString;
      return this;
    }

    public NumberFormat setFormat(String paramString)
    {
      this.hasFormat = true;
      this.format_ = paramString;
      return this;
    }

    public NumberFormat setNationalPrefixFormattingRule(String paramString)
    {
      this.hasNationalPrefixFormattingRule = true;
      this.nationalPrefixFormattingRule_ = paramString;
      return this;
    }

    public NumberFormat setNationalPrefixOptionalWhenFormatting(boolean paramBoolean)
    {
      this.hasNationalPrefixOptionalWhenFormatting = true;
      this.nationalPrefixOptionalWhenFormatting_ = paramBoolean;
      return this;
    }

    public NumberFormat setPattern(String paramString)
    {
      this.hasPattern = true;
      this.pattern_ = paramString;
      return this;
    }

    public void writeExternal(ObjectOutput paramObjectOutput)
      throws IOException
    {
      paramObjectOutput.writeUTF(this.pattern_);
      paramObjectOutput.writeUTF(this.format_);
      int i = leadingDigitsPatternSize();
      paramObjectOutput.writeInt(i);
      for (int j = 0; j < i; j++)
        paramObjectOutput.writeUTF((String)this.leadingDigitsPattern_.get(j));
      paramObjectOutput.writeBoolean(this.hasNationalPrefixFormattingRule);
      if (this.hasNationalPrefixFormattingRule)
        paramObjectOutput.writeUTF(this.nationalPrefixFormattingRule_);
      paramObjectOutput.writeBoolean(this.hasDomesticCarrierCodeFormattingRule);
      if (this.hasDomesticCarrierCodeFormattingRule)
        paramObjectOutput.writeUTF(this.domesticCarrierCodeFormattingRule_);
      paramObjectOutput.writeBoolean(this.nationalPrefixOptionalWhenFormatting_);
    }

    public static final class Builder extends Phonemetadata.NumberFormat
    {
      public Phonemetadata.NumberFormat build()
      {
        return this;
      }
    }
  }

  public static class PhoneMetadata
    implements Externalizable
  {
    private static final long serialVersionUID = 1L;
    private Phonemetadata.PhoneNumberDesc carrierSpecific_ = null;
    private int countryCode_ = 0;
    private Phonemetadata.PhoneNumberDesc emergency_ = null;
    private Phonemetadata.PhoneNumberDesc fixedLine_ = null;
    private Phonemetadata.PhoneNumberDesc generalDesc_ = null;
    private boolean hasCarrierSpecific;
    private boolean hasCountryCode;
    private boolean hasEmergency;
    private boolean hasFixedLine;
    private boolean hasGeneralDesc;
    private boolean hasId;
    private boolean hasInternationalPrefix;
    private boolean hasLeadingDigits;
    private boolean hasLeadingZeroPossible;
    private boolean hasMainCountryForCode;
    private boolean hasMobile;
    private boolean hasNationalPrefix;
    private boolean hasNationalPrefixForParsing;
    private boolean hasNationalPrefixTransformRule;
    private boolean hasNoInternationalDialling;
    private boolean hasPager;
    private boolean hasPersonalNumber;
    private boolean hasPreferredExtnPrefix;
    private boolean hasPreferredInternationalPrefix;
    private boolean hasPremiumRate;
    private boolean hasSameMobileAndFixedLinePattern;
    private boolean hasSharedCost;
    private boolean hasShortCode;
    private boolean hasStandardRate;
    private boolean hasTollFree;
    private boolean hasUan;
    private boolean hasVoicemail;
    private boolean hasVoip;
    private String id_ = "";
    private String internationalPrefix_ = "";
    private List<Phonemetadata.NumberFormat> intlNumberFormat_ = new ArrayList();
    private String leadingDigits_ = "";
    private boolean leadingZeroPossible_ = false;
    private boolean mainCountryForCode_ = false;
    private Phonemetadata.PhoneNumberDesc mobile_ = null;
    private String nationalPrefixForParsing_ = "";
    private String nationalPrefixTransformRule_ = "";
    private String nationalPrefix_ = "";
    private Phonemetadata.PhoneNumberDesc noInternationalDialling_ = null;
    private List<Phonemetadata.NumberFormat> numberFormat_ = new ArrayList();
    private Phonemetadata.PhoneNumberDesc pager_ = null;
    private Phonemetadata.PhoneNumberDesc personalNumber_ = null;
    private String preferredExtnPrefix_ = "";
    private String preferredInternationalPrefix_ = "";
    private Phonemetadata.PhoneNumberDesc premiumRate_ = null;
    private boolean sameMobileAndFixedLinePattern_ = false;
    private Phonemetadata.PhoneNumberDesc sharedCost_ = null;
    private Phonemetadata.PhoneNumberDesc shortCode_ = null;
    private Phonemetadata.PhoneNumberDesc standardRate_ = null;
    private Phonemetadata.PhoneNumberDesc tollFree_ = null;
    private Phonemetadata.PhoneNumberDesc uan_ = null;
    private Phonemetadata.PhoneNumberDesc voicemail_ = null;
    private Phonemetadata.PhoneNumberDesc voip_ = null;

    public static Builder newBuilder()
    {
      return new Builder();
    }

    public PhoneMetadata addIntlNumberFormat(Phonemetadata.NumberFormat paramNumberFormat)
    {
      if (paramNumberFormat == null)
        throw new NullPointerException();
      this.intlNumberFormat_.add(paramNumberFormat);
      return this;
    }

    public PhoneMetadata addNumberFormat(Phonemetadata.NumberFormat paramNumberFormat)
    {
      if (paramNumberFormat == null)
        throw new NullPointerException();
      this.numberFormat_.add(paramNumberFormat);
      return this;
    }

    public PhoneMetadata clearIntlNumberFormat()
    {
      this.intlNumberFormat_.clear();
      return this;
    }

    public Phonemetadata.PhoneNumberDesc getCarrierSpecific()
    {
      return this.carrierSpecific_;
    }

    public int getCountryCode()
    {
      return this.countryCode_;
    }

    public Phonemetadata.PhoneNumberDesc getEmergency()
    {
      return this.emergency_;
    }

    public Phonemetadata.PhoneNumberDesc getFixedLine()
    {
      return this.fixedLine_;
    }

    public Phonemetadata.PhoneNumberDesc getGeneralDesc()
    {
      return this.generalDesc_;
    }

    public String getId()
    {
      return this.id_;
    }

    public String getInternationalPrefix()
    {
      return this.internationalPrefix_;
    }

    public Phonemetadata.NumberFormat getIntlNumberFormat(int paramInt)
    {
      return (Phonemetadata.NumberFormat)this.intlNumberFormat_.get(paramInt);
    }

    public String getLeadingDigits()
    {
      return this.leadingDigits_;
    }

    public boolean getMainCountryForCode()
    {
      return this.mainCountryForCode_;
    }

    public Phonemetadata.PhoneNumberDesc getMobile()
    {
      return this.mobile_;
    }

    public String getNationalPrefix()
    {
      return this.nationalPrefix_;
    }

    public String getNationalPrefixForParsing()
    {
      return this.nationalPrefixForParsing_;
    }

    public String getNationalPrefixTransformRule()
    {
      return this.nationalPrefixTransformRule_;
    }

    public Phonemetadata.PhoneNumberDesc getNoInternationalDialling()
    {
      return this.noInternationalDialling_;
    }

    public Phonemetadata.NumberFormat getNumberFormat(int paramInt)
    {
      return (Phonemetadata.NumberFormat)this.numberFormat_.get(paramInt);
    }

    public Phonemetadata.PhoneNumberDesc getPager()
    {
      return this.pager_;
    }

    public Phonemetadata.PhoneNumberDesc getPersonalNumber()
    {
      return this.personalNumber_;
    }

    public String getPreferredExtnPrefix()
    {
      return this.preferredExtnPrefix_;
    }

    public String getPreferredInternationalPrefix()
    {
      return this.preferredInternationalPrefix_;
    }

    public Phonemetadata.PhoneNumberDesc getPremiumRate()
    {
      return this.premiumRate_;
    }

    public Phonemetadata.PhoneNumberDesc getSharedCost()
    {
      return this.sharedCost_;
    }

    public Phonemetadata.PhoneNumberDesc getShortCode()
    {
      return this.shortCode_;
    }

    public Phonemetadata.PhoneNumberDesc getStandardRate()
    {
      return this.standardRate_;
    }

    public Phonemetadata.PhoneNumberDesc getTollFree()
    {
      return this.tollFree_;
    }

    public Phonemetadata.PhoneNumberDesc getUan()
    {
      return this.uan_;
    }

    public Phonemetadata.PhoneNumberDesc getVoicemail()
    {
      return this.voicemail_;
    }

    public Phonemetadata.PhoneNumberDesc getVoip()
    {
      return this.voip_;
    }

    public boolean hasCarrierSpecific()
    {
      return this.hasCarrierSpecific;
    }

    public boolean hasCountryCode()
    {
      return this.hasCountryCode;
    }

    public boolean hasEmergency()
    {
      return this.hasEmergency;
    }

    public boolean hasFixedLine()
    {
      return this.hasFixedLine;
    }

    public boolean hasGeneralDesc()
    {
      return this.hasGeneralDesc;
    }

    public boolean hasId()
    {
      return this.hasId;
    }

    public boolean hasInternationalPrefix()
    {
      return this.hasInternationalPrefix;
    }

    public boolean hasLeadingDigits()
    {
      return this.hasLeadingDigits;
    }

    public boolean hasLeadingZeroPossible()
    {
      return this.hasLeadingZeroPossible;
    }

    public boolean hasMainCountryForCode()
    {
      return this.hasMainCountryForCode;
    }

    public boolean hasMobile()
    {
      return this.hasMobile;
    }

    public boolean hasNationalPrefix()
    {
      return this.hasNationalPrefix;
    }

    public boolean hasNationalPrefixForParsing()
    {
      return this.hasNationalPrefixForParsing;
    }

    public boolean hasNationalPrefixTransformRule()
    {
      return this.hasNationalPrefixTransformRule;
    }

    public boolean hasNoInternationalDialling()
    {
      return this.hasNoInternationalDialling;
    }

    public boolean hasPager()
    {
      return this.hasPager;
    }

    public boolean hasPersonalNumber()
    {
      return this.hasPersonalNumber;
    }

    public boolean hasPreferredExtnPrefix()
    {
      return this.hasPreferredExtnPrefix;
    }

    public boolean hasPreferredInternationalPrefix()
    {
      return this.hasPreferredInternationalPrefix;
    }

    public boolean hasPremiumRate()
    {
      return this.hasPremiumRate;
    }

    public boolean hasSameMobileAndFixedLinePattern()
    {
      return this.hasSameMobileAndFixedLinePattern;
    }

    public boolean hasSharedCost()
    {
      return this.hasSharedCost;
    }

    public boolean hasShortCode()
    {
      return this.hasShortCode;
    }

    public boolean hasStandardRate()
    {
      return this.hasStandardRate;
    }

    public boolean hasTollFree()
    {
      return this.hasTollFree;
    }

    public boolean hasUan()
    {
      return this.hasUan;
    }

    public boolean hasVoicemail()
    {
      return this.hasVoicemail;
    }

    public boolean hasVoip()
    {
      return this.hasVoip;
    }

    public int intlNumberFormatSize()
    {
      return this.intlNumberFormat_.size();
    }

    public List<Phonemetadata.NumberFormat> intlNumberFormats()
    {
      return this.intlNumberFormat_;
    }

    public boolean isLeadingZeroPossible()
    {
      return this.leadingZeroPossible_;
    }

    public boolean isMainCountryForCode()
    {
      return this.mainCountryForCode_;
    }

    public boolean isSameMobileAndFixedLinePattern()
    {
      return this.sameMobileAndFixedLinePattern_;
    }

    public int numberFormatSize()
    {
      return this.numberFormat_.size();
    }

    public List<Phonemetadata.NumberFormat> numberFormats()
    {
      return this.numberFormat_;
    }

    public void readExternal(ObjectInput paramObjectInput)
      throws IOException
    {
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc1 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc1.readExternal(paramObjectInput);
        setGeneralDesc(localPhoneNumberDesc1);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc2 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc2.readExternal(paramObjectInput);
        setFixedLine(localPhoneNumberDesc2);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc3 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc3.readExternal(paramObjectInput);
        setMobile(localPhoneNumberDesc3);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc4 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc4.readExternal(paramObjectInput);
        setTollFree(localPhoneNumberDesc4);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc5 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc5.readExternal(paramObjectInput);
        setPremiumRate(localPhoneNumberDesc5);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc6 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc6.readExternal(paramObjectInput);
        setSharedCost(localPhoneNumberDesc6);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc7 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc7.readExternal(paramObjectInput);
        setPersonalNumber(localPhoneNumberDesc7);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc8 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc8.readExternal(paramObjectInput);
        setVoip(localPhoneNumberDesc8);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc9 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc9.readExternal(paramObjectInput);
        setPager(localPhoneNumberDesc9);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc10 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc10.readExternal(paramObjectInput);
        setUan(localPhoneNumberDesc10);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc11 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc11.readExternal(paramObjectInput);
        setEmergency(localPhoneNumberDesc11);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc12 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc12.readExternal(paramObjectInput);
        setVoicemail(localPhoneNumberDesc12);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc13 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc13.readExternal(paramObjectInput);
        setShortCode(localPhoneNumberDesc13);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc14 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc14.readExternal(paramObjectInput);
        setStandardRate(localPhoneNumberDesc14);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc15 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc15.readExternal(paramObjectInput);
        setCarrierSpecific(localPhoneNumberDesc15);
      }
      if (paramObjectInput.readBoolean())
      {
        Phonemetadata.PhoneNumberDesc localPhoneNumberDesc16 = new Phonemetadata.PhoneNumberDesc();
        localPhoneNumberDesc16.readExternal(paramObjectInput);
        setNoInternationalDialling(localPhoneNumberDesc16);
      }
      setId(paramObjectInput.readUTF());
      setCountryCode(paramObjectInput.readInt());
      setInternationalPrefix(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setPreferredInternationalPrefix(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setNationalPrefix(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setPreferredExtnPrefix(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setNationalPrefixForParsing(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setNationalPrefixTransformRule(paramObjectInput.readUTF());
      setSameMobileAndFixedLinePattern(paramObjectInput.readBoolean());
      int i = paramObjectInput.readInt();
      for (int j = 0; j < i; j++)
      {
        Phonemetadata.NumberFormat localNumberFormat1 = new Phonemetadata.NumberFormat();
        localNumberFormat1.readExternal(paramObjectInput);
        this.numberFormat_.add(localNumberFormat1);
      }
      int k = paramObjectInput.readInt();
      for (int m = 0; m < k; m++)
      {
        Phonemetadata.NumberFormat localNumberFormat2 = new Phonemetadata.NumberFormat();
        localNumberFormat2.readExternal(paramObjectInput);
        this.intlNumberFormat_.add(localNumberFormat2);
      }
      setMainCountryForCode(paramObjectInput.readBoolean());
      if (paramObjectInput.readBoolean())
        setLeadingDigits(paramObjectInput.readUTF());
      setLeadingZeroPossible(paramObjectInput.readBoolean());
    }

    public PhoneMetadata setCarrierSpecific(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasCarrierSpecific = true;
      this.carrierSpecific_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setCountryCode(int paramInt)
    {
      this.hasCountryCode = true;
      this.countryCode_ = paramInt;
      return this;
    }

    public PhoneMetadata setEmergency(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasEmergency = true;
      this.emergency_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setFixedLine(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasFixedLine = true;
      this.fixedLine_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setGeneralDesc(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasGeneralDesc = true;
      this.generalDesc_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setId(String paramString)
    {
      this.hasId = true;
      this.id_ = paramString;
      return this;
    }

    public PhoneMetadata setInternationalPrefix(String paramString)
    {
      this.hasInternationalPrefix = true;
      this.internationalPrefix_ = paramString;
      return this;
    }

    public PhoneMetadata setLeadingDigits(String paramString)
    {
      this.hasLeadingDigits = true;
      this.leadingDigits_ = paramString;
      return this;
    }

    public PhoneMetadata setLeadingZeroPossible(boolean paramBoolean)
    {
      this.hasLeadingZeroPossible = true;
      this.leadingZeroPossible_ = paramBoolean;
      return this;
    }

    public PhoneMetadata setMainCountryForCode(boolean paramBoolean)
    {
      this.hasMainCountryForCode = true;
      this.mainCountryForCode_ = paramBoolean;
      return this;
    }

    public PhoneMetadata setMobile(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasMobile = true;
      this.mobile_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setNationalPrefix(String paramString)
    {
      this.hasNationalPrefix = true;
      this.nationalPrefix_ = paramString;
      return this;
    }

    public PhoneMetadata setNationalPrefixForParsing(String paramString)
    {
      this.hasNationalPrefixForParsing = true;
      this.nationalPrefixForParsing_ = paramString;
      return this;
    }

    public PhoneMetadata setNationalPrefixTransformRule(String paramString)
    {
      this.hasNationalPrefixTransformRule = true;
      this.nationalPrefixTransformRule_ = paramString;
      return this;
    }

    public PhoneMetadata setNoInternationalDialling(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasNoInternationalDialling = true;
      this.noInternationalDialling_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setPager(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasPager = true;
      this.pager_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setPersonalNumber(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasPersonalNumber = true;
      this.personalNumber_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setPreferredExtnPrefix(String paramString)
    {
      this.hasPreferredExtnPrefix = true;
      this.preferredExtnPrefix_ = paramString;
      return this;
    }

    public PhoneMetadata setPreferredInternationalPrefix(String paramString)
    {
      this.hasPreferredInternationalPrefix = true;
      this.preferredInternationalPrefix_ = paramString;
      return this;
    }

    public PhoneMetadata setPremiumRate(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasPremiumRate = true;
      this.premiumRate_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setSameMobileAndFixedLinePattern(boolean paramBoolean)
    {
      this.hasSameMobileAndFixedLinePattern = true;
      this.sameMobileAndFixedLinePattern_ = paramBoolean;
      return this;
    }

    public PhoneMetadata setSharedCost(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasSharedCost = true;
      this.sharedCost_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setShortCode(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasShortCode = true;
      this.shortCode_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setStandardRate(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasStandardRate = true;
      this.standardRate_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setTollFree(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasTollFree = true;
      this.tollFree_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setUan(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasUan = true;
      this.uan_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setVoicemail(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasVoicemail = true;
      this.voicemail_ = paramPhoneNumberDesc;
      return this;
    }

    public PhoneMetadata setVoip(Phonemetadata.PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc == null)
        throw new NullPointerException();
      this.hasVoip = true;
      this.voip_ = paramPhoneNumberDesc;
      return this;
    }

    public void writeExternal(ObjectOutput paramObjectOutput)
      throws IOException
    {
      paramObjectOutput.writeBoolean(this.hasGeneralDesc);
      if (this.hasGeneralDesc)
        this.generalDesc_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasFixedLine);
      if (this.hasFixedLine)
        this.fixedLine_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasMobile);
      if (this.hasMobile)
        this.mobile_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasTollFree);
      if (this.hasTollFree)
        this.tollFree_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasPremiumRate);
      if (this.hasPremiumRate)
        this.premiumRate_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasSharedCost);
      if (this.hasSharedCost)
        this.sharedCost_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasPersonalNumber);
      if (this.hasPersonalNumber)
        this.personalNumber_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasVoip);
      if (this.hasVoip)
        this.voip_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasPager);
      if (this.hasPager)
        this.pager_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasUan);
      if (this.hasUan)
        this.uan_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasEmergency);
      if (this.hasEmergency)
        this.emergency_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasVoicemail);
      if (this.hasVoicemail)
        this.voicemail_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasShortCode);
      if (this.hasShortCode)
        this.shortCode_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasStandardRate);
      if (this.hasStandardRate)
        this.standardRate_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasCarrierSpecific);
      if (this.hasCarrierSpecific)
        this.carrierSpecific_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.hasNoInternationalDialling);
      if (this.hasNoInternationalDialling)
        this.noInternationalDialling_.writeExternal(paramObjectOutput);
      paramObjectOutput.writeUTF(this.id_);
      paramObjectOutput.writeInt(this.countryCode_);
      paramObjectOutput.writeUTF(this.internationalPrefix_);
      paramObjectOutput.writeBoolean(this.hasPreferredInternationalPrefix);
      if (this.hasPreferredInternationalPrefix)
        paramObjectOutput.writeUTF(this.preferredInternationalPrefix_);
      paramObjectOutput.writeBoolean(this.hasNationalPrefix);
      if (this.hasNationalPrefix)
        paramObjectOutput.writeUTF(this.nationalPrefix_);
      paramObjectOutput.writeBoolean(this.hasPreferredExtnPrefix);
      if (this.hasPreferredExtnPrefix)
        paramObjectOutput.writeUTF(this.preferredExtnPrefix_);
      paramObjectOutput.writeBoolean(this.hasNationalPrefixForParsing);
      if (this.hasNationalPrefixForParsing)
        paramObjectOutput.writeUTF(this.nationalPrefixForParsing_);
      paramObjectOutput.writeBoolean(this.hasNationalPrefixTransformRule);
      if (this.hasNationalPrefixTransformRule)
        paramObjectOutput.writeUTF(this.nationalPrefixTransformRule_);
      paramObjectOutput.writeBoolean(this.sameMobileAndFixedLinePattern_);
      int i = numberFormatSize();
      paramObjectOutput.writeInt(i);
      for (int j = 0; j < i; j++)
        ((Phonemetadata.NumberFormat)this.numberFormat_.get(j)).writeExternal(paramObjectOutput);
      int k = intlNumberFormatSize();
      paramObjectOutput.writeInt(k);
      for (int m = 0; m < k; m++)
        ((Phonemetadata.NumberFormat)this.intlNumberFormat_.get(m)).writeExternal(paramObjectOutput);
      paramObjectOutput.writeBoolean(this.mainCountryForCode_);
      paramObjectOutput.writeBoolean(this.hasLeadingDigits);
      if (this.hasLeadingDigits)
        paramObjectOutput.writeUTF(this.leadingDigits_);
      paramObjectOutput.writeBoolean(this.leadingZeroPossible_);
    }

    public static final class Builder extends Phonemetadata.PhoneMetadata
    {
      public Phonemetadata.PhoneMetadata build()
      {
        return this;
      }
    }
  }

  public static class PhoneMetadataCollection
    implements Externalizable
  {
    private static final long serialVersionUID = 1L;
    private List<Phonemetadata.PhoneMetadata> metadata_ = new ArrayList();

    public static Builder newBuilder()
    {
      return new Builder();
    }

    public PhoneMetadataCollection addMetadata(Phonemetadata.PhoneMetadata paramPhoneMetadata)
    {
      if (paramPhoneMetadata == null)
        throw new NullPointerException();
      this.metadata_.add(paramPhoneMetadata);
      return this;
    }

    public PhoneMetadataCollection clear()
    {
      this.metadata_.clear();
      return this;
    }

    public int getMetadataCount()
    {
      return this.metadata_.size();
    }

    public List<Phonemetadata.PhoneMetadata> getMetadataList()
    {
      return this.metadata_;
    }

    public void readExternal(ObjectInput paramObjectInput)
      throws IOException
    {
      int i = paramObjectInput.readInt();
      for (int j = 0; j < i; j++)
      {
        Phonemetadata.PhoneMetadata localPhoneMetadata = new Phonemetadata.PhoneMetadata();
        localPhoneMetadata.readExternal(paramObjectInput);
        this.metadata_.add(localPhoneMetadata);
      }
    }

    public void writeExternal(ObjectOutput paramObjectOutput)
      throws IOException
    {
      int i = getMetadataCount();
      paramObjectOutput.writeInt(i);
      for (int j = 0; j < i; j++)
        ((Phonemetadata.PhoneMetadata)this.metadata_.get(j)).writeExternal(paramObjectOutput);
    }

    public static final class Builder extends Phonemetadata.PhoneMetadataCollection
    {
      public Phonemetadata.PhoneMetadataCollection build()
      {
        return this;
      }
    }
  }

  public static class PhoneNumberDesc
    implements Externalizable
  {
    private static final long serialVersionUID = 1L;
    private String exampleNumber_ = "";
    private boolean hasExampleNumber;
    private boolean hasNationalNumberPattern;
    private boolean hasPossibleNumberPattern;
    private String nationalNumberPattern_ = "";
    private String possibleNumberPattern_ = "";

    public static Builder newBuilder()
    {
      return new Builder();
    }

    public boolean exactlySameAs(PhoneNumberDesc paramPhoneNumberDesc)
    {
      return (this.nationalNumberPattern_.equals(paramPhoneNumberDesc.nationalNumberPattern_)) && (this.possibleNumberPattern_.equals(paramPhoneNumberDesc.possibleNumberPattern_)) && (this.exampleNumber_.equals(paramPhoneNumberDesc.exampleNumber_));
    }

    public String getExampleNumber()
    {
      return this.exampleNumber_;
    }

    public String getNationalNumberPattern()
    {
      return this.nationalNumberPattern_;
    }

    public String getPossibleNumberPattern()
    {
      return this.possibleNumberPattern_;
    }

    public boolean hasExampleNumber()
    {
      return this.hasExampleNumber;
    }

    public boolean hasNationalNumberPattern()
    {
      return this.hasNationalNumberPattern;
    }

    public boolean hasPossibleNumberPattern()
    {
      return this.hasPossibleNumberPattern;
    }

    public PhoneNumberDesc mergeFrom(PhoneNumberDesc paramPhoneNumberDesc)
    {
      if (paramPhoneNumberDesc.hasNationalNumberPattern())
        setNationalNumberPattern(paramPhoneNumberDesc.getNationalNumberPattern());
      if (paramPhoneNumberDesc.hasPossibleNumberPattern())
        setPossibleNumberPattern(paramPhoneNumberDesc.getPossibleNumberPattern());
      if (paramPhoneNumberDesc.hasExampleNumber())
        setExampleNumber(paramPhoneNumberDesc.getExampleNumber());
      return this;
    }

    public void readExternal(ObjectInput paramObjectInput)
      throws IOException
    {
      if (paramObjectInput.readBoolean())
        setNationalNumberPattern(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setPossibleNumberPattern(paramObjectInput.readUTF());
      if (paramObjectInput.readBoolean())
        setExampleNumber(paramObjectInput.readUTF());
    }

    public PhoneNumberDesc setExampleNumber(String paramString)
    {
      this.hasExampleNumber = true;
      this.exampleNumber_ = paramString;
      return this;
    }

    public PhoneNumberDesc setNationalNumberPattern(String paramString)
    {
      this.hasNationalNumberPattern = true;
      this.nationalNumberPattern_ = paramString;
      return this;
    }

    public PhoneNumberDesc setPossibleNumberPattern(String paramString)
    {
      this.hasPossibleNumberPattern = true;
      this.possibleNumberPattern_ = paramString;
      return this;
    }

    public void writeExternal(ObjectOutput paramObjectOutput)
      throws IOException
    {
      paramObjectOutput.writeBoolean(this.hasNationalNumberPattern);
      if (this.hasNationalNumberPattern)
        paramObjectOutput.writeUTF(this.nationalNumberPattern_);
      paramObjectOutput.writeBoolean(this.hasPossibleNumberPattern);
      if (this.hasPossibleNumberPattern)
        paramObjectOutput.writeUTF(this.possibleNumberPattern_);
      paramObjectOutput.writeBoolean(this.hasExampleNumber);
      if (this.hasExampleNumber)
        paramObjectOutput.writeUTF(this.exampleNumber_);
    }

    public static final class Builder extends Phonemetadata.PhoneNumberDesc
    {
      public Phonemetadata.PhoneNumberDesc build()
      {
        return this;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.Phonemetadata
 * JD-Core Version:    0.6.2
 */