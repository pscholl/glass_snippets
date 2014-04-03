package com.google.glass.voice;

import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class VoiceUtils
{
  private static final Pattern PATTERN_HASHTAG = Pattern.compile("(hash\\s?tag\\s(?!$))", 2);
  private static final Pattern PATTERN_HASHTAG_CONTENT = Pattern.compile("(#.*)");
  private static final Pattern PATTERN_HASHTAG_SPACES = Pattern.compile("\\s+([^#])");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static CharSequence normalizeHashtags(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      paramCharSequence = null;
    Matcher localMatcher1;
    do
    {
      return paramCharSequence;
      localMatcher1 = PATTERN_HASHTAG.matcher(paramCharSequence);
    }
    while ((!localMatcher1.find()) || (TextUtils.indexOf(paramCharSequence, '#') != -1));
    String str1 = localMatcher1.replaceAll("#");
    StringBuffer localStringBuffer = new StringBuffer(str1.length());
    Matcher localMatcher2 = PATTERN_HASHTAG_CONTENT.matcher(str1);
    if (localMatcher2.find())
    {
      String str2 = localMatcher2.group(1);
      if (str2 != null)
        localMatcher2.appendReplacement(localStringBuffer, PATTERN_HASHTAG_SPACES.matcher(str2).replaceAll("$1").toLowerCase().replace("'", ""));
    }
    localMatcher2.appendTail(localStringBuffer);
    return localStringBuffer;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceUtils
 * JD-Core Version:    0.6.2
 */