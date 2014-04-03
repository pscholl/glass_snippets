package com.google.glass.voice.network;

import android.net.Uri;
import android.text.TextUtils;
import com.google.common.collect.Maps;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.speech.s3.PinholeStream.PinholeOutput;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class PinholePage
{
  public static final String ACTION_ANSWER_ECT = "act0";
  public static final String END_OF_CARD_MARKER_ECT = "eoc";
  private static final String GLASS_CARD_CLASS = "gls-crd";
  public static final String MAIN_ANSWER_CARD_ECT = "ans0";
  private static final String PELLET_SEPARATOR_PATTERN = "/\\*\"\"\\*/";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Map<String, PinholeDocument> blobs = Maps.newHashMap();
  private StringBuilder headerBuilder = new StringBuilder();
  private boolean headerComplete = false;
  private boolean responseComplete = false;
  private String unparsedPelletFragment = "";

  private void addGwsBodyFragmentPellet(JSONObject paramJSONObject)
  {
    try
    {
      String str1 = paramJSONObject.getString("u");
      String str2 = paramJSONObject.getString("d");
      PinholeDocument localPinholeDocument = (PinholeDocument)this.blobs.get(str1);
      if (localPinholeDocument == null)
      {
        localPinholeDocument = new PinholeDocument(str1);
        this.blobs.put(str1, localPinholeDocument);
      }
      localPinholeDocument.text.append(str2);
      return;
    }
    catch (JSONException localJSONException)
    {
      logger.e(localJSONException, "Couldn't parse gwsBodyFragment pellet.", new Object[0]);
      logger.d("pellet %s", new Object[] { paramJSONObject });
    }
  }

  private void handleJsonBlobs(String paramString)
  {
    String str = this.unparsedPelletFragment + paramString;
    if (TextUtils.isEmpty(str))
      return;
    this.unparsedPelletFragment = "";
    String[] arrayOfString = str.split("/\\*\"\"\\*/");
    int i = 0;
    label46: JSONObject localJSONObject;
    if (i < arrayOfString.length)
    {
      localJSONObject = parseJson(arrayOfString[i]);
      if (localJSONObject != null)
        break label145;
      if ((i != -1 + arrayOfString.length) || (this.responseComplete))
        break label98;
      this.unparsedPelletFragment = arrayOfString[i];
    }
    while (true)
    {
      i++;
      break label46;
      break;
      label98: logger.e("Couldn't parse gwsBodyFragment pellet in handleJsonBlobs.", new Object[0]);
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = arrayOfString[i];
      localFormattingLogger.d("pellet %s", arrayOfObject);
      continue;
      label145: addGwsBodyFragmentPellet(localJSONObject);
    }
  }

  private JSONObject parseJson(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
    }
    return null;
  }

  public PinholeDocument getPinholeDocumentByType(String paramString)
  {
    PinholeDocument localPinholeDocument2;
    if (!this.responseComplete)
    {
      localPinholeDocument2 = null;
      return localPinholeDocument2;
    }
    PinholeDocument localPinholeDocument1 = null;
    Iterator localIterator = this.blobs.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        break label171;
      localPinholeDocument2 = (PinholeDocument)localIterator.next();
      if (localPinholeDocument1 == null)
        localPinholeDocument1 = new PinholeDocument(localPinholeDocument2.getBaseUrl() + "?ect=" + paramString);
      if (paramString.equals(localPinholeDocument2.getType()))
      {
        if (!paramString.equals("ans0"))
          break;
        CharSequence localCharSequence = localPinholeDocument1.getText();
        PinholeDocument.access$002(localPinholeDocument1, new StringBuilder(localPinholeDocument2.getText()));
        localPinholeDocument1.text.append(localCharSequence);
        continue;
      }
      if (paramString.equals("ans0"))
        localPinholeDocument1.text.append(localPinholeDocument2.getText());
    }
    label171: if (!paramString.equals("ans0"))
      return null;
    return localPinholeDocument1;
  }

  public Collection<PinholeDocument> getPinholeDocuments()
  {
    return this.blobs.values();
  }

  public void update(PinholeStream.PinholeOutput paramPinholeOutput)
  {
    if (paramPinholeOutput == null);
    do
    {
      return;
      this.headerComplete = paramPinholeOutput.getGwsHeaderComplete();
      if (!this.headerComplete)
        this.headerBuilder.append(paramPinholeOutput.getGwsHeaderFragment());
      this.responseComplete = paramPinholeOutput.getGwsResponseComplete();
    }
    while (!paramPinholeOutput.hasGwsBodyFragment());
    handleJsonBlobs(paramPinholeOutput.getGwsBodyFragment());
  }

  public void updateDirectlyFromFullGwsResponse(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    this.headerComplete = true;
    this.responseComplete = true;
    handleJsonBlobs(paramString);
  }

  public static class PinholeDocument
  {
    private final String baseUrl;
    private StringBuilder text = new StringBuilder();
    private final String type;

    public PinholeDocument(String paramString)
    {
      Uri localUri = Uri.parse(paramString.replace("\\u0026", "&"));
      this.baseUrl = (localUri.getScheme() + "://" + localUri.getHost());
      this.type = localUri.getQueryParameter("ect");
    }

    public String getBaseUrl()
    {
      return this.baseUrl;
    }

    public CharSequence getText()
    {
      return this.text;
    }

    public String getType()
    {
      return this.type;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.PinholePage
 * JD-Core Version:    0.6.2
 */