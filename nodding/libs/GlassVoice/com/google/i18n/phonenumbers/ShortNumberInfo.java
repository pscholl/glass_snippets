package com.google.i18n.phonenumbers;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ShortNumberInfo
{
  private static final ShortNumberInfo INSTANCE = new ShortNumberInfo(PhoneNumberUtil.getInstance());
  private static final Logger logger = Logger.getLogger(ShortNumberInfo.class.getName());
  private final PhoneNumberUtil phoneUtil;

  ShortNumberInfo(PhoneNumberUtil paramPhoneNumberUtil)
  {
    this.phoneUtil = paramPhoneNumberUtil;
  }

  public static ShortNumberInfo getInstance()
  {
    return INSTANCE;
  }

  private String getRegionCodeForShortNumberFromRegionList(Phonenumber.PhoneNumber paramPhoneNumber, List<String> paramList)
  {
    if (paramList.size() == 0);
    String str1;
    String str2;
    Phonemetadata.PhoneMetadata localPhoneMetadata;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return null;
        if (paramList.size() == 1)
          return (String)paramList.get(0);
        str1 = this.phoneUtil.getNationalSignificantNumber(paramPhoneNumber);
        localIterator = paramList.iterator();
      }
      str2 = (String)localIterator.next();
      localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(str2);
    }
    while ((localPhoneMetadata == null) || (!this.phoneUtil.isNumberMatchingDesc(str1, localPhoneMetadata.getShortCode())));
    return str2;
  }

  private boolean matchesEmergencyNumberHelper(String paramString1, String paramString2, boolean paramBoolean)
  {
    String str1 = PhoneNumberUtil.extractPossibleNumber(paramString1);
    if (PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(str1).lookingAt());
    Phonemetadata.PhoneMetadata localPhoneMetadata;
    do
    {
      return false;
      localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(paramString2);
    }
    while ((localPhoneMetadata == null) || (!localPhoneMetadata.hasEmergency()));
    Pattern localPattern = Pattern.compile(localPhoneMetadata.getEmergency().getNationalNumberPattern());
    String str2 = PhoneNumberUtil.normalizeDigitsOnly(str1);
    if ((!paramBoolean) || (paramString2 == "BR") || (paramString2 == "CL"))
      return localPattern.matcher(str2).matches();
    return localPattern.matcher(str2).lookingAt();
  }

  public boolean connectsToEmergencyNumber(String paramString1, String paramString2)
  {
    return matchesEmergencyNumberHelper(paramString1, paramString2, true);
  }

  String getExampleShortNumber(String paramString)
  {
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(paramString);
    if (localPhoneMetadata == null)
      return "";
    Phonemetadata.PhoneNumberDesc localPhoneNumberDesc = localPhoneMetadata.getShortCode();
    if (localPhoneNumberDesc.hasExampleNumber())
      return localPhoneNumberDesc.getExampleNumber();
    return "";
  }

  String getExampleShortNumberForCost(String paramString, ShortNumberCost paramShortNumberCost)
  {
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(paramString);
    if (localPhoneMetadata == null)
      return "";
    int i = 1.$SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[paramShortNumberCost.ordinal()];
    Phonemetadata.PhoneNumberDesc localPhoneNumberDesc = null;
    switch (i)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while ((localPhoneNumberDesc != null) && (localPhoneNumberDesc.hasExampleNumber()))
    {
      return localPhoneNumberDesc.getExampleNumber();
      localPhoneNumberDesc = localPhoneMetadata.getTollFree();
      continue;
      localPhoneNumberDesc = localPhoneMetadata.getStandardRate();
      continue;
      localPhoneNumberDesc = localPhoneMetadata.getPremiumRate();
    }
    return "";
  }

  public ShortNumberCost getExpectedCost(Phonenumber.PhoneNumber paramPhoneNumber)
  {
    String str1 = getRegionCodeForShortNumberFromRegionList(paramPhoneNumber, this.phoneUtil.getRegionCodesForCountryCode(paramPhoneNumber.getCountryCode()));
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(str1);
    if (localPhoneMetadata == null)
      return ShortNumberCost.UNKNOWN_COST;
    String str2 = this.phoneUtil.getNationalSignificantNumber(paramPhoneNumber);
    if (this.phoneUtil.isNumberMatchingDesc(str2, localPhoneMetadata.getPremiumRate()))
      return ShortNumberCost.PREMIUM_RATE;
    if (this.phoneUtil.isNumberMatchingDesc(str2, localPhoneMetadata.getStandardRate()))
      return ShortNumberCost.STANDARD_RATE;
    if (this.phoneUtil.isNumberMatchingDesc(str2, localPhoneMetadata.getTollFree()))
      return ShortNumberCost.TOLL_FREE;
    if (isEmergencyNumber(str2, str1))
      return ShortNumberCost.TOLL_FREE;
    return ShortNumberCost.UNKNOWN_COST;
  }

  Set<String> getSupportedRegions()
  {
    return Collections.unmodifiableSet(MetadataManager.getShortNumberMetadataSupportedRegions());
  }

  public boolean isCarrierSpecific(Phonenumber.PhoneNumber paramPhoneNumber)
  {
    String str1 = getRegionCodeForShortNumberFromRegionList(paramPhoneNumber, this.phoneUtil.getRegionCodesForCountryCode(paramPhoneNumber.getCountryCode()));
    String str2 = this.phoneUtil.getNationalSignificantNumber(paramPhoneNumber);
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(str1);
    return (localPhoneMetadata != null) && (this.phoneUtil.isNumberMatchingDesc(str2, localPhoneMetadata.getCarrierSpecific()));
  }

  public boolean isEmergencyNumber(String paramString1, String paramString2)
  {
    return matchesEmergencyNumberHelper(paramString1, paramString2, false);
  }

  public boolean isPossibleShortNumber(Phonenumber.PhoneNumber paramPhoneNumber)
  {
    List localList = this.phoneUtil.getRegionCodesForCountryCode(paramPhoneNumber.getCountryCode());
    String str1 = this.phoneUtil.getNationalSignificantNumber(paramPhoneNumber);
    String str2 = getRegionCodeForShortNumberFromRegionList(paramPhoneNumber, localList);
    if ((localList.size() > 1) && (str2 != null))
      return true;
    return isPossibleShortNumber(str1, str2);
  }

  public boolean isPossibleShortNumber(String paramString1, String paramString2)
  {
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(paramString2);
    if (localPhoneMetadata == null)
      return false;
    Phonemetadata.PhoneNumberDesc localPhoneNumberDesc = localPhoneMetadata.getGeneralDesc();
    return this.phoneUtil.isNumberPossibleForDesc(paramString1, localPhoneNumberDesc);
  }

  public boolean isValidShortNumber(Phonenumber.PhoneNumber paramPhoneNumber)
  {
    List localList = this.phoneUtil.getRegionCodesForCountryCode(paramPhoneNumber.getCountryCode());
    String str1 = this.phoneUtil.getNationalSignificantNumber(paramPhoneNumber);
    String str2 = getRegionCodeForShortNumberFromRegionList(paramPhoneNumber, localList);
    if ((localList.size() > 1) && (str2 != null))
      return true;
    return isValidShortNumber(str1, str2);
  }

  public boolean isValidShortNumber(String paramString1, String paramString2)
  {
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getShortNumberMetadataForRegion(paramString2);
    if (localPhoneMetadata == null);
    Phonemetadata.PhoneNumberDesc localPhoneNumberDesc1;
    do
    {
      return false;
      localPhoneNumberDesc1 = localPhoneMetadata.getGeneralDesc();
    }
    while ((!localPhoneNumberDesc1.hasNationalNumberPattern()) || (!this.phoneUtil.isNumberMatchingDesc(paramString1, localPhoneNumberDesc1)));
    Phonemetadata.PhoneNumberDesc localPhoneNumberDesc2 = localPhoneMetadata.getShortCode();
    if (!localPhoneNumberDesc2.hasNationalNumberPattern())
    {
      logger.log(Level.WARNING, "No short code national number pattern found for region: " + paramString2);
      return false;
    }
    return this.phoneUtil.isNumberMatchingDesc(paramString1, localPhoneNumberDesc2);
  }

  public static enum ShortNumberCost
  {
    static
    {
      STANDARD_RATE = new ShortNumberCost("STANDARD_RATE", 1);
      PREMIUM_RATE = new ShortNumberCost("PREMIUM_RATE", 2);
      UNKNOWN_COST = new ShortNumberCost("UNKNOWN_COST", 3);
      ShortNumberCost[] arrayOfShortNumberCost = new ShortNumberCost[4];
      arrayOfShortNumberCost[0] = TOLL_FREE;
      arrayOfShortNumberCost[1] = STANDARD_RATE;
      arrayOfShortNumberCost[2] = PREMIUM_RATE;
      arrayOfShortNumberCost[3] = UNKNOWN_COST;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.ShortNumberInfo
 * JD-Core Version:    0.6.2
 */