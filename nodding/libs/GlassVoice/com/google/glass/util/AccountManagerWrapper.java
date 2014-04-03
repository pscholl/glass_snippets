package com.google.glass.util;

import android.accounts.Account;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.glass.predicates.Assert;

public abstract class AccountManagerWrapper
{
  private static AccountManagerWrapper wrapper;

  public static AccountManagerWrapper get(Context paramContext)
  {
    if (wrapper == null)
      wrapper = new GmsAccountManagerWrapper(paramContext);
    return wrapper;
  }

  public static void resetForTest()
  {
    Assert.assertIsTest();
    wrapper = null;
  }

  public static void setAccountManagerWrapperForTest(AccountManagerWrapper paramAccountManagerWrapper)
  {
    Assert.assertIsTest();
    Assert.assertNotNull(paramAccountManagerWrapper);
    wrapper = paramAccountManagerWrapper;
  }

  public abstract AccountManagerFuture<Bundle> addAccount(String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle, Activity paramActivity, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler);

  public abstract Account[] getAccounts();

  public abstract Account[] getAccountsByType(String paramString);

  public abstract AccountManagerFuture<Bundle> getAuthToken(Account paramAccount, String paramString, Bundle paramBundle, Activity paramActivity, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.AccountManagerWrapper
 * JD-Core Version:    0.6.2
 */