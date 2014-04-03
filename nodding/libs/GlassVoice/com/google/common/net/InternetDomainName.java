package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Objects.ToStringHelper;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.util.List;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public final class InternetDomainName
{
  private static final CharMatcher DASH_MATCHER = CharMatcher.anyOf("-_");
  private static final CharMatcher DOTS_MATCHER = CharMatcher.anyOf(".。．｡");
  private static final Joiner DOT_JOINER;
  private static final String DOT_REGEX = "\\.";
  private static final Splitter DOT_SPLITTER = Splitter.on('.');
  private static final int MAX_DOMAIN_PART_LENGTH = 63;
  private static final int MAX_LENGTH = 253;
  private static final int MAX_PARTS = 127;
  private static final int NO_PUBLIC_SUFFIX_FOUND = -1;
  private static final CharMatcher PART_CHAR_MATCHER = CharMatcher.JAVA_LETTER_OR_DIGIT.or(DASH_MATCHER);
  private final String name;
  private final ImmutableList<String> parts;
  private final int publicSuffixIndex;

  static
  {
    DOT_JOINER = Joiner.on('.');
  }

  InternetDomainName(String paramString)
  {
    String str = Ascii.toLowerCase(DOTS_MATCHER.replaceFrom(paramString, '.'));
    if (str.endsWith("."))
      str = str.substring(0, -1 + str.length());
    boolean bool1;
    if (str.length() <= 253)
    {
      bool1 = true;
      Preconditions.checkArgument(bool1, "Domain name too long: '%s':", new Object[] { str });
      this.name = str;
      this.parts = ImmutableList.copyOf(DOT_SPLITTER.split(str));
      if (this.parts.size() > 127)
        break label147;
    }
    label147: for (boolean bool2 = true; ; bool2 = false)
    {
      Preconditions.checkArgument(bool2, "Domain has too many parts: '%s'", new Object[] { str });
      Preconditions.checkArgument(validateSyntax(this.parts), "Not a valid domain name: '%s'", new Object[] { str });
      this.publicSuffixIndex = findPublicSuffix();
      return;
      bool1 = false;
      break;
    }
  }

  private InternetDomainName ancestor(int paramInt)
  {
    return from(DOT_JOINER.join(this.parts.subList(paramInt, this.parts.size())));
  }

  private int findPublicSuffix()
  {
    int i = this.parts.size();
    for (int j = 0; j < i; j++)
    {
      String str = DOT_JOINER.join(this.parts.subList(j, i));
      if (TldPatterns.EXACT.contains(str));
      do
      {
        return j;
        if (TldPatterns.EXCLUDED.contains(str))
          return j + 1;
      }
      while (matchesWildcardPublicSuffix(str));
    }
    return -1;
  }

  public static InternetDomainName from(String paramString)
  {
    return new InternetDomainName((String)Preconditions.checkNotNull(paramString));
  }

  @Deprecated
  public static InternetDomainName fromLenient(String paramString)
  {
    return from(paramString);
  }

  public static boolean isValid(String paramString)
  {
    try
    {
      from(paramString);
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return false;
  }

  @Deprecated
  public static boolean isValidLenient(String paramString)
  {
    return isValid(paramString);
  }

  private static boolean matchesWildcardPublicSuffix(String paramString)
  {
    String[] arrayOfString = paramString.split("\\.", 2);
    return (arrayOfString.length == 2) && (TldPatterns.UNDER.contains(arrayOfString[1]));
  }

  private static boolean validatePart(String paramString, boolean paramBoolean)
  {
    if ((paramString.length() < 1) || (paramString.length() > 63));
    String str;
    do
    {
      return false;
      str = CharMatcher.ASCII.retainFrom(paramString);
    }
    while ((!PART_CHAR_MATCHER.matchesAllOf(str)) || (DASH_MATCHER.matches(paramString.charAt(0))) || (DASH_MATCHER.matches(paramString.charAt(-1 + paramString.length()))) || ((paramBoolean) && (CharMatcher.DIGIT.matches(paramString.charAt(0)))));
    return true;
  }

  private static boolean validateSyntax(List<String> paramList)
  {
    int i = -1 + paramList.size();
    if (!validatePart((String)paramList.get(i), true))
      return false;
    for (int j = 0; j < i; j++)
      if (!validatePart((String)paramList.get(j), false))
        return false;
    return true;
  }

  public InternetDomainName child(String paramString)
  {
    return from((String)Preconditions.checkNotNull(paramString) + "." + this.name);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof InternetDomainName))
    {
      InternetDomainName localInternetDomainName = (InternetDomainName)paramObject;
      return this.name.equals(localInternetDomainName.name);
    }
    return false;
  }

  public boolean hasParent()
  {
    return this.parts.size() > 1;
  }

  public boolean hasPublicSuffix()
  {
    return this.publicSuffixIndex != -1;
  }

  public int hashCode()
  {
    return this.name.hashCode();
  }

  public boolean isPublicSuffix()
  {
    return this.publicSuffixIndex == 0;
  }

  public boolean isTopPrivateDomain()
  {
    return this.publicSuffixIndex == 1;
  }

  public boolean isUnderPublicSuffix()
  {
    return this.publicSuffixIndex > 0;
  }

  public String name()
  {
    return this.name;
  }

  public InternetDomainName parent()
  {
    boolean bool = hasParent();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.name;
    Preconditions.checkState(bool, "Domain '%s' has no parent", arrayOfObject);
    return ancestor(1);
  }

  public ImmutableList<String> parts()
  {
    return this.parts;
  }

  public InternetDomainName publicSuffix()
  {
    if (hasPublicSuffix())
      return ancestor(this.publicSuffixIndex);
    return null;
  }

  public String toString()
  {
    return Objects.toStringHelper(this).add("name", this.name).toString();
  }

  public InternetDomainName topPrivateDomain()
  {
    if (isTopPrivateDomain())
      return this;
    boolean bool = isUnderPublicSuffix();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.name;
    Preconditions.checkState(bool, "Not under a public suffix: %s", arrayOfObject);
    return ancestor(-1 + this.publicSuffixIndex);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.net.InternetDomainName
 * JD-Core Version:    0.6.2
 */