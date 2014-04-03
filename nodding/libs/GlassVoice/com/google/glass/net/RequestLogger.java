package com.google.glass.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.Stopwatch;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpRequestBase;

class RequestLogger
{
  private static final String KEY_FINAL_NET_STATE = "fns";
  private static final String KEY_FINAL_NET_TYPE = "fnt";
  private static final String KEY_HTTP_STATUS = "hs";
  private static final String KEY_LATENCY = "l";
  private static final String KEY_METHOD = "m";
  private static final String KEY_ORIGINAL_NET_STATE = "ons";
  private static final String KEY_ORIGINAL_NET_TYPE = "ont";
  private static final String KEY_SUCCESS = "s";
  private final ConnectivityManager cm;
  private final Context context;
  private final String method;
  private final NetworkInfo originalNetInfo;
  private final Stopwatch stopwatch;

  public RequestLogger(Context paramContext, HttpRequestBase paramHttpRequestBase)
  {
    this.context = paramContext;
    this.cm = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    this.originalNetInfo = this.cm.getActiveNetworkInfo();
    this.method = paramHttpRequestBase.getMethod();
    this.stopwatch = new Stopwatch();
    this.stopwatch.start();
  }

  private static int stateToInteger(NetworkInfo.State paramState)
  {
    switch (1.$SwitchMap$android$net$NetworkInfo$State[paramState.ordinal()])
    {
    default:
      return -1;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
    }
    return 6;
  }

  public void log(HttpResponse paramHttpResponse)
  {
    NetworkInfo localNetworkInfo = this.cm.getActiveNetworkInfo();
    StringBuilder localStringBuilder = new StringBuilder();
    UserEventHelper.appendPair(localStringBuilder, "m", this.method);
    boolean bool;
    if (paramHttpResponse != null)
    {
      bool = true;
      UserEventHelper.appendPair(localStringBuilder, "s", Boolean.valueOf(bool));
      if (paramHttpResponse != null)
      {
        UserEventHelper.appendPair(localStringBuilder, "l", Long.valueOf(this.stopwatch.getTotalElapsedMilliseconds()));
        if (paramHttpResponse.getStatusLine() != null)
          UserEventHelper.appendPair(localStringBuilder, "hs", Integer.valueOf(paramHttpResponse.getStatusLine().getStatusCode()));
      }
      if (this.originalNetInfo == null)
        break label204;
      int j = stateToInteger(this.originalNetInfo.getState());
      UserEventHelper.appendPair(localStringBuilder, "ont", Integer.valueOf(this.originalNetInfo.getType()));
      UserEventHelper.appendPair(localStringBuilder, "ons", Integer.valueOf(j));
      label139: if (localNetworkInfo == null)
        break label227;
      int i = stateToInteger(localNetworkInfo.getState());
      UserEventHelper.appendPair(localStringBuilder, "fnt", Integer.valueOf(localNetworkInfo.getType()));
      UserEventHelper.appendPair(localStringBuilder, "fns", Integer.valueOf(i));
    }
    while (true)
    {
      new UserEventHelper(this.context).log(UserEventAction.CONNECTIVITY_NETWORK_REQUEST, localStringBuilder.toString());
      return;
      bool = false;
      break;
      label204: UserEventHelper.appendPair(localStringBuilder, "ont", Integer.valueOf(-1));
      UserEventHelper.appendPair(localStringBuilder, "ons", Integer.valueOf(-1));
      break label139;
      label227: UserEventHelper.appendPair(localStringBuilder, "fnt", Integer.valueOf(-1));
      UserEventHelper.appendPair(localStringBuilder, "fns", Integer.valueOf(-1));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.RequestLogger
 * JD-Core Version:    0.6.2
 */