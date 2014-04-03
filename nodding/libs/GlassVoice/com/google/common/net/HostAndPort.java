package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Beta
@Immutable
public final class HostAndPort
  implements Serializable
{
  private static final Pattern BRACKET_PATTERN = Pattern.compile("^\\[(.*:.*)\\](?::(\\d*))?$");
  private static final int NO_PORT = -1;
  private static final long serialVersionUID;
  private final boolean hasBracketlessColons;
  private final String host;
  private final int port;

  private HostAndPort(String paramString, int paramInt, boolean paramBoolean)
  {
    this.host = paramString;
    this.port = paramInt;
    this.hasBracketlessColons = paramBoolean;
  }

  public static HostAndPort fromParts(String paramString, int paramInt)
  {
    Preconditions.checkArgument(isValidPort(paramInt));
    HostAndPort localHostAndPort = fromString(paramString);
    if (!localHostAndPort.hasPort());
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return new HostAndPort(localHostAndPort.host, paramInt, localHostAndPort.hasBracketlessColons);
    }
  }

  public static HostAndPort fromString(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    boolean bool1 = false;
    String str1;
    String str2;
    if (paramString.startsWith("["))
    {
      Matcher localMatcher = BRACKET_PATTERN.matcher(paramString);
      Preconditions.checkArgument(localMatcher.matches(), "Invalid bracketed host/port: %s", new Object[] { paramString });
      str1 = localMatcher.group(1);
      str2 = localMatcher.group(2);
    }
    while (true)
    {
      int j = -1;
      boolean bool2;
      if (!Strings.isNullOrEmpty(str2))
      {
        if (str2.startsWith("+"))
          break label206;
        bool2 = true;
        Preconditions.checkArgument(bool2, "Unparseable port number: %s", new Object[] { paramString });
      }
      try
      {
        int k = Integer.parseInt(str2);
        j = k;
        Preconditions.checkArgument(isValidPort(j), "Port number out of range: %s", new Object[] { paramString });
        return new HostAndPort(str1, j, bool1);
        int i = paramString.indexOf(':');
        if ((i >= 0) && (paramString.indexOf(':', i + 1) == -1))
        {
          str1 = paramString.substring(0, i);
          str2 = paramString.substring(i + 1);
          bool1 = false;
        }
        else
        {
          str1 = paramString;
          if (i >= 0);
          for (bool1 = true; ; bool1 = false)
          {
            str2 = null;
            break;
          }
          label206: bool2 = false;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
    throw new IllegalArgumentException("Unparseable port number: " + paramString);
  }

  private static boolean isValidPort(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= 65535);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (this == paramObject);
    HostAndPort localHostAndPort;
    do
    {
      return true;
      if (!(paramObject instanceof HostAndPort))
        break;
      localHostAndPort = (HostAndPort)paramObject;
    }
    while ((Objects.equal(this.host, localHostAndPort.host)) && (this.port == localHostAndPort.port) && (this.hasBracketlessColons == localHostAndPort.hasBracketlessColons));
    return false;
    return false;
  }

  public String getHostText()
  {
    return this.host;
  }

  public int getPort()
  {
    Preconditions.checkState(hasPort());
    return this.port;
  }

  public int getPortOrDefault(int paramInt)
  {
    if (hasPort())
      paramInt = this.port;
    return paramInt;
  }

  public boolean hasPort()
  {
    return this.port >= 0;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.host;
    arrayOfObject[1] = Integer.valueOf(this.port);
    arrayOfObject[2] = Boolean.valueOf(this.hasBracketlessColons);
    return Objects.hashCode(arrayOfObject);
  }

  public HostAndPort requireBracketsForIPv6()
  {
    if (!this.hasBracketlessColons);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.host;
      Preconditions.checkArgument(bool, "Possible bracketless IPv6 literal: %s", arrayOfObject);
      return this;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(7 + this.host.length());
    if (this.host.indexOf(':') >= 0)
      localStringBuilder.append('[').append(this.host).append(']');
    while (true)
    {
      if (hasPort())
        localStringBuilder.append(':').append(this.port);
      return localStringBuilder.toString();
      localStringBuilder.append(this.host);
    }
  }

  public HostAndPort withDefaultPort(int paramInt)
  {
    Preconditions.checkArgument(isValidPort(paramInt));
    if ((hasPort()) || (this.port == paramInt))
      return this;
    return new HostAndPort(this.host, paramInt, this.hasBracketlessColons);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.net.HostAndPort
 * JD-Core Version:    0.6.2
 */