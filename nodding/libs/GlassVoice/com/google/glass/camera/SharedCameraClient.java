package com.google.glass.camera;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.RemoteException;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.ViewPropertyAnimator;
import com.google.glass.predicates.Assert;
import com.google.glass.util.remote.ParcelableException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public abstract class SharedCameraClient extends ISharedCameraClient.Stub
{
  private final Handler callbackHandler;
  private final Set<SurfaceTexture> destroyedPreviewSurfaces = new HashSet();
  private boolean isPreviewSurfaceValid;
  private boolean isUsingViewfinder;
  private Surface previewSurface;
  private final Condition previewSurfaceAvailableCondition = this.previewSurfaceLock.newCondition();
  private final TextureView.SurfaceTextureListener previewSurfaceListener = new TextureView.SurfaceTextureListener()
  {
    public void onSurfaceTextureAvailable(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      SharedCameraLogging.logDebug(SharedCameraClient.this, "Surface available.");
      SharedCameraClient.this.previewSurfaceLock.lock();
      try
      {
        SharedCameraClient.access$102(SharedCameraClient.this, true);
        SharedCameraClient.this.previewSurfaceAvailableCondition.signalAll();
        return;
      }
      finally
      {
        SharedCameraClient.this.previewSurfaceLock.unlock();
      }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture paramAnonymousSurfaceTexture)
    {
      SharedCameraLogging.logDebug(SharedCameraClient.this, "Surface destroyed.");
      SharedCameraClient.this.previewSurfaceLock.lock();
      try
      {
        SharedCameraClient.access$102(SharedCameraClient.this, false);
        if (SharedCameraClient.this.isUsingViewfinder)
          SharedCameraClient.this.destroyedPreviewSurfaces.add(paramAnonymousSurfaceTexture);
        while (true)
        {
          return false;
          paramAnonymousSurfaceTexture.release();
        }
      }
      finally
      {
        SharedCameraClient.this.previewSurfaceLock.unlock();
      }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      SharedCameraLogging.logDebug(SharedCameraClient.this, "Surface changed.");
    }

    public void onSurfaceTextureUpdated(SurfaceTexture paramAnonymousSurfaceTexture)
    {
    }
  };
  private final ReentrantLock previewSurfaceLock = new ReentrantLock();
  private TextureView viewfinder;

  public SharedCameraClient()
  {
    this(null);
  }

  public SharedCameraClient(Handler paramHandler)
  {
    if (paramHandler == null)
    {
      this.callbackHandler = new Handler();
      return;
    }
    this.callbackHandler = paramHandler;
  }

  private void fadeViewfinder(final boolean paramBoolean)
  {
    final TextureView localTextureView = getViewfinder();
    if (localTextureView != null)
      localTextureView.post(new Runnable()
      {
        public void run()
        {
          ViewPropertyAnimator localViewPropertyAnimator = localTextureView.animate();
          if (paramBoolean);
          for (float f = 1.0F; ; f = 0.0F)
          {
            localViewPropertyAnimator.alpha(f).setDuration(200L).start();
            return;
          }
        }
      });
  }

  public void dispatchCameraAcquired()
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onCameraAcquired();
      }
    });
  }

  public void dispatchCameraReleased()
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onCameraReleased();
      }
    });
  }

  public void dispatchCameraShutter()
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onCameraShutter();
      }
    });
  }

  public void dispatchError(final ParcelableException paramParcelableException)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onError(paramParcelableException);
      }
    });
  }

  public void dispatchMomentRecorded(final Video paramVideo)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onMomentRecorded(paramVideo);
      }
    });
  }

  public void dispatchPictureSaved(final Picture paramPicture)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onPictureSaved(paramPicture);
      }
    });
  }

  public void dispatchPictureTaken(final Picture paramPicture)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onPictureTaken(paramPicture);
      }
    });
  }

  public void dispatchPreviewFrame(final byte[] paramArrayOfByte, final long paramLong)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onPreviewFrame(paramArrayOfByte, paramLong);
      }
    });
  }

  public void dispatchStartPreview()
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onStartPreview();
      }
    });
  }

  public void dispatchStartRecording(final Video paramVideo)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onStartRecording(paramVideo);
      }
    });
  }

  public void dispatchStopPreview()
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onStopPreview();
      }
    });
  }

  public void dispatchStopRecording(final Video paramVideo)
  {
    this.callbackHandler.post(new Runnable()
    {
      public void run()
      {
        SharedCameraClient.this.onStopRecording(paramVideo);
      }
    });
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SharedCameraClient))
      return false;
    return ((SharedCameraClient)paramObject).getTag().equals(getTag());
  }

  protected void finalize()
    throws Throwable
  {
    try
    {
      stopUsingViewfinder();
      return;
    }
    finally
    {
      super.finalize();
    }
  }

  public Surface getPreviewSurface()
    throws RemoteException
  {
    this.previewSurfaceLock.lock();
    try
    {
      if ((this.previewSurface == null) && (this.viewfinder != null) && (this.viewfinder.isAvailable()))
      {
        this.previewSurface = new Surface(this.viewfinder.getSurfaceTexture());
        this.isPreviewSurfaceValid = true;
      }
      while (true)
      {
        Surface localSurface = this.previewSurface;
        return localSurface;
        this.previewSurface = null;
      }
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
  }

  public String getTag()
  {
    return getClass().getSimpleName();
  }

  public TextureView getViewfinder()
  {
    this.previewSurfaceLock.lock();
    try
    {
      TextureView localTextureView = this.viewfinder;
      return localTextureView;
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
  }

  public int hashCode()
  {
    return getTag().hashCode();
  }

  public boolean isViewfinderValid()
  {
    this.previewSurfaceLock.lock();
    try
    {
      boolean bool = this.isPreviewSurfaceValid;
      return bool;
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
  }

  protected void onCameraAcquired()
  {
  }

  protected void onCameraReleased()
  {
  }

  protected void onCameraShutter()
  {
  }

  protected void onError(ParcelableException paramParcelableException)
  {
  }

  protected void onMomentRecorded(Video paramVideo)
  {
  }

  protected void onPictureSaved(Picture paramPicture)
  {
  }

  protected void onPictureTaken(Picture paramPicture)
  {
  }

  public void onPreviewFrame(byte[] paramArrayOfByte, long paramLong)
  {
  }

  protected void onStartPreview()
  {
    fadeViewfinder(true);
  }

  public void onStartRecording(Video paramVideo)
  {
    fadeViewfinder(true);
  }

  protected void onStopPreview()
  {
    fadeViewfinder(false);
  }

  public void onStopRecording(Video paramVideo)
  {
    fadeViewfinder(false);
  }

  public void setViewfinder(TextureView paramTextureView)
  {
    this.previewSurfaceLock.lock();
    if (paramTextureView != null);
    try
    {
      if (paramTextureView.equals(this.viewfinder))
      {
        SharedCameraLogging.logWarning(this, "Ignoring previously set viewfinder.");
        return;
      }
      if (this.viewfinder != null)
        this.viewfinder.setSurfaceTextureListener(null);
      this.viewfinder = paramTextureView;
      if (paramTextureView != null)
        paramTextureView.setSurfaceTextureListener(this.previewSurfaceListener);
      return;
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
  }

  public boolean shouldUseInvisiblePreview()
    throws RemoteException
  {
    return this.viewfinder == null;
  }

  public void startUsingViewfinder()
  {
    this.previewSurfaceLock.lock();
    try
    {
      this.isUsingViewfinder = true;
      return;
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
  }

  public void stopUsingViewfinder()
  {
    this.previewSurfaceLock.lock();
    try
    {
      this.isUsingViewfinder = false;
      Iterator localIterator = this.destroyedPreviewSurfaces.iterator();
      while (localIterator.hasNext())
      {
        SurfaceTexture localSurfaceTexture = (SurfaceTexture)localIterator.next();
        SharedCameraLogging.logDebug(this, "Releasing preview surface.");
        localSurfaceTexture.release();
      }
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
    this.destroyedPreviewSurfaces.clear();
    this.previewSurfaceLock.unlock();
  }

  public String toString()
  {
    return getTag();
  }

  public boolean waitForPreviewSurface(long paramLong)
  {
    Assert.assertNotUiThread();
    if (Assert.isTest())
      return true;
    this.previewSurfaceLock.lock();
    try
    {
      if (this.viewfinder.isAvailable())
      {
        SharedCameraLogging.logDebug(this, "Preview surface already available.");
        return true;
      }
      SharedCameraLogging.logDebug(this, "Preview surface not available yet. Waiting...");
      try
      {
        while (!this.viewfinder.isAvailable())
          if (this.previewSurfaceAvailableCondition.awaitNanos(paramLong) <= 0L)
          {
            SharedCameraLogging.logError(this, "Timed out while waiting for the preview surface.");
            return false;
          }
        this.isPreviewSurfaceValid = true;
        SharedCameraLogging.logDebug(this, "Preview surface became available.");
        return true;
      }
      catch (InterruptedException localInterruptedException)
      {
        SharedCameraLogging.logError(this, "Interrupted while waiting for the recording preview surface.", localInterruptedException);
        return false;
      }
    }
    finally
    {
      this.previewSurfaceLock.unlock();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.SharedCameraClient
 * JD-Core Version:    0.6.2
 */