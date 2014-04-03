package com.google.i18n.phonenumbers;

public class NumberParseException extends Exception
{
  private ErrorType errorType;
  private String message;

  public NumberParseException(ErrorType paramErrorType, String paramString)
  {
    super(paramString);
    this.message = paramString;
    this.errorType = paramErrorType;
  }

  public ErrorType getErrorType()
  {
    return this.errorType;
  }

  public String toString()
  {
    return "Error type: " + this.errorType + ". " + this.message;
  }

  public static enum ErrorType
  {
    static
    {
      TOO_LONG = new ErrorType("TOO_LONG", 4);
      ErrorType[] arrayOfErrorType = new ErrorType[5];
      arrayOfErrorType[0] = INVALID_COUNTRY_CODE;
      arrayOfErrorType[1] = NOT_A_NUMBER;
      arrayOfErrorType[2] = TOO_SHORT_AFTER_IDD;
      arrayOfErrorType[3] = TOO_SHORT_NSN;
      arrayOfErrorType[4] = TOO_LONG;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.NumberParseException
 * JD-Core Version:    0.6.2
 */