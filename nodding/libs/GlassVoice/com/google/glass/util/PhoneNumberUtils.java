package com.google.glass.util;

import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class PhoneNumberUtils
{
  private static final String REGION_US = "US";
  private static final int SHORT_NUMBER_LENGTH = 3;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();

  public static String formatPhoneNumberForDial(String paramString)
  {
    if (android.telephony.PhoneNumberUtils.isEmergencyNumber(paramString));
    Phonenumber.PhoneNumber localPhoneNumber;
    do
    {
      do
        return paramString;
      while ((paramString.length() <= 3) && (PhoneNumberUtil.normalizeDigitsOnly(paramString).equals(paramString)));
      localPhoneNumber = parseNumber(paramString);
    }
    while (localPhoneNumber == null);
    return phoneNumberUtil.formatNumberForMobileDialing(localPhoneNumber, getRegion(), false);
  }

  public static String formatPhoneNumberForDisplay(String paramString)
  {
    Assert.assertNotUiThread();
    Phonenumber.PhoneNumber localPhoneNumber = parseNumber(paramString);
    if (localPhoneNumber != null)
      paramString = phoneNumberUtil.format(localPhoneNumber, PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL);
    return paramString;
  }

  public static List<String> formatPhoneNumbersForDisplay(Collection<String> paramCollection)
  {
    ArrayList localArrayList = Lists.newArrayListWithCapacity(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      localArrayList.add(formatPhoneNumberForDisplay((String)localIterator.next()));
    return localArrayList;
  }

  public static Destination getDestination(String paramString)
  {
    Assert.assertNotUiThread();
    Phonenumber.PhoneNumber localPhoneNumber = parseNumber(paramString);
    if (localPhoneNumber == null)
      return Destination.UNKNOWN;
    logger.d("number: %s", new Object[] { localPhoneNumber });
    if (phoneNumberUtil.getCountryCodeForRegion(getRegion()) == localPhoneNumber.getCountryCode())
      return Destination.NATIONAL;
    return Destination.INTERNATIONAL;
  }

  @VisibleForTesting
  static String getRegion()
  {
    String str = Locale.getDefault().getCountry();
    if (TextUtils.isEmpty(str))
      str = "US";
    return str;
  }

  private static Phonenumber.PhoneNumber parseNumber(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    try
    {
      Phonenumber.PhoneNumber localPhoneNumber = phoneNumberUtil.parse(paramString, getRegion());
      return localPhoneNumber;
    }
    catch (NumberParseException localNumberParseException)
    {
      logger.e(localNumberParseException, "Failed to parse phone number.", new Object[0]);
    }
    return null;
  }

  public static enum Destination
  {
    static
    {
      INTERNATIONAL = new Destination("INTERNATIONAL", 1);
      UNKNOWN = new Destination("UNKNOWN", 2);
      Destination[] arrayOfDestination = new Destination[3];
      arrayOfDestination[0] = NATIONAL;
      arrayOfDestination[1] = INTERNATIONAL;
      arrayOfDestination[2] = UNKNOWN;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.PhoneNumberUtils
 * JD-Core Version:    0.6.2
 */