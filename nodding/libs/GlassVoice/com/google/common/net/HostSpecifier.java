package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.net.InetAddress;
import java.text.ParseException;
import javax.annotation.Nullable;

@Beta
public final class HostSpecifier
{
  private final String canonicalForm;

  private HostSpecifier(String paramString)
  {
    this.canonicalForm = paramString;
  }

  public static HostSpecifier from(String paramString)
    throws ParseException
  {
    try
    {
      HostSpecifier localHostSpecifier = fromValid(paramString);
      return localHostSpecifier;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      ParseException localParseException = new ParseException("Invalid host specifier: " + paramString, 0);
      localParseException.initCause(localIllegalArgumentException);
      throw localParseException;
    }
  }

  public static HostSpecifier fromValid(String paramString)
  {
    HostAndPort localHostAndPort = HostAndPort.fromString(paramString);
    boolean bool;
    if (!localHostAndPort.hasPort())
      bool = true;
    while (true)
    {
      Preconditions.checkArgument(bool);
      String str = localHostAndPort.getHostText();
      try
      {
        InetAddress localInetAddress2 = InetAddresses.forString(str);
        localInetAddress1 = localInetAddress2;
        if (localInetAddress1 != null)
        {
          return new HostSpecifier(InetAddresses.toUriString(localInetAddress1));
          bool = false;
          continue;
        }
        InternetDomainName localInternetDomainName = InternetDomainName.from(str);
        if (localInternetDomainName.hasPublicSuffix())
          return new HostSpecifier(localInternetDomainName.name());
        throw new IllegalArgumentException("Domain name does not have a recognized public suffix: " + str);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          InetAddress localInetAddress1 = null;
      }
    }
  }

  public static boolean isValid(String paramString)
  {
    try
    {
      fromValid(paramString);
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return false;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (this == paramObject)
      return true;
    if ((paramObject instanceof HostSpecifier))
    {
      HostSpecifier localHostSpecifier = (HostSpecifier)paramObject;
      return this.canonicalForm.equals(localHostSpecifier.canonicalForm);
    }
    return false;
  }

  public int hashCode()
  {
    return this.canonicalForm.hashCode();
  }

  public String toString()
  {
    return this.canonicalForm;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.net.HostSpecifier
 * JD-Core Version:    0.6.2
 */