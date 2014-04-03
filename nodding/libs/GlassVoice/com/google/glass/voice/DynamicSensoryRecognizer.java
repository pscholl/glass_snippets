package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.build.BuildHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.predicates.Assert;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class DynamicSensoryRecognizer extends Sensory
{
  private static final String GRAMMAR_DISJUNCTION_OPERATOR = "|";
  public static final int MAX_GRAMMAR_PHRASES = 20;
  private static final int PARAM_A_DYNAMIC_PHRASESPOT = 25;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  protected final String grammar;
  private final String ltsFile;

  public DynamicSensoryRecognizer(Context paramContext, String paramString1, String paramString2, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    super(paramContext);
    this.ltsFile = paramString2;
    if (paramArrayOfString1.length > 20)
      throw new IllegalArgumentException("Too many phrases (" + paramArrayOfString1.length + ", max " + 20 + ")");
    long l = nativeInitPhrasespotDynamic();
    String[] arrayOfString1 = nativeNormalizeText(l, getPath(paramContext, paramString2), paramArrayOfString1);
    String[] arrayOfString2 = getValidPhrases(arrayOfString1);
    String[] arrayOfString3 = null;
    if (paramArrayOfString2 != null)
    {
      int i = paramArrayOfString2.length;
      arrayOfString3 = null;
      if (i != 0)
      {
        arrayOfString3 = getValidTags(arrayOfString1, paramArrayOfString2);
        checkValidity(arrayOfString3);
      }
    }
    this.grammar = generateGrammar(arrayOfString2, arrayOfString3);
    String[] arrayOfString4 = generateGrammarWords(arrayOfString2);
    if ((TextUtils.isEmpty(this.grammar)) || (arrayOfString4 == null) || (arrayOfString4.length == 0))
    {
      logger.e("Error generating grammar, Sensory object not correctly initialized", new Object[0]);
      this.sensoryContext = 0L;
      return;
    }
    this.sensoryContext = nativeCompileGrammar(l, getPath(paramContext, paramString1), getPath(paramContext, paramString2), this.grammar, arrayOfString4);
  }

  private static void checkValidity(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str1 = paramArrayOfString[j];
      if ((str1 == null) || (str1.trim().isEmpty()))
        throw new IllegalArgumentException("Null or empty tag");
      String str2 = VoiceCommand.normalizeSemanticTag(str1);
      if (!str1.equals(str2))
        throw new IllegalArgumentException(String.format("Tag not in normalized form: %s, %s", new Object[] { str1, str2 }));
    }
  }

  static String generateGrammar(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    boolean bool = true;
    if ((paramArrayOfString1 == null) || (paramArrayOfString1.length == 0))
      throw new IllegalArgumentException("Null or empty array of phrases provided for grammar, returning null grammar");
    if (paramArrayOfString1.length > 20)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfString1.length);
      arrayOfObject[bool] = Integer.valueOf(20);
      throw new IllegalArgumentException(String.format("Too many phrases (%d, max %d), returning null grammar", arrayOfObject));
    }
    StringBuilder localStringBuilder;
    if ((paramArrayOfString2 == null) || (paramArrayOfString1.length == paramArrayOfString2.length))
    {
      Assert.assertTrue(bool);
      localStringBuilder = new StringBuilder();
    }
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfString1.length)
        break label229;
      localStringBuilder.append("w").append(i + 1).append(" = ");
      String[] arrayOfString = paramArrayOfString1[i].split(" ");
      int m = 0;
      while (true)
        if (m < arrayOfString.length)
        {
          localStringBuilder.append(arrayOfString[m]);
          if ((paramArrayOfString2 != null) && (m == -1 + arrayOfString.length))
          {
            localStringBuilder.append("%");
            localStringBuilder.append(arrayOfString[m]);
            localStringBuilder.append("_tag_");
            localStringBuilder.append(paramArrayOfString2[i]);
          }
          localStringBuilder.append(" ");
          m++;
          continue;
          bool = false;
          break;
        }
      localStringBuilder.append("; ");
    }
    label229: localStringBuilder.append("g = ");
    int j = 1;
    if (j < 1 + paramArrayOfString1.length)
    {
      localStringBuilder.append("$w").append(j);
      if (j == paramArrayOfString1.length)
        localStringBuilder.append("; ");
      while (true)
      {
        j++;
        break;
        localStringBuilder.append(" ").append("|").append(" ");
      }
    }
    for (int k = 1; k < 1 + paramArrayOfString1.length; k++)
    {
      localStringBuilder.append("paramA: $w").append(k).append(" ").append(25).append("; ");
      localStringBuilder.append("paramB: $w").append(k).append(" -").append(k).append("; ");
    }
    logger.d("Generated dynamic grammar", new Object[0]);
    String str = localStringBuilder.toString().replace("%", "%%");
    Log.logPii(3, "DynamicSensory", "Dynamic grammar: " + str);
    return localStringBuilder.toString();
  }

  private String[] generateGrammarWords(String[] paramArrayOfString)
  {
    String[] arrayOfString1;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
    {
      logger.e("Null or empty array of phrases provided for grammar words, returning null words", new Object[0]);
      arrayOfString1 = null;
    }
    while (true)
    {
      return arrayOfString1;
      if (paramArrayOfString.length > 20)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramArrayOfString.length);
        localFormattingLogger.e("Too many phrases (%s, max 20), returning null grammar", arrayOfObject);
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = paramArrayOfString[j].split(" ");
        int m = arrayOfString2.length;
        for (int n = 0; n < m; n++)
          localArrayList.add(arrayOfString2[n]);
      }
      arrayOfString1 = new String[localArrayList.size()];
      for (int k = 0; k < localArrayList.size(); k++)
        arrayOfString1[k] = ((String)localArrayList.get(k));
    }
  }

  private static String[] getValidPhrases(String[] paramArrayOfString)
  {
    return getValuesWithNonEmptyKeys(paramArrayOfString, paramArrayOfString);
  }

  private static String[] getValidTags(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    return getValuesWithNonEmptyKeys(paramArrayOfString1, paramArrayOfString2);
  }

  private static String[] getValuesWithNonEmptyKeys(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    int i = 0;
    if (i < paramArrayOfString1.length)
    {
      if (TextUtils.isEmpty(paramArrayOfString1[i].trim()));
      while (true)
      {
        i++;
        break;
        localLinkedList.add(paramArrayOfString2[i]);
      }
    }
    return (String[])localLinkedList.toArray(new String[localLinkedList.size()]);
  }

  @VisibleForTesting
  int getGrammarRuleCountForTests()
  {
    return TextUtils.split(this.grammar, "\\|").length;
  }

  @VisibleForTesting
  String getGrammarRuleForTests()
  {
    return this.grammar;
  }

  @VisibleForTesting
  public String getLtsFileBeingUsedForTests()
  {
    return this.ltsFile;
  }

  public VoiceCommand stringToCommand(String paramString)
  {
    return new VoiceCommand(paramString);
  }

  public String toString()
  {
    if (BuildHelper.isUser());
    for (String str = "(redacted)"; ; str = this.grammar)
      return "DynamicSensoryRecognizer [grammar=" + str + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.DynamicSensoryRecognizer
 * JD-Core Version:    0.6.2
 */