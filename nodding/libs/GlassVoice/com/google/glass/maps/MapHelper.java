package com.google.glass.maps;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.util.LruCache;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.proto.MapRenderingServiceNano.MapRenderRequest;
import com.google.protobuf.nano.MessageNano;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

public class MapHelper
{
  private static final String AUTHORITY = "map";
  public static final String KEY_PAYLOAD = "payload";
  private static final int MAP_CACHE_MAX_BYTES = 4194304;
  private static final ComponentName MAP_RENDERING_SERVICE = new ComponentName("com.google.glass.maps", "com.google.glass.maps.service.MapRenderingService");
  private static final String SCHEME = "glass";
  private static MapHelper instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      MapHelper.this.handleConnection(paramAnonymousComponentName, paramAnonymousIBinder);
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      MapHelper.this.handleDisconnection();
    }
  };
  private ConnectionState connectionState = ConnectionState.DISCONNECTED;
  private final Context context;
  private final Map<String, MapRendererFuture> futures = Maps.newHashMap();
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      MapHelper.this.handleIncomingMessage(paramAnonymousMessage);
    }
  };
  private final Messenger incoming = new Messenger(this.handler);
  private final LruCache<MapRenderingServiceNano.MapRenderRequest, byte[]> mapCache = new LruCache(4194304)
  {
    protected int sizeOf(MapRenderingServiceNano.MapRenderRequest paramAnonymousMapRenderRequest, byte[] paramAnonymousArrayOfByte)
    {
      return paramAnonymousArrayOfByte.length;
    }
  };
  private Messenger outgoing = null;
  private final Map<String, MapRenderingServiceNano.MapRenderRequest> outstandingRequests = Maps.newHashMap();
  private final Queue<MapRenderingServiceNano.MapRenderRequest> queue = Lists.newLinkedList();
  private final Object requestStateLock = new Object();
  private final AtomicInteger serialNumber = new AtomicInteger(1);

  private MapHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private void cancelMapRequest(String paramString)
  {
    logger.d("Cancelling request: %s", new Object[] { paramString });
    MapRenderingServiceNano.MapRenderRequest localMapRenderRequest = new MapRenderingServiceNano.MapRenderRequest();
    localMapRenderRequest.id = paramString;
    localMapRenderRequest.type = 2;
    synchronized (this.requestStateLock)
    {
      this.queue.add(localMapRenderRequest);
      this.futures.remove(paramString);
      this.outstandingRequests.remove(paramString);
      return;
    }
  }

  private void connectIfNecessary()
  {
    Assert.assertUiThread();
    if (this.connectionState == ConnectionState.DISCONNECTED)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.context.getPackageName();
      localFormattingLogger.i("Opening connection to MapRenderingService from: %s", arrayOfObject);
      Intent localIntent = new Intent();
      localIntent.setComponent(MAP_RENDERING_SERVICE);
      if (this.context.bindService(localIntent, this.connection, 1))
        this.connectionState = ConnectionState.CONNECTING;
    }
    else
    {
      return;
    }
    logger.w("bindService() failed.", new Object[0]);
  }

  private void flushQueue()
  {
    Assert.assertUiThread();
    if (this.outgoing != null)
      while (true)
      {
        Message localMessage;
        synchronized (this.requestStateLock)
        {
          FormattingLogger localFormattingLogger = logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(this.queue.size());
          localFormattingLogger.d("Sending %s requests", arrayOfObject);
          if (this.queue.isEmpty())
            break label158;
          MapRenderingServiceNano.MapRenderRequest localMapRenderRequest = (MapRenderingServiceNano.MapRenderRequest)this.queue.peek();
          localMessage = Message.obtain();
          localMessage.getData().putByteArray("payload", MessageNano.toByteArray(localMapRenderRequest));
          localMessage.replyTo = this.incoming;
        }
        try
        {
          this.outgoing.send(localMessage);
          this.queue.remove();
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        catch (RemoteException localRemoteException)
        {
          handleDisconnection();
          logger.e(localRemoteException, "RemoteException", new Object[0]);
        }
      }
    label158:
  }

  public static MapHelper getInstance(Context paramContext)
  {
    instance.postConnectIfNecessary();
    return instance;
  }

  private String getNextId()
  {
    return this.context.getPackageName() + ":" + Process.myPid() + ":" + this.serialNumber.getAndIncrement();
  }

  private void handleConnection(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Assert.assertUiThread();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramComponentName.getClassName();
    localFormattingLogger.i("Connected to %s", arrayOfObject);
    this.outgoing = new Messenger(paramIBinder);
    this.connectionState = ConnectionState.CONNECTED;
    flushQueue();
  }

  private void handleDisconnection()
  {
    Assert.assertUiThread();
    this.connectionState = ConnectionState.DISCONNECTED;
    this.outgoing = null;
    synchronized (this.requestStateLock)
    {
      this.queue.clear();
      Iterator localIterator = this.futures.values().iterator();
      if (localIterator.hasNext())
        ((MapRendererFuture)localIterator.next()).setException(new MapRendererException());
    }
    this.futures.clear();
    this.outstandingRequests.clear();
    logger.i("Disconnected from MapRenderingService!", new Object[0]);
  }

  // ERROR //
  private void handleIncomingMessage(Message paramMessage)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 265	android/os/Message:getData	()Landroid/os/Bundle;
    //   4: ldc 11
    //   6: invokevirtual 372	android/os/Bundle:getByteArray	(Ljava/lang/String;)[B
    //   9: invokestatic 378	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:parseFrom	([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    //   12: astore_3
    //   13: aload_0
    //   14: getfield 90	com/google/glass/maps/MapHelper:requestStateLock	Ljava/lang/Object;
    //   17: astore 4
    //   19: aload 4
    //   21: monitorenter
    //   22: aload_0
    //   23: getfield 106	com/google/glass/maps/MapHelper:futures	Ljava/util/Map;
    //   26: aload_3
    //   27: getfield 379	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:id	Ljava/lang/String;
    //   30: invokeinterface 198 2 0
    //   35: checkcast 356	com/google/glass/maps/MapHelper$MapRendererFuture
    //   38: astore 6
    //   40: aload_0
    //   41: getfield 108	com/google/glass/maps/MapHelper:outstandingRequests	Ljava/util/Map;
    //   44: aload_3
    //   45: getfield 379	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:id	Ljava/lang/String;
    //   48: invokeinterface 198 2 0
    //   53: checkcast 179	com/google/glass/proto/MapRenderingServiceNano$MapRenderRequest
    //   56: astore 7
    //   58: aload 4
    //   60: monitorexit
    //   61: aload 6
    //   63: ifnull +97 -> 160
    //   66: aload_3
    //   67: getfield 383	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:image	[B
    //   70: invokestatic 388	com/google/glass/util/ArrayUtils:isEmpty	([B)Z
    //   73: ifne +140 -> 213
    //   76: aload_3
    //   77: getfield 383	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:image	[B
    //   80: astore 11
    //   82: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   85: astore 12
    //   87: iconst_2
    //   88: anewarray 4	java/lang/Object
    //   91: astore 13
    //   93: aload 13
    //   95: iconst_0
    //   96: aload_3
    //   97: getfield 379	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:id	Ljava/lang/String;
    //   100: aastore
    //   101: aload 13
    //   103: iconst_1
    //   104: aload 11
    //   106: arraylength
    //   107: invokestatic 245	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   110: aastore
    //   111: aload 12
    //   113: ldc_w 390
    //   116: aload 13
    //   118: invokeinterface 177 3 0
    //   123: aload 7
    //   125: ifnull +70 -> 195
    //   128: aload_0
    //   129: getfield 136	com/google/glass/maps/MapHelper:mapCache	Landroid/util/LruCache;
    //   132: astore 15
    //   134: aload 15
    //   136: monitorenter
    //   137: aload_0
    //   138: getfield 136	com/google/glass/maps/MapHelper:mapCache	Landroid/util/LruCache;
    //   141: aload 7
    //   143: aload 11
    //   145: invokevirtual 396	android/util/LruCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   148: pop
    //   149: aload 15
    //   151: monitorexit
    //   152: aload 6
    //   154: aload 11
    //   156: invokevirtual 399	com/google/glass/maps/MapHelper$MapRendererFuture:set	([B)Z
    //   159: pop
    //   160: return
    //   161: astore_2
    //   162: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   165: aload_2
    //   166: ldc_w 401
    //   169: iconst_0
    //   170: anewarray 4	java/lang/Object
    //   173: invokeinterface 403 4 0
    //   178: return
    //   179: astore 5
    //   181: aload 4
    //   183: monitorexit
    //   184: aload 5
    //   186: athrow
    //   187: astore 16
    //   189: aload 15
    //   191: monitorexit
    //   192: aload 16
    //   194: athrow
    //   195: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   198: ldc_w 405
    //   201: iconst_0
    //   202: anewarray 4	java/lang/Object
    //   205: invokeinterface 233 3 0
    //   210: goto -58 -> 152
    //   213: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   216: astore 8
    //   218: iconst_1
    //   219: anewarray 4	java/lang/Object
    //   222: astore 9
    //   224: aload 9
    //   226: iconst_0
    //   227: aload_3
    //   228: getfield 379	com/google/glass/proto/MapRenderingServiceNano$MapRenderResponse:id	Ljava/lang/String;
    //   231: aastore
    //   232: aload 8
    //   234: ldc_w 407
    //   237: aload 9
    //   239: invokeinterface 177 3 0
    //   244: aload 6
    //   246: new 358	com/google/glass/maps/MapHelper$MapRendererException
    //   249: dup
    //   250: invokespecial 359	com/google/glass/maps/MapHelper$MapRendererException:<init>	()V
    //   253: invokevirtual 363	com/google/glass/maps/MapHelper$MapRendererFuture:setException	(Ljava/lang/Throwable;)Z
    //   256: pop
    //   257: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	13	161	com/google/protobuf/nano/InvalidProtocolBufferNanoException
    //   22	61	179	finally
    //   181	184	179	finally
    //   137	152	187	finally
    //   189	192	187	finally
  }

  public static void initialize(Context paramContext)
  {
    Assert.assertUiThread();
    if (instance == null)
      instance = new MapHelper(paramContext.getApplicationContext());
  }

  public static boolean isGlassMapUri(Uri paramUri)
  {
    return (paramUri.isHierarchical()) && ("glass".equals(paramUri.getScheme())) && ("map".equals(paramUri.getAuthority()));
  }

  private void postConnectIfNecessary()
  {
    this.handler.post(new Runnable()
    {
      public void run()
      {
        MapHelper.this.connectIfNecessary();
      }
    });
  }

  private void postFlushQueue()
  {
    this.handler.post(new Runnable()
    {
      public void run()
      {
        MapHelper.this.flushQueue();
      }
    });
  }

  public byte[] getCachedMapPng(MapRenderingServiceNano.MapRenderRequest paramMapRenderRequest)
  {
    synchronized (this.mapCache)
    {
      byte[] arrayOfByte = (byte[])this.mapCache.get(paramMapRenderRequest);
      return arrayOfByte;
    }
  }

  public ListenableFuture<Bitmap> renderMap(MapRenderingServiceNano.MapRenderRequest paramMapRenderRequest)
  {
    return Futures.transform(renderMapToPng(paramMapRenderRequest), new AsyncFunction()
    {
      public ListenableFuture<Bitmap> apply(final byte[] paramAnonymousArrayOfByte)
      {
        final SettableFuture localSettableFuture = SettableFuture.create();
        new AsyncTask()
        {
          protected Bitmap doInBackground(Void[] paramAnonymous2ArrayOfVoid)
          {
            return BitmapFactory.decodeByteArray(paramAnonymousArrayOfByte, 0, paramAnonymousArrayOfByte.length);
          }

          protected void onPostExecute(Bitmap paramAnonymous2Bitmap)
          {
            localSettableFuture.set(paramAnonymous2Bitmap);
          }
        }
        .executeOnExecutor(AsyncThreadExecutorManager.getThreadPoolExecutor(), new Void[0]);
        return localSettableFuture;
      }
    });
  }

  public ListenableFuture<Bitmap> renderMap(MapRenderingServiceNano.MapRenderRequest paramMapRenderRequest, final OnMapRenderedListener paramOnMapRenderedListener)
  {
    final ListenableFuture localListenableFuture = renderMap(paramMapRenderRequest);
    localListenableFuture.addListener(new Runnable()
    {
      public void run()
      {
        try
        {
          paramOnMapRenderedListener.onMapRendered((Bitmap)localListenableFuture.get());
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          MapHelper.logger.e(localInterruptedException, "Interrupted", new Object[0]);
          Thread.currentThread().interrupt();
          paramOnMapRenderedListener.onMapFailed();
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          MapHelper.logger.e(localExecutionException, "ExecutionException", new Object[0]);
          paramOnMapRenderedListener.onMapFailed();
        }
      }
    }
    , MoreExecutors.sameThreadExecutor());
    return localListenableFuture;
  }

  // ERROR //
  public ListenableFuture<byte[]> renderMapToPng(MapRenderingServiceNano.MapRenderRequest paramMapRenderRequest)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 487	com/google/glass/maps/MapHelper:getCachedMapPng	(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B
    //   5: astore_2
    //   6: aload_2
    //   7: ifnull +23 -> 30
    //   10: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   13: ldc_w 489
    //   16: iconst_0
    //   17: anewarray 4	java/lang/Object
    //   20: invokeinterface 177 3 0
    //   25: aload_2
    //   26: invokestatic 493	com/google/common/util/concurrent/Futures:immediateFuture	(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    //   29: areturn
    //   30: aload_0
    //   31: invokespecial 495	com/google/glass/maps/MapHelper:getNextId	()Ljava/lang/String;
    //   34: astore_3
    //   35: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   38: ldc_w 497
    //   41: iconst_1
    //   42: anewarray 4	java/lang/Object
    //   45: dup
    //   46: iconst_0
    //   47: aload_3
    //   48: aastore
    //   49: invokeinterface 177 3 0
    //   54: aload_1
    //   55: invokestatic 271	com/google/protobuf/nano/MessageNano:toByteArray	(Lcom/google/protobuf/nano/MessageNano;)[B
    //   58: invokestatic 500	com/google/glass/proto/MapRenderingServiceNano$MapRenderRequest:parseFrom	([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    //   61: astore 5
    //   63: aload 5
    //   65: aload_3
    //   66: putfield 183	com/google/glass/proto/MapRenderingServiceNano$MapRenderRequest:id	Ljava/lang/String;
    //   69: aload 5
    //   71: iconst_1
    //   72: putfield 186	com/google/glass/proto/MapRenderingServiceNano$MapRenderRequest:type	I
    //   75: new 356	com/google/glass/maps/MapHelper$MapRendererFuture
    //   78: dup
    //   79: aload_0
    //   80: aload_3
    //   81: invokespecial 502	com/google/glass/maps/MapHelper$MapRendererFuture:<init>	(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    //   84: astore 6
    //   86: aload_0
    //   87: getfield 90	com/google/glass/maps/MapHelper:requestStateLock	Ljava/lang/Object;
    //   90: astore 7
    //   92: aload 7
    //   94: monitorenter
    //   95: aload_0
    //   96: getfield 98	com/google/glass/maps/MapHelper:queue	Ljava/util/Queue;
    //   99: aload 5
    //   101: invokeinterface 192 2 0
    //   106: pop
    //   107: aload_0
    //   108: getfield 106	com/google/glass/maps/MapHelper:futures	Ljava/util/Map;
    //   111: aload_3
    //   112: aload 6
    //   114: invokeinterface 503 3 0
    //   119: pop
    //   120: aload_0
    //   121: getfield 108	com/google/glass/maps/MapHelper:outstandingRequests	Ljava/util/Map;
    //   124: aload_3
    //   125: aload_1
    //   126: invokeinterface 503 3 0
    //   131: pop
    //   132: aload 7
    //   134: monitorexit
    //   135: aload_0
    //   136: invokespecial 505	com/google/glass/maps/MapHelper:postFlushQueue	()V
    //   139: aload 6
    //   141: areturn
    //   142: astore 4
    //   144: getstatic 59	com/google/glass/maps/MapHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   147: aload 4
    //   149: ldc_w 507
    //   152: iconst_0
    //   153: anewarray 4	java/lang/Object
    //   156: invokeinterface 291 4 0
    //   161: aconst_null
    //   162: areturn
    //   163: astore 8
    //   165: aload 7
    //   167: monitorexit
    //   168: aload 8
    //   170: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   54	63	142	com/google/protobuf/nano/InvalidProtocolBufferNanoException
    //   95	135	163	finally
    //   165	168	163	finally
  }

  private static enum ConnectionState
  {
    static
    {
      CONNECTING = new ConnectionState("CONNECTING", 1);
      CONNECTED = new ConnectionState("CONNECTED", 2);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[3];
      arrayOfConnectionState[0] = DISCONNECTED;
      arrayOfConnectionState[1] = CONNECTING;
      arrayOfConnectionState[2] = CONNECTED;
    }
  }

  public static class MapRendererException extends Exception
  {
  }

  private class MapRendererFuture extends AbstractFuture<byte[]>
  {
    private final String id;

    MapRendererFuture(String arg2)
    {
      Object localObject;
      this.id = localObject;
    }

    public void interruptTask()
    {
      MapHelper.this.cancelMapRequest(this.id);
    }

    protected boolean set(byte[] paramArrayOfByte)
    {
      return super.set(paramArrayOfByte);
    }

    protected boolean setException(Throwable paramThrowable)
    {
      return super.setException(paramThrowable);
    }
  }

  public static abstract interface OnMapRenderedListener
  {
    public abstract void onMapFailed();

    public abstract void onMapRendered(Bitmap paramBitmap);
  }

  public static abstract class SimpleOnMapRenderedListener
    implements MapHelper.OnMapRenderedListener
  {
    public void onMapFailed()
    {
    }

    public void onMapRendered(Bitmap paramBitmap)
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.MapHelper
 * JD-Core Version:    0.6.2
 */