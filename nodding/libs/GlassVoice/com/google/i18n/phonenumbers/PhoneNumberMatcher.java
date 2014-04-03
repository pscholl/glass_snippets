package com.google.i18n.phonenumbers;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class PhoneNumberMatcher
  implements Iterator<PhoneNumberMatch>
{
  private static final Pattern GROUP_SEPARATOR = Pattern.compile("\\p{Z}[^" + str8 + "\\p{Nd}]*");
  private static final Pattern LEAD_CLASS;
  private static final Pattern MATCHING_BRACKETS;
  private static final Pattern PATTERN = Pattern.compile("(?:" + str9 + str6 + ")" + str3 + str7 + "(?:" + str6 + str7 + ")" + str5 + "(?:" + PhoneNumberUtil.EXTN_PATTERNS_FOR_MATCHING + ")?", 66);
  private static final Pattern PUB_PAGES = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");
  private static final Pattern SLASH_SEPARATED_DATES = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");
  private static final Pattern TIME_STAMPS = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d [0-2]\\d$");
  private static final Pattern TIME_STAMPS_SUFFIX = Pattern.compile(":[0-5]\\d");
  private PhoneNumberMatch lastMatch = null;
  private final PhoneNumberUtil.Leniency leniency;
  private long maxTries;
  private final PhoneNumberUtil phoneUtil;
  private final String preferredRegion;
  private int searchIndex = 0;
  private State state = State.NOT_READY;
  private final CharSequence text;

  static
  {
    String str1 = "[^" + "(\\[（［" + ")\\]）］" + "]";
    String str2 = limit(0, 3);
    MATCHING_BRACKETS = Pattern.compile("(?:[" + "(\\[（［" + "])?" + "(?:" + str1 + "+" + "[" + ")\\]）］" + "])?" + str1 + "+" + "(?:[" + "(\\[（［" + "]" + str1 + "+[" + ")\\]）］" + "])" + str2 + str1 + "*");
    String str3 = limit(0, 2);
    String str4 = limit(0, 4);
    String str5 = limit(0, 19);
    String str6 = "[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]" + str4;
    String str7 = "\\p{Nd}" + limit(1, 19);
    String str8 = "(\\[（［" + "+＋";
    String str9 = "[" + str8 + "]";
    LEAD_CLASS = Pattern.compile(str9);
  }

  PhoneNumberMatcher(PhoneNumberUtil paramPhoneNumberUtil, CharSequence paramCharSequence, String paramString, PhoneNumberUtil.Leniency paramLeniency, long paramLong)
  {
    if ((paramPhoneNumberUtil == null) || (paramLeniency == null))
      throw new NullPointerException();
    if (paramLong < 0L)
      throw new IllegalArgumentException();
    this.phoneUtil = paramPhoneNumberUtil;
    if (paramCharSequence != null);
    while (true)
    {
      this.text = paramCharSequence;
      this.preferredRegion = paramString;
      this.leniency = paramLeniency;
      this.maxTries = paramLong;
      return;
      paramCharSequence = "";
    }
  }

  static boolean allNumberGroupsAreExactlyPresent(PhoneNumberUtil paramPhoneNumberUtil, Phonenumber.PhoneNumber paramPhoneNumber, StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    String[] arrayOfString = PhoneNumberUtil.NON_DIGITS_PATTERN.split(paramStringBuilder.toString());
    int i;
    if (paramPhoneNumber.hasExtension())
    {
      i = -2 + arrayOfString.length;
      if ((arrayOfString.length != 1) && (!arrayOfString[i].contains(paramPhoneNumberUtil.getNationalSignificantNumber(paramPhoneNumber))))
        break label62;
    }
    label62: 
    do
    {
      return true;
      i = -1 + arrayOfString.length;
      break;
      int j = -1 + paramArrayOfString.length;
      while ((j > 0) && (i >= 0))
      {
        if (!arrayOfString[i].equals(paramArrayOfString[j]))
          return false;
        j--;
        i--;
      }
    }
    while ((i >= 0) && (arrayOfString[i].endsWith(paramArrayOfString[0])));
    return false;
  }

  static boolean allNumberGroupsRemainGrouped(PhoneNumberUtil paramPhoneNumberUtil, Phonenumber.PhoneNumber paramPhoneNumber, StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    int i = 0;
    for (int j = 0; j < paramArrayOfString.length; j++)
    {
      int k = paramStringBuilder.indexOf(paramArrayOfString[j], i);
      if (k < 0)
        return false;
      i = k + paramArrayOfString[j].length();
      if ((j == 0) && (i < paramStringBuilder.length()) && (paramPhoneNumberUtil.getNddPrefixForRegion(paramPhoneNumberUtil.getRegionCodeForCountryCode(paramPhoneNumber.getCountryCode()), true) != null) && (Character.isDigit(paramStringBuilder.charAt(i))))
      {
        String str = paramPhoneNumberUtil.getNationalSignificantNumber(paramPhoneNumber);
        return paramStringBuilder.substring(i - paramArrayOfString[j].length()).startsWith(str);
      }
    }
    return paramStringBuilder.substring(i).contains(paramPhoneNumber.getExtension());
  }

  static boolean checkNumberGroupingIsValid(Phonenumber.PhoneNumber paramPhoneNumber, String paramString, PhoneNumberUtil paramPhoneNumberUtil, NumberGroupingChecker paramNumberGroupingChecker)
  {
    StringBuilder localStringBuilder = PhoneNumberUtil.normalizeDigits(paramString, true);
    if (paramNumberGroupingChecker.checkGroups(paramPhoneNumberUtil, paramPhoneNumber, localStringBuilder, getNationalNumberGroups(paramPhoneNumberUtil, paramPhoneNumber, null)))
      return true;
    Phonemetadata.PhoneMetadata localPhoneMetadata = MetadataManager.getAlternateFormatsForCountry(paramPhoneNumber.getCountryCode());
    if (localPhoneMetadata != null)
    {
      Iterator localIterator = localPhoneMetadata.numberFormats().iterator();
      while (localIterator.hasNext())
        if (paramNumberGroupingChecker.checkGroups(paramPhoneNumberUtil, paramPhoneNumber, localStringBuilder, getNationalNumberGroups(paramPhoneNumberUtil, paramPhoneNumber, (Phonemetadata.NumberFormat)localIterator.next())))
          return true;
    }
    return false;
  }

  static boolean containsMoreThanOneSlashInNationalNumber(Phonenumber.PhoneNumber paramPhoneNumber, String paramString)
  {
    int i = paramString.indexOf('/');
    if (i < 0);
    int j;
    do
    {
      return false;
      j = paramString.indexOf('/', i + 1);
    }
    while (j < 0);
    if ((paramPhoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN) || (paramPhoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN));
    for (int k = 1; (k != 0) && (PhoneNumberUtil.normalizeDigitsOnly(paramString.substring(0, i)).equals(Integer.toString(paramPhoneNumber.getCountryCode()))); k = 0)
      return paramString.substring(j + 1).contains("/");
    return true;
  }

  static boolean containsOnlyValidXChars(Phonenumber.PhoneNumber paramPhoneNumber, String paramString, PhoneNumberUtil paramPhoneNumberUtil)
  {
    for (int i = 0; i < -1 + paramString.length(); i++)
    {
      int j = paramString.charAt(i);
      if ((j == 120) || (j == 88))
      {
        int k = paramString.charAt(i + 1);
        if ((k == 120) || (k == 88))
        {
          i++;
          if (paramPhoneNumberUtil.isNumberMatch(paramPhoneNumber, paramString.substring(i)) == PhoneNumberUtil.MatchType.NSN_MATCH);
        }
        else
        {
          while (!PhoneNumberUtil.normalizeDigitsOnly(paramString.substring(i)).equals(paramPhoneNumber.getExtension()))
            return false;
        }
      }
    }
    return true;
  }

  private PhoneNumberMatch extractInnerMatch(String paramString, int paramInt)
  {
    Matcher localMatcher = GROUP_SEPARATOR.matcher(paramString);
    if (localMatcher.find())
    {
      String str1 = paramString.substring(0, localMatcher.start());
      CharSequence localCharSequence1 = trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, str1);
      PhoneNumberMatch localPhoneNumberMatch = parseAndVerify(localCharSequence1.toString(), paramInt);
      if (localPhoneNumberMatch != null);
      do
      {
        int i;
        do
        {
          return localPhoneNumberMatch;
          this.maxTries -= 1L;
          i = localMatcher.end();
          String str2 = paramString.substring(i);
          localPhoneNumberMatch = parseAndVerify(trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, str2).toString(), paramInt + i);
        }
        while (localPhoneNumberMatch != null);
        this.maxTries -= 1L;
        if (this.maxTries <= 0L)
          break;
        for (int j = i; localMatcher.find(); j = localMatcher.start());
        String str3 = paramString.substring(0, j);
        CharSequence localCharSequence2 = trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, str3);
        if (localCharSequence2.equals(localCharSequence1))
          return null;
        localPhoneNumberMatch = parseAndVerify(localCharSequence2.toString(), paramInt);
      }
      while (localPhoneNumberMatch != null);
      this.maxTries -= 1L;
    }
    return null;
  }

  private PhoneNumberMatch extractMatch(CharSequence paramCharSequence, int paramInt)
  {
    boolean bool1 = PUB_PAGES.matcher(paramCharSequence).find();
    PhoneNumberMatch localPhoneNumberMatch = null;
    if (!bool1)
    {
      boolean bool2 = SLASH_SEPARATED_DATES.matcher(paramCharSequence).find();
      localPhoneNumberMatch = null;
      if (!bool2)
        break label41;
    }
    label41: String str1;
    do
    {
      boolean bool3;
      do
      {
        return localPhoneNumberMatch;
        if (!TIME_STAMPS.matcher(paramCharSequence).find())
          break;
        String str2 = this.text.toString().substring(paramInt + paramCharSequence.length());
        bool3 = TIME_STAMPS_SUFFIX.matcher(str2).lookingAt();
        localPhoneNumberMatch = null;
      }
      while (bool3);
      str1 = paramCharSequence.toString();
      localPhoneNumberMatch = parseAndVerify(str1, paramInt);
    }
    while (localPhoneNumberMatch != null);
    return extractInnerMatch(str1, paramInt);
  }

  private PhoneNumberMatch find(int paramInt)
  {
    Matcher localMatcher = PATTERN.matcher(this.text);
    while ((this.maxTries > 0L) && (localMatcher.find(paramInt)))
    {
      int i = localMatcher.start();
      CharSequence localCharSequence1 = this.text.subSequence(i, localMatcher.end());
      CharSequence localCharSequence2 = trimAfterFirstMatch(PhoneNumberUtil.SECOND_NUMBER_START_PATTERN, localCharSequence1);
      PhoneNumberMatch localPhoneNumberMatch = extractMatch(localCharSequence2, i);
      if (localPhoneNumberMatch != null)
        return localPhoneNumberMatch;
      paramInt = i + localCharSequence2.length();
      this.maxTries -= 1L;
    }
    return null;
  }

  private static String[] getNationalNumberGroups(PhoneNumberUtil paramPhoneNumberUtil, Phonenumber.PhoneNumber paramPhoneNumber, Phonemetadata.NumberFormat paramNumberFormat)
  {
    if (paramNumberFormat == null)
    {
      String str = paramPhoneNumberUtil.format(paramPhoneNumber, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
      int i = str.indexOf(';');
      if (i < 0)
        i = str.length();
      return str.substring(1 + str.indexOf('-'), i).split("-");
    }
    return paramPhoneNumberUtil.formatNsnUsingPattern(paramPhoneNumberUtil.getNationalSignificantNumber(paramPhoneNumber), paramNumberFormat, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split("-");
  }

  private static boolean isInvalidPunctuationSymbol(char paramChar)
  {
    return (paramChar == '%') || (Character.getType(paramChar) == 26);
  }

  static boolean isLatinLetter(char paramChar)
  {
    if ((!Character.isLetter(paramChar)) && (Character.getType(paramChar) != 6));
    Character.UnicodeBlock localUnicodeBlock;
    do
    {
      return false;
      localUnicodeBlock = Character.UnicodeBlock.of(paramChar);
    }
    while ((!localUnicodeBlock.equals(Character.UnicodeBlock.BASIC_LATIN)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_A)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_B)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS)));
    return true;
  }

  static boolean isNationalPrefixPresentIfRequired(Phonenumber.PhoneNumber paramPhoneNumber, PhoneNumberUtil paramPhoneNumberUtil)
  {
    if (paramPhoneNumber.getCountryCodeSource() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY);
    Phonemetadata.PhoneMetadata localPhoneMetadata;
    Phonemetadata.NumberFormat localNumberFormat;
    do
    {
      do
      {
        return true;
        localPhoneMetadata = paramPhoneNumberUtil.getMetadataForRegion(paramPhoneNumberUtil.getRegionCodeForCountryCode(paramPhoneNumber.getCountryCode()));
      }
      while (localPhoneMetadata == null);
      String str = paramPhoneNumberUtil.getNationalSignificantNumber(paramPhoneNumber);
      localNumberFormat = paramPhoneNumberUtil.chooseFormattingPatternForNumber(localPhoneMetadata.numberFormats(), str);
    }
    while ((localNumberFormat == null) || (localNumberFormat.getNationalPrefixFormattingRule().length() <= 0) || (localNumberFormat.isNationalPrefixOptionalWhenFormatting()) || (PhoneNumberUtil.formattingRuleHasFirstGroupOnly(localNumberFormat.getNationalPrefixFormattingRule())));
    return paramPhoneNumberUtil.maybeStripNationalPrefixAndCarrierCode(new StringBuilder(PhoneNumberUtil.normalizeDigitsOnly(paramPhoneNumber.getRawInput())), localPhoneMetadata, null);
  }

  private static String limit(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 <= 0) || (paramInt2 < paramInt1))
      throw new IllegalArgumentException();
    return "{" + paramInt1 + "," + paramInt2 + "}";
  }

  private PhoneNumberMatch parseAndVerify(String paramString, int paramInt)
  {
    try
    {
      if (!MATCHING_BRACKETS.matcher(paramString).matches())
        return null;
      if (this.leniency.compareTo(PhoneNumberUtil.Leniency.VALID) >= 0)
      {
        if ((paramInt > 0) && (!LEAD_CLASS.matcher(paramString).lookingAt()))
        {
          char c2 = this.text.charAt(paramInt - 1);
          if ((isInvalidPunctuationSymbol(c2)) || (isLatinLetter(c2)))
            break label192;
        }
        int i = paramInt + paramString.length();
        if (i < this.text.length())
        {
          char c1 = this.text.charAt(i);
          if ((isInvalidPunctuationSymbol(c1)) || (isLatinLetter(c1)))
            break label192;
        }
      }
      Phonenumber.PhoneNumber localPhoneNumber = this.phoneUtil.parseAndKeepRawInput(paramString, this.preferredRegion);
      if (this.leniency.verify(localPhoneNumber, paramString, this.phoneUtil))
      {
        localPhoneNumber.clearCountryCodeSource();
        localPhoneNumber.clearRawInput();
        localPhoneNumber.clearPreferredDomesticCarrierCode();
        PhoneNumberMatch localPhoneNumberMatch = new PhoneNumberMatch(paramInt, paramString, localPhoneNumber);
        return localPhoneNumberMatch;
      }
    }
    catch (NumberParseException localNumberParseException)
    {
    }
    label192: return null;
  }

  private static CharSequence trimAfterFirstMatch(Pattern paramPattern, CharSequence paramCharSequence)
  {
    Matcher localMatcher = paramPattern.matcher(paramCharSequence);
    if (localMatcher.find())
      paramCharSequence = paramCharSequence.subSequence(0, localMatcher.start());
    return paramCharSequence;
  }

  public boolean hasNext()
  {
    if (this.state == State.NOT_READY)
    {
      this.lastMatch = find(this.searchIndex);
      if (this.lastMatch != null)
        break label48;
    }
    for (this.state = State.DONE; this.state == State.READY; this.state = State.READY)
    {
      return true;
      label48: this.searchIndex = this.lastMatch.end();
    }
    return false;
  }

  public PhoneNumberMatch next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    PhoneNumberMatch localPhoneNumberMatch = this.lastMatch;
    this.lastMatch = null;
    this.state = State.NOT_READY;
    return localPhoneNumberMatch;
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }

  static abstract interface NumberGroupingChecker
  {
    public abstract boolean checkGroups(PhoneNumberUtil paramPhoneNumberUtil, Phonenumber.PhoneNumber paramPhoneNumber, StringBuilder paramStringBuilder, String[] paramArrayOfString);
  }

  private static enum State
  {
    static
    {
      DONE = new State("DONE", 2);
      State[] arrayOfState = new State[3];
      arrayOfState[0] = NOT_READY;
      arrayOfState[1] = READY;
      arrayOfState[2] = DONE;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.PhoneNumberMatcher
 * JD-Core Version:    0.6.2
 */