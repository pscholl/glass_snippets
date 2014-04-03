package com.google.android.speech.embedded;

import android.os.SystemClock;
import android.util.Log;
import com.google.common.io.Files;
import com.google.speech.grammar.AbstractGrammarCompiler;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
public class Greco3GrammarCompiler
{
  public static int NUM_GENERATED_FILES = 0;
  private static final String TAG = "G3GrammarCompiler";
  private GrammarCompilerImpl mCompiler;
  private final String mConfigFile;
  private final String[] mSearchPaths;

  public Greco3GrammarCompiler(String paramString, List<String> paramList)
  {
    this.mConfigFile = paramString;
    this.mSearchPaths = new String[paramList.size()];
    paramList.toArray(this.mSearchPaths);
  }

  public boolean compile(String paramString1, String paramString2)
  {
    long l = SystemClock.elapsedRealtime();
    if (!this.mCompiler.compileAbnf(paramString1));
    while ((!this.mCompiler.writeClgFst(paramString2 + "/grammar_clg", paramString2 + "/grammar_symbols")) || (!this.mCompiler.writeSemanticFst(paramString2 + "/semantic_fst", paramString2 + "/semantic_symbols")))
      return false;
    Log.i("G3GrammarCompiler", "Compilation complete, time = " + (float)(SystemClock.elapsedRealtime() - l) / 1000.0F + " s");
    return true;
  }

  public void delete()
  {
    this.mCompiler.delete();
  }

  public boolean init()
  {
    this.mCompiler = new GrammarCompilerImpl(null);
    try
    {
      if (Greco3Mode.isAsciiConfiguration(new File(this.mConfigFile)))
        return this.mCompiler.initFromFile(this.mConfigFile, this.mSearchPaths);
      byte[] arrayOfByte = Files.toByteArray(new File(this.mConfigFile));
      boolean bool = this.mCompiler.initFromProto(arrayOfByte, this.mSearchPaths);
      return bool;
    }
    catch (IOException localIOException)
    {
      Log.w("G3GrammarCompiler", "I/O Exception reading binary config file: " + localIOException);
    }
    return false;
  }

  private static class GrammarCompilerImpl extends AbstractGrammarCompiler
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3GrammarCompiler
 * JD-Core Version:    0.6.2
 */