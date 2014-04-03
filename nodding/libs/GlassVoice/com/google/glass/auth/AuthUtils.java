package com.google.glass.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.google.android.gcm.GCMRegistrar;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.SetupHelper;
import com.google.googlex.glass.common.proto.BatchNano.AuthToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class AuthUtils
{
  private static final String AUTH_TOKEN_HEADER = "Authorization";
  public static final String AUTH_TOKEN_SPEECH_PERSONALIZATION = "oauth2:https://www.googleapis.com/auth/speech/personalization";
  public static final String AUTH_TOKEN_TYPE_DEFAULT = "android";
  public static final String AUTH_TOKEN_TYPE_SEARCH = "oauth2:https://www.googleapis.com/auth/googlenow";
  public static final String AUTH_TOKEN_VIDEO_CALLS = "oauth2:https://www.googleapis.com/auth/glass.hangouts";
  public static final String AUTH_TOKEN_WEB_HISTORY = "oauth2:https://www.googleapis.com/auth/webhistory";
  public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
  private static final String GOOGLE_LOGIN_AUTH_TOKEN_PREFIX = "GoogleLogin auth=";
  private static final String LEGACY_AUTH_TOKEN_HEADER = "SC";
  public static final String OAUTH_SCOPE_SEARCH = "https://www.googleapis.com/auth/googlenow";
  public static final String OAUTH_SCOPE_SPEECH_PERSONALIZATION = "https://www.googleapis.com/auth/speech/personalization";
  public static final String OAUTH_SCOPE_VIDEO_CALLS = "https://www.googleapis.com/auth/glass.hangouts";
  public static final String OAUTH_SCOPE_WEB_HISTORY = "https://www.googleapis.com/auth/webhistory";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final AccountManager accountManager;
  private final Context context;

  public AuthUtils(Context paramContext)
  {
    this.context = paramContext;
    this.accountManager = ((AccountManager)paramContext.getSystemService("account"));
  }

  public Map<String, String> createAuthHeaders()
  {
    HashMap localHashMap = new HashMap();
    String str = getAuthToken();
    if (TextUtils.isEmpty(str))
    {
      logger.w("No auth token available, cannot create auth headers.", new Object[0]);
      return null;
    }
    localHashMap.put("SC", str);
    localHashMap.put("Authorization", "GoogleLogin auth=" + str);
    return localHashMap;
  }

  @Deprecated
  public BatchNano.AuthToken createBatchAuthToken()
  {
    String str = getAuthToken();
    if (TextUtils.isEmpty(str))
      return null;
    BatchNano.AuthToken localAuthToken = new BatchNano.AuthToken();
    localAuthToken.type = 1;
    localAuthToken.value = str;
    return localAuthToken;
  }

  public void deleteAllAccounts(final Runnable paramRunnable)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        ArrayList localArrayList = new ArrayList();
        Account[] arrayOfAccount = AuthUtils.this.accountManager.getAccounts();
        FormattingLogger localFormattingLogger1 = AuthUtils.logger;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(arrayOfAccount.length);
        localFormattingLogger1.d("Removing %s accounts.", arrayOfObject1);
        int i = arrayOfAccount.length;
        for (int j = 0; j < i; j++)
        {
          Account localAccount = arrayOfAccount[j];
          FormattingLogger localFormattingLogger3 = AuthUtils.logger;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = localAccount.name;
          localFormattingLogger3.d("Removing account: %s", arrayOfObject3);
          localArrayList.add(AuthUtils.this.accountManager.removeAccount(localAccount, null, null));
        }
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          AccountManagerFuture localAccountManagerFuture = (AccountManagerFuture)localIterator.next();
          try
          {
            FormattingLogger localFormattingLogger2 = AuthUtils.logger;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = localAccountManagerFuture.getResult();
            localFormattingLogger2.d("Account removal result: %s", arrayOfObject2);
          }
          catch (OperationCanceledException localOperationCanceledException)
          {
            AuthUtils.logger.w(localOperationCanceledException, "Account removal canceled.", new Object[0]);
          }
          catch (AuthenticatorException localAuthenticatorException)
          {
            AuthUtils.logger.w(localAuthenticatorException, "Account removal failed.", new Object[0]);
          }
          catch (IOException localIOException)
          {
            AuthUtils.logger.w(localIOException, "Account removal failed.", new Object[0]);
          }
        }
        if (paramRunnable != null)
          paramRunnable.run();
      }
    });
  }

  public String getAuthToken()
  {
    return getAuthToken("android", true);
  }

  @VisibleForTesting
  protected String getAuthToken(Account paramAccount, String paramString, boolean paramBoolean)
    throws OperationCanceledException, IOException, AuthenticatorException
  {
    return this.accountManager.blockingGetAuthToken(paramAccount, paramString, paramBoolean);
  }

  public String getAuthToken(String paramString, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    Account localAccount = getGoogleAccount();
    String str;
    if (localAccount == null)
    {
      logger.i("There is no account. Cannot get auth token.", new Object[0]);
      str = null;
    }
    while (true)
    {
      return str;
      try
      {
        str = getAuthToken(localAccount, paramString, paramBoolean);
        if (!TextUtils.isEmpty(str))
          continue;
        logger.i("Cannot get auth token.", new Object[0]);
        return null;
      }
      catch (OperationCanceledException localOperationCanceledException)
      {
        logger.w(localOperationCanceledException, "Error getting auth token", new Object[0]);
        return null;
      }
      catch (AuthenticatorException localAuthenticatorException)
      {
        while (true)
          logger.w(localAuthenticatorException, "Error getting auth token", new Object[0]);
      }
      catch (IOException localIOException)
      {
        while (true)
          logger.w(localIOException, "Error getting auth token", new Object[0]);
      }
    }
  }

  public Account getGoogleAccount()
  {
    Account localAccount;
    if (this.accountManager == null)
    {
      logger.w("Account manager was null.", new Object[0]);
      localAccount = null;
      return localAccount;
    }
    Account[] arrayOfAccount = this.accountManager.getAccounts();
    if (arrayOfAccount == null)
      return null;
    int i = arrayOfAccount.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label75;
      localAccount = arrayOfAccount[j];
      if ("com.google".equals(localAccount.type))
        break;
    }
    label75: return null;
  }

  public void invalidateAuthToken()
  {
    this.accountManager.invalidateAuthToken("com.google", getAuthToken("android", false));
  }

  public void invalidateAuthToken(String paramString)
  {
    this.accountManager.invalidateAuthToken("com.google", getAuthToken(paramString, false));
  }

  public void restartSetupProcess(final boolean paramBoolean)
  {
    if (!SetupHelper.checkAndEnableSetup(this.context))
      return;
    deleteAllAccounts(new Runnable()
    {
      public void run()
      {
        GCMRegistrar.unregister(AuthUtils.this.context);
        Settings.Secure.putInt(AuthUtils.this.context.getContentResolver(), "device_provisioned", 0);
        if (paramBoolean)
        {
          ((PowerManager)AuthUtils.this.context.getSystemService("power")).reboot("restartSetupProcess");
          return;
        }
        SetupHelper.startSetup(AuthUtils.this.context);
      }
    });
  }

  public AccountManagerFuture<Bundle> updateCredentials(AccountManagerCallback<Bundle> paramAccountManagerCallback, String paramString)
  {
    Account localAccount = getGoogleAccount();
    if (localAccount == null)
    {
      logger.e("updateCredentials: no Google account exists", new Object[0]);
      return null;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("password", "code:" + paramString);
    return this.accountManager.updateCredentials(localAccount, "android", localBundle, null, paramAccountManagerCallback, null);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.auth.AuthUtils
 * JD-Core Version:    0.6.2
 */