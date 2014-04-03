package com.google.glass.logging;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import com.google.glass.companion.CompanionMessagingUtil;
import com.google.glass.companion.Proto.CompanionInfo;
import com.google.glass.companion.Proto.Envelope;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class CompanionLogReader
{
  private static final long READ_TIMEOUT_MS = 1000L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private volatile String companionLog = "no companion log found.";
  private final CountDownLatch countDownLatch = new CountDownLatch(1);
  private final Messenger incoming = new Messenger(new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      CompanionLogReader.logger.v("Handling response for " + CompanionLogReader.this.uniqueId, new Object[0]);
      Proto.Envelope localEnvelope = CompanionMessagingUtil.getEnvelope(paramAnonymousMessage);
      Proto.CompanionInfo localCompanionInfo;
      if ((localEnvelope != null) && (localEnvelope.companionInfo != null))
      {
        localCompanionInfo = localEnvelope.companionInfo;
        if (localCompanionInfo.id.longValue() == CompanionLogReader.this.uniqueId)
        {
          CompanionLogReader.access$202(CompanionLogReader.this, localCompanionInfo.responseLog);
          CompanionLogReader.logger.v("get the companion log", new Object[0]);
        }
      }
      while (true)
      {
        CompanionLogReader.this.countDownLatch.countDown();
        return;
        CompanionLogReader.logger.w("Got different replyable id: expect " + CompanionLogReader.this.uniqueId + ", but received " + localCompanionInfo.id, new Object[0]);
        continue;
        CompanionLogReader.logger.v("failed to handle message " + CompanionLogReader.this.uniqueId, new Object[0]);
      }
    }
  });
  private final long uniqueId = CompanionMessagingUtil.getNextUniqueId();

  public CompanionLogReader(Context paramContext)
  {
    logger.v("Requesting companion log with " + this.uniqueId, new Object[0]);
    Proto.Envelope localEnvelope = CompanionMessagingUtil.newEnvelope();
    Proto.CompanionInfo localCompanionInfo = new Proto.CompanionInfo();
    localCompanionInfo.id = Long.valueOf(this.uniqueId);
    localCompanionInfo.requestNetwork = Boolean.valueOf(false);
    localCompanionInfo.requestLog = Boolean.valueOf(true);
    localEnvelope.companionInfo = localCompanionInfo;
    Bundle localBundle = CompanionMessagingUtil.createBundle(localEnvelope, this.incoming);
    LoggingApplication.from(paramContext).sendBundleToCompanion(localBundle);
  }

  public String read()
  {
    try
    {
      FormattingLogger localFormattingLogger = logger;
      StringBuilder localStringBuilder = new StringBuilder().append("timeout in reading companion log? ");
      if (!this.countDownLatch.await(1000L, TimeUnit.MILLISECONDS));
      for (boolean bool = true; ; bool = false)
      {
        localFormattingLogger.v(bool, new Object[0]);
        return this.companionLog;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        logger.w("InterruptedException in getCompanionLog", new Object[] { localInterruptedException });
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.CompanionLogReader
 * JD-Core Version:    0.6.2
 */