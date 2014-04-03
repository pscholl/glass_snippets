package com.google.glass.voice.network;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.view.WindowManager;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.helper.AuthTokenHelper;
import com.google.android.speech.helper.SpeechLocationHelper;
import com.google.android.speech.network.request.BaseRequestBuilderTask;
import com.google.android.speech.params.DeviceParams;
import com.google.android.speech.params.NetworkRequestProducerParams;
import com.google.android.speech.utils.NetworkInformation;
import com.google.android.voicesearch.speechservice.s3.PinholeParamsBuilder;
import com.google.common.base.Supplier;
import com.google.glass.auth.AuthUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.UserAgent;
import com.google.glass.util.SettingsHelper;
import com.google.speech.s3.PinholeStream.PinholeCgiParam;
import com.google.speech.s3.PinholeStream.PinholeHeader;
import com.google.speech.s3.PinholeStream.PinholeParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public class NetworkRequestProducerParamsBuilder
{
  private static String appVersion = null;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static NetworkRequestProducerParams create(Context paramContext, SpeechSettings paramSpeechSettings, NetworkInformation paramNetworkInformation, SpeechLocationHelper paramSpeechLocationHelper, Cookies paramCookies)
  {
    return new NetworkRequestProducerParams(new AccountHelperImpl(paramContext), (WindowManager)paramContext.getSystemService("window"), paramNetworkInformation, new PinholeParamsBuilderImpl(paramSpeechLocationHelper, paramCookies, paramContext, null), paramSpeechLocationHelper, paramSpeechSettings, getDeviceParams(paramContext));
  }

  public static String getAppVersion(Context paramContext)
  {
    if (appVersion == null);
    try
    {
      appVersion = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      if (appVersion == null)
        return "";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        logger.e(localNameNotFoundException, localNameNotFoundException.getMessage(), new Object[0]);
    }
    return appVersion;
  }

  private static DeviceParams getDeviceParams(Context paramContext)
  {
    return new DeviceParams()
    {
      public String getApplicationVersion()
      {
        return NetworkRequestProducerParamsBuilder.getAppVersion(this.val$context);
      }

      public String getDeviceCountry()
      {
        return "US";
      }

      public String getSearchDomainCountryCode()
      {
        return "US";
      }

      public String getUserAgent()
      {
        return UserAgent.get();
      }
    };
  }

  private static class AccountHelperImpl
    implements AuthTokenHelper
  {
    private final AuthUtils authUtils;

    public AccountHelperImpl(Context paramContext)
    {
      this.authUtils = new AuthUtils(paramContext);
    }

    public List<String> blockingGetAuthTokens(long paramLong, TimeUnit paramTimeUnit)
    {
      ArrayList localArrayList = new ArrayList();
      String str = this.authUtils.getAuthToken("oauth2:https://www.googleapis.com/auth/speech/personalization", false);
      if (str != null)
      {
        localArrayList.add(str);
        return localArrayList;
      }
      NetworkRequestProducerParamsBuilder.logger.w("No auth token found for type %s, not including in speech request", new Object[] { "oauth2:https://www.googleapis.com/auth/speech/personalization" });
      return localArrayList;
    }

    public String getServiceName()
    {
      return "https://www.googleapis.com/auth/speech/personalization";
    }

    public void invalidateAuthTokens()
    {
      this.authUtils.invalidateAuthToken("oauth2:https://www.googleapis.com/auth/speech/personalization");
    }
  }

  private static class PinholeParamsBuilderImpl
    implements PinholeParamsBuilder
  {
    private final AuthUtils authUtils;
    private final Context context;
    private Cookies cookies;
    private SpeechLocationHelper locationHelper;

    private PinholeParamsBuilderImpl(SpeechLocationHelper paramSpeechLocationHelper, Cookies paramCookies, Context paramContext)
    {
      this.locationHelper = paramSpeechLocationHelper;
      this.cookies = paramCookies;
      this.authUtils = new AuthUtils(paramContext);
      this.context = paramContext;
    }

    PinholeStream.PinholeParams buildParams(Supplier<String> paramSupplier)
    {
      SearchQueryBuilder localSearchQueryBuilder = new SearchQueryBuilder();
      localSearchQueryBuilder.addTransportParams();
      PinholeStream.PinholeParams localPinholeParams = new PinholeStream.PinholeParams();
      Iterator localIterator1 = localSearchQueryBuilder.getCgiParameters().entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
        localPinholeParams.addCgiParams(new PinholeStream.PinholeCgiParam().setKey((String)localEntry2.getKey()).setValue((String)localEntry2.getValue()));
      }
      Iterator localIterator2 = localSearchQueryBuilder.getHttpHeaders(this.locationHelper).entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
        localPinholeParams.addHeaders(new PinholeStream.PinholeHeader().setKey((String)localEntry1.getKey()).setValue((String)localEntry1.getValue()).setOverwrite(2));
      }
      String str1 = this.cookies.getCookie(localSearchQueryBuilder.toString());
      if (!TextUtils.isEmpty(str1))
        localPinholeParams.addHeaders(new PinholeStream.PinholeHeader().setKey("Cookie").setValue(str1).setOverwrite(1));
      if (!new SettingsHelper(this.context).isGuestModeEnabled())
      {
        String str2 = this.authUtils.getAuthToken("oauth2:https://www.googleapis.com/auth/googlenow", false);
        if (!TextUtils.isEmpty(str2))
          localPinholeParams.addHeaders(new PinholeStream.PinholeHeader().setKey("Authorization").setValue("Bearer " + str2).setOverwrite(2));
      }
      return localPinholeParams;
    }

    public Callable<PinholeStream.PinholeParams> getPinholeParamsCallable(final Supplier<String> paramSupplier)
    {
      return new BaseRequestBuilderTask("PinholeParamsBuilderTask")
      {
        protected PinholeStream.PinholeParams build()
        {
          return NetworkRequestProducerParamsBuilder.PinholeParamsBuilderImpl.this.buildParams(paramSupplier);
        }
      };
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.NetworkRequestProducerParamsBuilder
 * JD-Core Version:    0.6.2
 */