package com.google.glass.util;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;

public class GmsAccountManagerWrapper extends AccountManagerWrapper
{
  private AccountManager accountManager;

  public GmsAccountManagerWrapper(Context paramContext)
  {
    this.accountManager = AccountManager.get(paramContext);
  }

  public AccountManagerFuture<Bundle> addAccount(String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle, Activity paramActivity, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    return this.accountManager.addAccount(paramString1, paramString2, paramArrayOfString, paramBundle, paramActivity, paramAccountManagerCallback, paramHandler);
  }

  public Account[] getAccounts()
  {
    return this.accountManager.getAccounts();
  }

  public Account[] getAccountsByType(String paramString)
  {
    return this.accountManager.getAccountsByType(paramString);
  }

  public AccountManagerFuture<Bundle> getAuthToken(Account paramAccount, String paramString, Bundle paramBundle, Activity paramActivity, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    return this.accountManager.getAuthToken(paramAccount, paramString, paramBundle, paramActivity, paramAccountManagerCallback, paramHandler);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.GmsAccountManagerWrapper
 * JD-Core Version:    0.6.2
 */