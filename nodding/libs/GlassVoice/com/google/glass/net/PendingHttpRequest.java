package com.google.glass.net;

import android.content.Context;
import android.net.http.AndroidHttpClient;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public class PendingHttpRequest
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final AndroidHttpClient client;
  private final Context context;
  private boolean isCancelled;
  private HttpEntityEnclosingRequestBase request;

  public PendingHttpRequest(Context paramContext, AndroidHttpClient paramAndroidHttpClient, HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase)
  {
    this.context = paramContext;
    this.client = paramAndroidHttpClient;
    this.request = paramHttpEntityEnclosingRequestBase;
    this.isCancelled = false;
  }

  public void cancel()
  {
    this.request.abort();
    this.isCancelled = true;
  }

  public SimplifiedHttpResponse execute()
    throws IOException
  {
    HttpResponse localHttpResponse = null;
    RequestLogger localRequestLogger = new RequestLogger(this.context, this.request);
    try
    {
      localHttpResponse = this.client.execute(this.request);
      if (localHttpResponse == null)
      {
        logger.e("Response from server was null!", new Object[0]);
        localRequestLogger.log(localHttpResponse);
        localSimplifiedHttpResponse = null;
        if (localHttpResponse != null)
          localHttpResponse.getEntity().consumeContent();
        return localSimplifiedHttpResponse;
      }
      SimplifiedHttpResponse localSimplifiedHttpResponse = new SimplifiedHttpResponse(localHttpResponse);
      return localSimplifiedHttpResponse;
    }
    finally
    {
      localRequestLogger.log(localHttpResponse);
      if (localHttpResponse != null)
        localHttpResponse.getEntity().consumeContent();
    }
  }

  public boolean isCancelled()
  {
    return this.isCancelled;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.PendingHttpRequest
 * JD-Core Version:    0.6.2
 */