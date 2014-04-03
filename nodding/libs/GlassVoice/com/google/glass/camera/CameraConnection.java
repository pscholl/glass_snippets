package com.google.glass.camera;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.SafeServiceConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CameraConnection extends SafeServiceConnection
{

  @VisibleForTesting
  static final ComponentName SHARED_CAMERA_SERVICE = new ComponentName("com.google.glass.camera", "com.google.glass.camera.SharedCameraService");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;

  @VisibleForTesting
  final List<Runnable> onConnectTasks = new ArrayList();

  @VisibleForTesting
  ISharedCameraService sharedCameraBinder;

  public CameraConnection(Context paramContext)
  {
    super(SHARED_CAMERA_SERVICE);
    this.context = paramContext;
  }

  private void runTask(Runnable paramRunnable)
  {
    if (isConnected())
    {
      logger.d("Service is connected. Running immediately.", new Object[0]);
      paramRunnable.run();
      return;
    }
    logger.w("Service not connected. Will run when connected.", new Object[0]);
    this.onConnectTasks.add(paramRunnable);
    bind();
  }

  public CameraConnection bind()
  {
    bind(this.context);
    return this;
  }

  public FormattingLogger getLogger()
  {
    return logger;
  }

  public void onServiceConnectedInternal(ComponentName paramComponentName, IBinder paramIBinder)
  {
    logger.d("Camera service connected.", new Object[0]);
    this.sharedCameraBinder = ISharedCameraService.Stub.asInterface(paramIBinder);
    Iterator localIterator = this.onConnectTasks.iterator();
    while (localIterator.hasNext())
      ((Runnable)localIterator.next()).run();
    this.onConnectTasks.clear();
  }

  public void onServiceDisconnectedInternal(ComponentName paramComponentName, boolean paramBoolean)
  {
    logger.d("Camera service disconnected.", new Object[0]);
  }

  public void recordMoment(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertUiThread();
    runTask(new Runnable()
    {
      public void run()
      {
        try
        {
          CameraConnection.logger.d("Sending record moment.", new Object[0]);
          CameraConnection.this.sharedCameraBinder.recordMoment(paramSharedCameraClient);
          return;
        }
        catch (RemoteException localRemoteException)
        {
        }
      }
    });
  }

  public void startPreview(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertUiThread();
    runTask(new Runnable()
    {
      public void run()
      {
        try
        {
          CameraConnection.logger.d("Sending start preview.", new Object[0]);
          CameraConnection.this.sharedCameraBinder.startPreview(paramSharedCameraClient);
          return;
        }
        catch (RemoteException localRemoteException)
        {
        }
      }
    });
  }

  public void startRecording(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertUiThread();
    runTask(new Runnable()
    {
      public void run()
      {
        try
        {
          CameraConnection.logger.d("Sending start recording.", new Object[0]);
          CameraConnection.this.sharedCameraBinder.startRecording(paramSharedCameraClient);
          return;
        }
        catch (RemoteException localRemoteException)
        {
        }
      }
    });
  }

  public void stopPreview(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertUiThread();
    runTask(new Runnable()
    {
      public void run()
      {
        try
        {
          CameraConnection.logger.d("Sending stop preview.", new Object[0]);
          CameraConnection.this.sharedCameraBinder.stopPreview(paramSharedCameraClient);
          return;
        }
        catch (RemoteException localRemoteException)
        {
        }
      }
    });
  }

  public void stopRecording(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertUiThread();
    runTask(new Runnable()
    {
      public void run()
      {
        try
        {
          CameraConnection.logger.d("Sending stop recording.", new Object[0]);
          CameraConnection.this.sharedCameraBinder.stopRecording(paramSharedCameraClient);
          return;
        }
        catch (RemoteException localRemoteException)
        {
        }
      }
    });
  }

  public void takePicture(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertUiThread();
    runTask(new Runnable()
    {
      public void run()
      {
        try
        {
          CameraConnection.logger.d("Sending take picture.", new Object[0]);
          CameraConnection.this.sharedCameraBinder.takePicture(paramSharedCameraClient);
          return;
        }
        catch (RemoteException localRemoteException)
        {
        }
      }
    });
  }

  public CameraConnection unbind()
  {
    unbind(this.context);
    return this;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.CameraConnection
 * JD-Core Version:    0.6.2
 */