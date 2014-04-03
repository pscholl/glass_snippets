package com.google.i18n.phonenumbers;

import java.util.Arrays;

public final class PhoneNumberMatch
{
  private final Phonenumber.PhoneNumber number;
  private final String rawString;
  private final int start;

  PhoneNumberMatch(int paramInt, String paramString, Phonenumber.PhoneNumber paramPhoneNumber)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Start index must be >= 0.");
    if ((paramString == null) || (paramPhoneNumber == null))
      throw new NullPointerException();
    this.start = paramInt;
    this.rawString = paramString;
    this.number = paramPhoneNumber;
  }

  public int end()
  {
    return this.start + this.rawString.length();
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PhoneNumberMatch localPhoneNumberMatch;
    do
    {
      return true;
      if (!(paramObject instanceof PhoneNumberMatch))
        return false;
      localPhoneNumberMatch = (PhoneNumberMatch)paramObject;
    }
    while ((this.rawString.equals(localPhoneNumberMatch.rawString)) && (this.start == localPhoneNumberMatch.start) && (this.number.equals(localPhoneNumberMatch.number)));
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.start);
    arrayOfObject[1] = this.rawString;
    arrayOfObject[2] = this.number;
    return Arrays.hashCode(arrayOfObject);
  }

  public Phonenumber.PhoneNumber number()
  {
    return this.number;
  }

  public String rawString()
  {
    return this.rawString;
  }

  public int start()
  {
    return this.start;
  }

  public String toString()
  {
    return "PhoneNumberMatch [" + start() + "," + end() + ") " + this.rawString;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.PhoneNumberMatch
 * JD-Core Version:    0.6.2
 */