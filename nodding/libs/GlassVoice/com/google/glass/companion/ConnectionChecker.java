package com.google.glass.companion;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.NetworkUtil;
import com.google.glass.net.NetworkUtil.CompanionNetworkWorker;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.PrimitiveUtils;
import java.util.concurrent.atomic.AtomicInteger;

public class ConnectionChecker
  implements NetworkUtil.CompanionNetworkWorker
{
  private static final long CHECK_INTERVAL = 50000L;
  private static final int JELLY_BEAN_MR1_VERSION_CODE = 17;
  private static final int MAX_CONTINUAL_TETHERING_ERROR = 5;
  private static final long REPORT_INTERVAL = 50000L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private IRemoteCompanionService companionService;
  private final Context context;
  private volatile boolean isConnected;
  private long lastCheckTime = 0L;
  private long lastReportErrorTime = 0L;
  private Messenger messenger = new Messenger(new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      Proto.Envelope localEnvelope = CompanionMessagingUtil.getEnvelope(paramAnonymousMessage);
      if (localEnvelope == null)
      {
        ConnectionChecker.logger.i("Message is canceled.", new Object[0]);
        return;
      }
      Proto.CompanionInfo localCompanionInfo = localEnvelope.companionInfo;
      if (localCompanionInfo == null)
      {
        ConnectionChecker.logger.e("No companion info specified.", new Object[0]);
        return;
      }
      boolean bool = PrimitiveUtils.safeBoolean(localCompanionInfo.responseIsNetworkOk);
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = "d";
      String str1;
      if (bool)
      {
        str1 = "y";
        arrayOfObject1[1] = str1;
        arrayOfObject1[2] = "v";
        if (localCompanionInfo.responseAndroidVersion == null)
          break label241;
      }
      label241: for (Object localObject = localCompanionInfo.responseAndroidVersion; ; localObject = "0")
      {
        arrayOfObject1[3] = localObject;
        String str2 = UserEventHelper.createEventTuple("t", "0", arrayOfObject1);
        FormattingLogger localFormattingLogger = ConnectionChecker.logger;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = str2;
        arrayOfObject2[1] = localCompanionInfo.id;
        localFormattingLogger.i("Logging %s for %s", arrayOfObject2);
        if ((bool) && (localCompanionInfo.responseAndroidVersion != null) && (localCompanionInfo.responseAndroidVersion.equals(Integer.valueOf(17))) && (ConnectionChecker.this.tetheringProblemCounter.incrementAndGet() >= 5))
        {
          ConnectionChecker.logger.i("Send tethering error message to companion..", new Object[0]);
          ConnectionChecker.this.sendTetheringErrorMessage();
        }
        ConnectionChecker.this.userEventHelper.log(UserEventAction.COMPANION_CONNECTION, str2);
        return;
        str1 = "n";
        break;
      }
    }
  });
  private AtomicInteger tetheringProblemCounter = new AtomicInteger(0);
  private final UserEventHelper userEventHelper;

  public ConnectionChecker(Context paramContext, UserEventHelper paramUserEventHelper)
  {
    this.context = paramContext;
    this.userEventHelper = paramUserEventHelper;
    NetworkUtil.setNetworkChecker(this);
  }

  private void sendTetheringErrorMessage()
  {
    logger.d("xxxxSend tethering error message to glass.", new Object[0]);
    Proto.Error localError = new Proto.Error();
    localError.type = 0;
    try
    {
      IRemoteCompanionService localIRemoteCompanionService = this.companionService;
      if (localIRemoteCompanionService != null);
      try
      {
        Proto.Envelope localEnvelope = CompanionMessagingUtil.newEnvelope();
        localEnvelope.error = localError;
        Bundle localBundle = CompanionMessagingUtil.createBundle(localEnvelope, this.messenger);
        this.companionService.send(localBundle);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          logger.w(localRemoteException, "Error sending envelope to companion service.", new Object[0]);
      }
    }
    finally
    {
    }
  }

  public void check()
  {
    if ((50000L + this.lastCheckTime > System.currentTimeMillis()) || (this.isConnected) || (this.companionService == null))
      return;
    try
    {
      if ((50000L + this.lastCheckTime > System.currentTimeMillis()) || (this.isConnected) || (this.companionService == null))
        return;
    }
    finally
    {
    }
    this.lastCheckTime = System.currentTimeMillis();
    try
    {
      this.companionService.ping();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        logger.w(localRemoteException, "Error occurs while pinging.", new Object[0]);
    }
  }

  public boolean isTetheringErrorDetected()
  {
    return this.tetheringProblemCounter.get() >= 5;
  }

  public void reportError()
  {
    if ((50000L + this.lastReportErrorTime > System.currentTimeMillis()) || (!this.isConnected) || (this.companionService == null))
      return;
    try
    {
      if ((50000L + this.lastReportErrorTime > System.currentTimeMillis()) || (!this.isConnected) || (!NetworkUtil.hasTetheredConnectivity(this.context)) || (this.companionService == null))
        return;
    }
    finally
    {
    }
    this.lastReportErrorTime = System.currentTimeMillis();
    long l = CompanionMessagingUtil.getNextUniqueId();
    Proto.CompanionInfo localCompanionInfo = new Proto.CompanionInfo();
    localCompanionInfo.id = Long.valueOf(l);
    localCompanionInfo.requestNetwork = Boolean.valueOf(true);
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(l);
    localFormattingLogger.v("xxxxx Requesting companion info, id = %s", arrayOfObject);
    Proto.Envelope localEnvelope = CompanionMessagingUtil.newEnvelope();
    localEnvelope.companionInfo = localCompanionInfo;
    Bundle localBundle = CompanionMessagingUtil.createBundle(localEnvelope, this.messenger);
    try
    {
      this.companionService.send(localBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        logger.w(localRemoteException, "Error sending envelope to companion service.", new Object[0]);
    }
  }

  public void reportOK()
  {
    this.tetheringProblemCounter.set(0);
  }

  public void setCompanionService(IRemoteCompanionService paramIRemoteCompanionService)
  {
    try
    {
      this.companionService = paramIRemoteCompanionService;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setConnectState(boolean paramBoolean)
  {
    try
    {
      this.isConnected = paramBoolean;
      this.tetheringProblemCounter.set(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.ConnectionChecker
 * JD-Core Version:    0.6.2
 */