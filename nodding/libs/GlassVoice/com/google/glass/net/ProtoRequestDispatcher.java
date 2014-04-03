package com.google.glass.net;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import com.google.glass.auth.AuthUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.googlex.glass.common.proto.BatchNano.AuthToken;
import com.google.googlex.glass.common.proto.BatchNano.BatchHeader;
import com.google.googlex.glass.common.proto.BatchNano.BatchRequest;
import com.google.googlex.glass.common.proto.BatchNano.BatchResponse;
import com.google.googlex.glass.common.proto.BatchNano.RequestWrapper;
import com.google.googlex.glass.common.proto.BatchNano.ResponseWrapper;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class ProtoRequestDispatcher
  implements Runnable
{
  private static final String DISPATCHER_PREFS = "prd_prefs";
  static final int MAX_BATCH_DATA_SIZE_BYTES = 131072;
  static final int MAX_PENDING_DATA_SIZE_BYTES = 524288;
  private static final String PREF_DISPATCHER_ID = "id";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final boolean closeHttpOnExit;
  private final Context context;
  private final Executor defaultResponseThread;
  private long dispatcherId;
  private boolean explicitFlush;
  private final HttpRequestDispatcher httpDispatcher;
  private final AtomicBoolean isServicing = new AtomicBoolean();
  private final List<Request> queue = new ArrayList();
  private final Condition queueCondition = this.queueLock.newCondition();
  private final ReentrantLock queueLock = new ReentrantLock();
  private Comparator<Request> requestPriorityComparator = new Comparator()
  {
    public int compare(ProtoRequestDispatcher.Request paramAnonymousRequest1, ProtoRequestDispatcher.Request paramAnonymousRequest2)
    {
      if ((paramAnonymousRequest1.isImmediate) && (!paramAnonymousRequest2.isImmediate))
        return -1;
      if ((!paramAnonymousRequest1.isImmediate) && (paramAnonymousRequest2.isImmediate))
        return 1;
      return 0;
    }
  };
  private boolean shouldExit;
  private int totalQueuedDataSize;
  private final UserEventHelper userEventHelper;

  public ProtoRequestDispatcher(Context paramContext, HttpRequestDispatcher paramHttpRequestDispatcher, boolean paramBoolean, Executor paramExecutor)
  {
    Assert.assertNotNull(paramHttpRequestDispatcher);
    Assert.assertNotNull(paramExecutor);
    this.context = paramContext;
    this.httpDispatcher = paramHttpRequestDispatcher;
    this.closeHttpOnExit = paramBoolean;
    this.defaultResponseThread = paramExecutor;
    this.userEventHelper = new UserEventHelper(paramContext);
  }

  private void clearQueue()
  {
    this.queue.clear();
    this.explicitFlush = false;
  }

  private <T extends MessageNano> boolean dispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, boolean paramBoolean1, ProtoParser<T> paramProtoParser, ProtoResponseHandler<T> paramProtoResponseHandler, Executor paramExecutor, boolean paramBoolean2)
  {
    String str = paramAction.path;
    this.queueLock.lock();
    try
    {
      boolean bool1 = this.shouldExit;
      if (bool1)
        return false;
      this.queue.add(new Request(str, paramMessageNano, paramBoolean1, paramProtoParser, paramProtoResponseHandler, paramExecutor, paramBoolean2));
      this.explicitFlush = (paramBoolean1 | this.explicitFlush);
      if (this.totalQueuedDataSize >= 0);
      for (boolean bool2 = true; ; bool2 = false)
      {
        Assert.assertTrue(bool2);
        this.totalQueuedDataSize += paramMessageNano.getCachedSize();
        if (isFlushConditionMet())
          this.queueCondition.signal();
        return true;
      }
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  private void ensureDispatcherId()
  {
    if ((this.dispatcherId == 0L) && (this.context != null))
    {
      SharedPreferences localSharedPreferences = this.context.getSharedPreferences("prd_prefs", 0);
      if (localSharedPreferences != null)
      {
        this.dispatcherId = localSharedPreferences.getLong("id", 0L);
        if (this.dispatcherId == 0L)
        {
          SecureRandom localSecureRandom = new SecureRandom();
          do
            this.dispatcherId = localSecureRandom.nextLong();
          while (this.dispatcherId == 0L);
        }
        localSharedPreferences.edit().putLong("id", this.dispatcherId).commit();
      }
    }
  }

  private boolean parseResponses(List<Request> paramList, BatchNano.BatchResponse paramBatchResponse)
  {
    boolean bool = false;
    int i = 0;
    if (i < paramBatchResponse.response.length)
    {
      BatchNano.ResponseWrapper localResponseWrapper = paramBatchResponse.response[i];
      Request localRequest = (Request)paramList.get(i);
      if (localResponseWrapper.errorCode > 0)
      {
        bool = true;
        localRequest.onError(localResponseWrapper.errorCode);
      }
      while (true)
      {
        i++;
        break;
        localRequest.onSuccess(localResponseWrapper.data);
        if (localRequest.logMetrics)
          logRequestMetrics(localRequest.path, localRequest.requestProto.getCachedSize(), localResponseWrapper.data.length);
      }
    }
    return bool;
  }

  public <T extends MessageNano> ProtoResponse<T> blockingDispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, ProtoParser<T> paramProtoParser)
    throws InterruptedException
  {
    return blockingDispatch(paramAction, paramMessageNano, paramProtoParser, true);
  }

  public <T extends MessageNano> ProtoResponse<T> blockingDispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, ProtoParser<T> paramProtoParser, boolean paramBoolean)
    throws InterruptedException
  {
    Assert.assertNotUiThread();
    final AtomicReference localAtomicReference1 = new AtomicReference();
    final AtomicReference localAtomicReference2 = new AtomicReference();
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    if (!dispatch(paramAction, paramMessageNano, true, paramProtoParser, new ProtoResponseHandler()
    {
      public void onCancel()
      {
        localCountDownLatch.countDown();
      }

      public void onError(int paramAnonymousInt)
      {
        localAtomicReference1.set(Integer.valueOf(paramAnonymousInt));
        localCountDownLatch.countDown();
      }

      public void onSuccess(T paramAnonymousT)
      {
        localAtomicReference2.set(paramAnonymousT);
        localCountDownLatch.countDown();
      }
    }
    , new Executor()
    {
      public void execute(Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable.run();
      }
    }
    , paramBoolean))
      return null;
    try
    {
      localCountDownLatch.await();
      if ((localAtomicReference1.get() == null) && (localAtomicReference2.get() == null))
        return ProtoResponse.cancel();
    }
    catch (InterruptedException localInterruptedException)
    {
      logger.w(localInterruptedException, "Interrupted during blockingDispatch", new Object[0]);
      throw localInterruptedException;
    }
    if (localAtomicReference1.get() != null)
      return ProtoResponse.error(((Integer)localAtomicReference1.get()).intValue());
    if (localAtomicReference2.get() != null)
      return ProtoResponse.success((MessageNano)localAtomicReference2.get());
    throw new IllegalStateException("Illegal proto response state.");
  }

  public <T extends MessageNano> boolean blockingDispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, ProtoParser<T> paramProtoParser, ProtoResponseHandler<T> paramProtoResponseHandler)
  {
    return blockingDispatch(paramAction, paramMessageNano, paramProtoParser, paramProtoResponseHandler, true);
  }

  public <T extends MessageNano> boolean blockingDispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, ProtoParser<T> paramProtoParser, ProtoResponseHandler<T> paramProtoResponseHandler, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    ProtoResponse localProtoResponse1;
    try
    {
      ProtoResponse localProtoResponse2 = blockingDispatch(paramAction, paramMessageNano, paramProtoParser, paramBoolean);
      localProtoResponse1 = localProtoResponse2;
      if (localProtoResponse1 == null)
        return false;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        logger.i(localInterruptedException, "Thread interrupted during request -- calling ProtoResponseHandler#onCancel", new Object[0]);
        paramProtoResponseHandler.onCancel();
        localProtoResponse1 = null;
      }
    }
    if (localProtoResponse1.isCancelled())
      paramProtoResponseHandler.onCancel();
    while (true)
    {
      return true;
      if (localProtoResponse1.isError())
        paramProtoResponseHandler.onError(localProtoResponse1.getErrorCode());
      else if (localProtoResponse1.isSuccess())
        paramProtoResponseHandler.onSuccess(localProtoResponse1.getResponseProto());
    }
  }

  @VisibleForTesting
  String composeBatchLogEventString(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    Integer localInteger = Integer.valueOf(paramInt1);
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = "breq";
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = "bres";
    arrayOfObject[3] = Integer.valueOf(paramInt3);
    arrayOfObject[4] = "l";
    arrayOfObject[5] = Long.valueOf(paramLong2 - paramLong1);
    arrayOfObject[6] = "e";
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      arrayOfObject[7] = Integer.valueOf(i);
      return UserEventHelper.createEventTuple("r", localInteger, arrayOfObject);
    }
  }

  @VisibleForTesting
  String composeRequestSizeLogEventString(String paramString, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "breq";
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = "bres";
    arrayOfObject[3] = Integer.valueOf(paramInt2);
    return UserEventHelper.createEventTuple("p", paramString, arrayOfObject);
  }

  public <T extends MessageNano> boolean dispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, boolean paramBoolean, ProtoParser<T> paramProtoParser, ProtoResponseHandler<T> paramProtoResponseHandler)
  {
    return dispatch(paramAction, paramMessageNano, paramBoolean, paramProtoParser, paramProtoResponseHandler, this.defaultResponseThread, true);
  }

  public <T extends MessageNano> boolean dispatch(ServerConstants.Action paramAction, MessageNano paramMessageNano, boolean paramBoolean1, ProtoParser<T> paramProtoParser, ProtoResponseHandler<T> paramProtoResponseHandler, boolean paramBoolean2)
  {
    return dispatch(paramAction, paramMessageNano, paramBoolean1, paramProtoParser, paramProtoResponseHandler, this.defaultResponseThread, paramBoolean2);
  }

  public void exit()
  {
    this.queueLock.lock();
    try
    {
      this.shouldExit = true;
      this.queueCondition.signal();
      return;
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  public void flush()
  {
    this.queueLock.lock();
    try
    {
      if (!this.queue.isEmpty())
      {
        this.explicitFlush = true;
        this.queueCondition.signal();
      }
      return;
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  public boolean isBusy()
  {
    this.queueLock.lock();
    try
    {
      boolean bool1 = this.queue.isEmpty();
      if (!bool1)
        return true;
      boolean bool2 = this.isServicing.get();
      return bool2;
    }
    finally
    {
      this.queueLock.unlock();
    }
  }

  boolean isFlushConditionMet()
  {
    Assert.assertTrue(this.queueLock.isHeldByCurrentThread());
    if (this.queue.isEmpty());
    while ((this.totalQueuedDataSize <= 524288) && (!this.explicitFlush))
      return false;
    return true;
  }

  boolean lockQueueForTest()
    throws InterruptedException
  {
    return this.queueLock.tryLock(10L, TimeUnit.SECONDS);
  }

  @VisibleForTesting
  void logBatchMetrics(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    this.userEventHelper.log(UserEventAction.PROTO_REQUEST_DISPATCHER_BATCH, composeBatchLogEventString(paramInt1, paramInt2, paramInt3, paramLong1, paramLong2, paramBoolean));
  }

  @VisibleForTesting
  void logRequestMetrics(String paramString, int paramInt1, int paramInt2)
  {
    this.userEventHelper.log(UserEventAction.PROTO_REQUEST_DISPATCHER_REQUEST_SIZE, composeRequestSizeLogEventString(paramString, paramInt1, paramInt2));
  }

  public void run()
  {
    Assert.assertNotUiThread();
    ArrayList localArrayList = new ArrayList();
    localArrayList.clear();
    this.queueLock.lock();
    try
    {
      while (!this.shouldExit)
      {
        boolean bool2 = isFlushConditionMet();
        if (bool2)
          break;
        try
        {
          this.queueCondition.await();
        }
        catch (InterruptedException localInterruptedException)
        {
          logger.w(localInterruptedException, "Interrupted while waiting for queue condition.", new Object[0]);
        }
      }
    }
    finally
    {
      this.queueLock.unlock();
    }
    if (this.shouldExit)
    {
      Iterator localIterator = this.queue.iterator();
      while (localIterator.hasNext())
        ((Request)localIterator.next()).onCancel();
      clearQueue();
      if (this.closeHttpOnExit)
        this.httpDispatcher.close();
      this.queueLock.unlock();
      return;
    }
    AtomicBoolean localAtomicBoolean;
    if (isFlushConditionMet())
    {
      localArrayList.addAll(this.queue);
      localAtomicBoolean = this.isServicing;
      if (localArrayList.isEmpty())
        break label237;
    }
    label237: for (boolean bool1 = true; ; bool1 = false)
    {
      localAtomicBoolean.set(bool1);
      clearQueue();
      this.queueLock.unlock();
      if (localArrayList.isEmpty())
        break;
      service(localArrayList);
      this.isServicing.set(false);
      break;
    }
  }

  void service(List<Request> paramList)
  {
    ensureDispatcherId();
    Collections.sort(paramList, this.requestPriorityComparator);
    int i = 0;
    while (true)
    {
      int j = paramList.size();
      if (i < j)
        this.queueLock.lock();
      int m;
      int n;
      ArrayList localArrayList1;
      long l1;
      SimplifiedHttpResponse localSimplifiedHttpResponse;
      long l2;
      boolean bool1;
      try
      {
        if (this.shouldExit)
        {
          while (true)
          {
            int k = paramList.size();
            if (i >= k)
              break;
            ((Request)paramList.get(i)).onCancel();
            i++;
          }
          return;
        }
        this.queueLock.unlock();
        m = 0;
        n = 0;
        BatchNano.BatchRequest localBatchRequest = new BatchNano.BatchRequest();
        localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        int i1 = 0;
        int i2;
        do
        {
          Request localRequest1 = (Request)paramList.get(i);
          i++;
          if (localRequest1.logMetrics)
          {
            m++;
            n += localRequest1.requestProto.getCachedSize();
          }
          localArrayList1.add(localRequest1);
          BatchNano.RequestWrapper localRequestWrapper = new BatchNano.RequestWrapper();
          localRequestWrapper.path = localRequest1.path;
          localRequestWrapper.data = MessageNano.toByteArray(localRequest1.requestProto);
          localArrayList2.add(localRequestWrapper);
          i1 += localRequest1.requestProto.getCachedSize();
          i2 = paramList.size();
        }
        while ((i < i2) && (i1 + ((Request)paramList.get(i)).requestProto.getCachedSize() < 131072));
        localBatchRequest.request = ((BatchNano.RequestWrapper[])localArrayList2.toArray(new BatchNano.RequestWrapper[0]));
        BatchNano.BatchHeader localBatchHeader = new BatchNano.BatchHeader();
        localBatchHeader.dispatcherId = Long.valueOf(this.dispatcherId);
        if (this.context != null)
        {
          BatchNano.AuthToken localAuthToken = new AuthUtils(this.context).createBatchAuthToken();
          if (localAuthToken != null)
            localBatchHeader.authToken = new BatchNano.AuthToken[] { localAuthToken };
        }
        localBatchRequest.header = localBatchHeader;
        l1 = SystemClock.uptimeMillis();
        HashMap localHashMap = Maps.newHashMap();
        if (this.context != null)
        {
          Map localMap = new AuthUtils(this.context).createAuthHeaders();
          if (localMap != null)
            localHashMap.putAll(localMap);
        }
        localHashMap.put("Content-Type", "application/protobuf");
        localSimplifiedHttpResponse = this.httpDispatcher.postWithHeaders(ServerConstants.getBatchUrl(), localHashMap, MessageNano.toByteArray(localBatchRequest));
        l2 = SystemClock.uptimeMillis();
        bool1 = false;
        if (localSimplifiedHttpResponse == null)
        {
          logger.i("Batch request failed due to network error.", new Object[0]);
          Iterator localIterator4 = localArrayList1.iterator();
          while (localIterator4.hasNext())
          {
            Request localRequest5 = (Request)localIterator4.next();
            bool1 = true;
            localRequest5.onError(5);
          }
        }
      }
      finally
      {
        this.queueLock.unlock();
      }
      if (localSimplifiedHttpResponse.statusCode != 200)
      {
        logger.i("Batch request failed due to internal server error.", new Object[0]);
        Iterator localIterator3 = localArrayList1.iterator();
        while (localIterator3.hasNext())
        {
          Request localRequest4 = (Request)localIterator3.next();
          bool1 = true;
          localRequest4.onError(4);
        }
      }
      try
      {
        localBatchResponse = BatchNano.BatchResponse.parseFrom(localSimplifiedHttpResponse.body);
        int i4 = localBatchResponse.response.length;
        int i5 = localArrayList1.size();
        bool1 = false;
        if (i4 != i5)
        {
          logger.i("Batch request failed due to batch size mismatch.", new Object[0]);
          Iterator localIterator2 = localArrayList1.iterator();
          while (localIterator2.hasNext())
          {
            Request localRequest3 = (Request)localIterator2.next();
            bool1 = true;
            localRequest3.onError(4);
          }
        }
      }
      catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
      {
        BatchNano.BatchResponse localBatchResponse;
        logger.i("Batch request failed due to batch protocol fault.", new Object[0]);
        Iterator localIterator1 = localArrayList1.iterator();
        while (localIterator1.hasNext())
        {
          Request localRequest2 = (Request)localIterator1.next();
          bool1 = true;
          localRequest2.onError(3);
          continue;
          boolean bool2 = parseResponses(localArrayList1, localBatchResponse);
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
      }
      if (m > 0)
      {
        int i3 = 0;
        if (localSimplifiedHttpResponse != null)
        {
          byte[] arrayOfByte = localSimplifiedHttpResponse.body;
          i3 = 0;
          if (arrayOfByte != null)
            i3 = localSimplifiedHttpResponse.body.length;
        }
        logBatchMetrics(m, n, i3, l1, l2, bool1);
      }
    }
  }

  void unlockQueueForTest()
  {
    this.queueLock.unlock();
  }

  private class Request<T extends MessageNano>
  {
    final boolean isImmediate;
    final boolean logMetrics;
    final String path;
    final MessageNano requestProto;
    final ProtoResponseHandler<T> responseHandler;
    final ProtoParser<T> responseParser;
    final Executor responseThread;

    Request(MessageNano paramBoolean1, boolean paramProtoParser, ProtoParser<T> paramProtoResponseHandler, ProtoResponseHandler<T> paramExecutor, Executor paramBoolean2, boolean arg7)
    {
      this.path = paramBoolean1;
      this.requestProto = paramProtoParser;
      this.responseParser = paramExecutor;
      this.isImmediate = paramProtoResponseHandler;
      this.responseHandler = paramBoolean2;
      Object localObject;
      this.responseThread = localObject;
      boolean bool;
      this.logMetrics = bool;
    }

    void onCancel()
    {
      try
      {
        this.responseThread.execute(new Runnable()
        {
          public void run()
          {
            ProtoRequestDispatcher.Request.this.responseHandler.onCancel();
          }
        });
        return;
      }
      catch (Exception localException)
      {
        ProtoRequestDispatcher.logger.w(localException, "Exception while dispatching cancel response.", new Object[0]);
      }
    }

    void onError(final int paramInt)
    {
      if ((2 == paramInt) && (ProtoRequestDispatcher.this.context != null))
        new AuthUtils(ProtoRequestDispatcher.this.context).invalidateAuthToken();
      if (5 == paramInt);
      try
      {
        NetworkUtil.checkNetwork();
        NetworkUtil.reportNetworkError();
      }
      catch (Throwable localThrowable)
      {
        try
        {
          while (true)
          {
            this.responseThread.execute(new Runnable()
            {
              public void run()
              {
                ProtoRequestDispatcher.Request.this.responseHandler.onError(paramInt);
              }
            });
            return;
            localThrowable = localThrowable;
            ProtoRequestDispatcher.logger.e(localThrowable, "Unexpected error logging network error", new Object[0]);
          }
        }
        catch (Exception localException)
        {
          ProtoRequestDispatcher.logger.w(localException, "Exception while dispatching error response.", new Object[0]);
        }
      }
    }

    void onSuccess(byte[] paramArrayOfByte)
    {
      try
      {
        NetworkUtil.reportNetworkOK();
        final MessageNano localMessageNano = this.responseParser.parse(paramArrayOfByte);
        this.responseThread.execute(new Runnable()
        {
          public void run()
          {
            ProtoRequestDispatcher.Request.this.responseHandler.onSuccess(localMessageNano);
          }
        });
        return;
      }
      catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
      {
        onError(3);
        return;
      }
      catch (Exception localException)
      {
        ProtoRequestDispatcher.logger.w(localException, "Exception while dispatching success response.", new Object[0]);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoRequestDispatcher
 * JD-Core Version:    0.6.2
 */