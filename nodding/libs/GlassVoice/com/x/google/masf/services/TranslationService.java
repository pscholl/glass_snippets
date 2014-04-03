package com.x.google.masf.services;

import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.ServiceCallback;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

public class TranslationService
{
  private static final String PARAM_SEPAR = ";";
  private static final String QUERY_PARAM = "q=";
  private static final String SRC_LANG_PARAM = "sl=";
  private static final String TARGET_LANG_PARAM = "tl=";
  private static final String TRANSLATE_SERVICE_URI = "g:tws";
  private static TranslationService theTranslator = null;

  public static TranslationService getSingleton()
  {
    if (theTranslator == null)
      theTranslator = new TranslationService();
    return theTranslator;
  }

  public static String[] getSupportedLangPairNames()
  {
    Vector localVector = getSupportedLangPairs();
    String[] arrayOfString = new String[localVector.size()];
    for (int i = 0; i < localVector.size(); i++)
      arrayOfString[i] = ((LanguagePair)localVector.elementAt(i)).name;
    return arrayOfString;
  }

  public static Vector getSupportedLangPairs()
  {
    Vector localVector = new Vector();
    localVector.addElement(new LanguagePair("en", "fr", "English -> French"));
    localVector.addElement(new LanguagePair("fr", "en", "French -> English"));
    localVector.addElement(new LanguagePair("en", "de", "English -> German"));
    localVector.addElement(new LanguagePair("en", "zh-CN", "English -> Simp. Chinese (beta)"));
    return localVector;
  }

  public void translate(int paramInt, String paramString, ServiceCallback paramServiceCallback)
    throws IOException
  {
    LanguagePair localLanguagePair = (LanguagePair)getSupportedLangPairs().elementAt(paramInt);
    translate(localLanguagePair.srcCode, localLanguagePair.targetCode, paramString, paramServiceCallback);
  }

  public void translate(String paramString1, String paramString2, String paramString3, final ServiceCallback paramServiceCallback)
    throws IOException
  {
    String str = "q=" + paramString3 + ";" + "sl=" + paramString1 + ";" + "tl=" + paramString2;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeUTF(str);
    localDataOutputStream.flush();
    localDataOutputStream.close();
    localByteArrayOutputStream.flush();
    PlainRequest localPlainRequest = new PlainRequest("g:tws", 0, localByteArrayOutputStream.toByteArray());
    localPlainRequest.setListener(new Request.Listener()
    {
      public void requestCompleted(Request paramAnonymousRequest, Response paramAnonymousResponse)
      {
        try
        {
          InputStream localInputStream = paramAnonymousResponse.getInputStream();
          byte[] arrayOfByte = new byte[paramAnonymousResponse.getStreamLength()];
          localInputStream.read(arrayOfByte);
          String str1 = new String(arrayOfByte, "UTF-8");
          int i = str1.indexOf("translated_text data=\"");
          int j = str1.indexOf("\"/>");
          String str2 = str1.substring(i + "translated_text data=\"".length(), j);
          paramServiceCallback.onRequestComplete(str2);
          return;
        }
        catch (IOException localIOException)
        {
          paramServiceCallback.onRequestComplete(null);
        }
      }

      public void requestFailed(Request paramAnonymousRequest, Exception paramAnonymousException)
      {
        paramServiceCallback.onRequestComplete(null);
      }
    });
    MobileServiceMux.getSingleton().submitRequest(localPlainRequest, true);
  }

  static class LanguagePair
  {
    String name;
    String srcCode;
    String targetCode;

    public LanguagePair(String paramString1, String paramString2, String paramString3)
    {
      this.srcCode = paramString1;
      this.targetCode = paramString2;
      this.name = paramString3;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.TranslationService
 * JD-Core Version:    0.6.2
 */