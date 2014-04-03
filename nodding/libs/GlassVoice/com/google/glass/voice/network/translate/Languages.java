package com.google.glass.voice.network.translate;

import com.google.common.collect.Maps;
import java.util.Map;

public final class Languages
{
  private static final String[][] DEFAULT_TO_LANGUAGES_SPEC = { { "af", "Afrikaans" }, { "sq", "Albanian" }, { "ar", "Arabic" }, { "hy", "Armenian" }, { "az", "Azerbaijani" }, { "eu", "Basque" }, { "be", "Belarusian" }, { "bn", "Bengali" }, { "bg", "Bulgarian" }, { "ca", "Catalan" }, { "zh-CN", "Chinese (Simplified)" }, { "zh-TW", "Chinese (Traditional)" }, { "hr", "Croatian" }, { "cs", "Czech" }, { "da", "Danish" }, { "nl", "Dutch" }, { "en", "English" }, { "eo", "Esperanto" }, { "et", "Estonian" }, { "tl", "Filipino" }, { "fi", "Finnish" }, { "fr", "French" }, { "gl", "Galician" }, { "ka", "Georgian" }, { "de", "German" }, { "el", "Greek" }, { "gu", "Gujarati" }, { "ht", "Haitian Creole" }, { "iw", "Hebrew" }, { "hi", "Hindi" }, { "hu", "Hungarian" }, { "is", "Icelandic" }, { "id", "Indonesian" }, { "ga", "Irish" }, { "it", "Italian" }, { "ja", "Japanese" }, { "kn", "Kannada" }, { "ko", "Korean" }, { "lo", "Lao" }, { "la", "Latin" }, { "lv", "Latvian" }, { "lt", "Lithuanian" }, { "mk", "Macedonian" }, { "ms", "Malay" }, { "mt", "Maltese" }, { "no", "Norwegian" }, { "fa", "Persian" }, { "pl", "Polish" }, { "pt", "Portuguese" }, { "ro", "Romanian" }, { "ru", "Russian" }, { "sr", "Serbian" }, { "sk", "Slovak" }, { "sl", "Slovenian" }, { "es", "Spanish" }, { "sw", "Swahili" }, { "sv", "Swedish" }, { "ta", "Tamil" }, { "te", "Telugu" }, { "th", "Thai" }, { "tr", "Turkish" }, { "uk", "Ukrainian" }, { "ur", "Urdu" }, { "vi", "Vietnamese" }, { "cy", "Welsh" }, { "yi", "Yiddish" } };
  private static final Map<String, String> DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP = Maps.newHashMap();

  static
  {
    for (String[] arrayOfString1 : DEFAULT_TO_LANGUAGES_SPEC)
      DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP.put(arrayOfString1[1], arrayOfString1[0]);
  }

  public static String getLanguageShortName(String paramString)
  {
    return (String)DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP.get(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.translate.Languages
 * JD-Core Version:    0.6.2
 */