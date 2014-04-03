package com.google.glass.voice.network;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.android.glass.hidden.HiddenSystemProperties;
import com.google.common.base.Charsets;
import com.google.common.io.CharStreams;
import com.google.glass.auth.AuthUtils;
import com.google.glass.location.LocationManagerHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.SettingsHelper;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class DirectGwsRequest
{
  static final boolean NOTIFY_ON_AUTH = false;
  private static final String SERVER_KEY = "persist.search.server";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final AuthUtils authUtils;
  private final Context context;
  private final Cookies cookies;
  private final LocationManagerHelper locationManagerHelper;

  public DirectGwsRequest(Context paramContext, LocationManagerHelper paramLocationManagerHelper)
  {
    this.cookies = Cookies.create(paramContext);
    this.authUtils = new AuthUtils(paramContext);
    this.context = paramContext;
    this.locationManagerHelper = paramLocationManagerHelper;
  }

  public HttpClient getHttpClient()
  {
    return new DefaultHttpClient();
  }

  public void sendGwsRequest(final String paramString, final boolean paramBoolean, final GwsResponseHandler paramGwsResponseHandler)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        SearchQueryBuilder localSearchQueryBuilder = new SearchQueryBuilder(paramString);
        localSearchQueryBuilder.addTransportParams();
        String str1 = HiddenSystemProperties.get("persist.search.server", "");
        if (!TextUtils.isEmpty(str1))
          localSearchQueryBuilder.setSandboxHost(str1);
        HttpClient localHttpClient = DirectGwsRequest.this.getHttpClient();
        HttpGet localHttpGet = new HttpGet(localSearchQueryBuilder.toString());
        Iterator localIterator = localSearchQueryBuilder.getHttpHeaders(new SearchQueryBuilder.LocationHelperImpl(DirectGwsRequest.this.locationManagerHelper)).entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (!((String)localEntry.getKey()).equals("Host"))
            localHttpGet.setHeader((String)localEntry.getKey(), (String)localEntry.getValue());
        }
        String str2 = DirectGwsRequest.this.cookies.getCookie(localSearchQueryBuilder.toString());
        if (!TextUtils.isEmpty(str2))
          localHttpGet.setHeader("Cookie", str2);
        if ((paramBoolean) && (!new SettingsHelper(DirectGwsRequest.this.context).isGuestModeEnabled()))
        {
          String str5 = DirectGwsRequest.this.authUtils.getAuthToken("oauth2:https://www.googleapis.com/auth/googlenow", false);
          if (!TextUtils.isEmpty(str5))
            localHttpGet.setHeader("Authorization", "Bearer " + str5);
        }
        DirectGwsRequest.logger.d("Sending GWS request: %s", new Object[] { localSearchQueryBuilder });
        HttpResponse localHttpResponse;
        try
        {
          localHttpResponse = localHttpClient.execute(localHttpGet);
          StatusLine localStatusLine = localHttpResponse.getStatusLine();
          if (localStatusLine.getStatusCode() != 200)
            throw new IOException("Invalid response from server: " + localStatusLine.toString());
        }
        catch (IOException localIOException)
        {
          DirectGwsRequest.logger.e(localIOException, "Exception sending GWS request", new Object[0]);
          paramGwsResponseHandler.onError(localIOException);
          return;
        }
        Header[] arrayOfHeader = localHttpResponse.getAllHeaders();
        ArrayList localArrayList = new ArrayList();
        for (int i = 0; ; i++)
          if (i < arrayOfHeader.length)
          {
            Header localHeader = arrayOfHeader[i];
            if (localHeader.getName().equals("Set-Cookie"))
              localArrayList.add(localHeader.getValue());
          }
          else
          {
            DirectGwsRequest.this.cookies.setCookiesFromSetCookieHeaders(localSearchQueryBuilder.toString(), localArrayList);
            InputStream localInputStream = localHttpResponse.getEntity().getContent();
            InputStreamReader localInputStreamReader = new InputStreamReader(localInputStream, Charsets.UTF_8);
            String str3 = CharStreams.toString(localInputStreamReader);
            PinholePage localPinholePage = new PinholePage();
            localPinholePage.updateDirectlyFromFullGwsResponse(str3);
            PinholePage.PinholeDocument localPinholeDocument1 = localPinholePage.getPinholeDocumentByType("act0");
            if (localPinholeDocument1 != null)
            {
              String str4 = localPinholeDocument1.getText().toString();
              if (!TextUtils.isEmpty(str4))
                paramGwsResponseHandler.onActionResult(str4);
            }
            PinholePage.PinholeDocument localPinholeDocument2 = localPinholePage.getPinholeDocumentByType("ans0");
            if (localPinholeDocument2 != null)
            {
              DirectGwsRequest.logger.d("Got a doc from the pinhole results.", new Object[0]);
              paramGwsResponseHandler.onHtmlAnswerCardResult(localPinholeDocument2.getText().toString());
              return;
            }
            paramGwsResponseHandler.onNoResults();
            return;
          }
      }
    });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.DirectGwsRequest
 * JD-Core Version:    0.6.2
 */