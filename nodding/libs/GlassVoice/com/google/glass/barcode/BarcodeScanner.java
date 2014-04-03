package com.google.glass.barcode;

import android.content.Context;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.view.TextureView;
import com.google.android.libraries.barhopper.Barcode;
import com.google.glass.camera.CameraConnection;
import com.google.glass.camera.SharedCameraClient;
import com.google.glass.camera.SharedCameraConstants;
import com.google.glass.camera.Size;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.remote.ParcelableException;
import java.util.concurrent.TimeUnit;

public class BarcodeScanner
{
  private static final String TAG = BarcodeScanner.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private BarcodeRecognizer barcodeRecognizer;
  private boolean bound;
  private CameraConnection camera;
  private final SharedCameraClient cameraClient = new SharedCameraClient()
  {
    public String getTag()
    {
      return BarcodeScanner.TAG;
    }

    public void onError(ParcelableException paramAnonymousParcelableException)
    {
      BarcodeScanner.this.listener.onError(BarcodeScanner.BarcodeError.CAMERA);
    }

    public void onPreviewFrame(final byte[] paramAnonymousArrayOfByte, long paramAnonymousLong)
    {
      if (BarcodeScanner.this.shouldIgnorePreviewFrames);
      do
      {
        return;
        if (BarcodeScanner.this.previewFrameCount == 0)
          BarcodeScanner.access$202(BarcodeScanner.this, paramAnonymousLong);
      }
      while (BarcodeScanner.access$108(BarcodeScanner.this) % BarcodeScanner.this.cameraFrameModulus != 0);
      if (paramAnonymousLong - BarcodeScanner.this.firstPreviewFrameTimeNanos > BarcodeScanner.this.scanTimeoutNanos)
        BarcodeScanner.this.listener.onError(BarcodeScanner.BarcodeError.TIMEOUT);
      new AsyncTask()
      {
        protected Barcode doInBackground(Void[] paramAnonymous2ArrayOfVoid)
        {
          return BarcodeScanner.this.barcodeRecognizer.recognize(paramAnonymousArrayOfByte, this.val$previewSize.width, this.val$previewSize.height);
        }

        protected void onPostExecute(Barcode paramAnonymous2Barcode)
        {
          if (paramAnonymous2Barcode != null)
          {
            BarcodeScanner.logger.d("Recognized a barcode!", new Object[0]);
            if (BarcodeScanner.this.listener.onBarcodeScanned(paramAnonymous2Barcode))
            {
              BarcodeScanner.this.stopScanning(true, paramAnonymous2Barcode);
              return;
            }
          }
          BarcodeScanner.access$002(BarcodeScanner.this, false);
        }

        protected void onPreExecute()
        {
          BarcodeScanner.access$002(BarcodeScanner.this, true);
        }
      }
      .execute(new Void[0]);
    }
  };
  private final int cameraFrameModulus;
  private long firstPreviewFrameTimeNanos;
  private final BarcodeScannerListener listener;
  private int previewFrameCount;
  private final long scanTimeoutNanos;
  private boolean scanning;
  private boolean shouldIgnorePreviewFrames;
  private final UserEventHelper userEventHelper;

  BarcodeScanner(Context paramContext, int paramInt, long paramLong, BarcodeScannerListener paramBarcodeScannerListener, UserEventHelper paramUserEventHelper)
  {
    this.cameraFrameModulus = paramInt;
    this.scanTimeoutNanos = paramLong;
    this.listener = paramBarcodeScannerListener;
    this.userEventHelper = paramUserEventHelper;
    this.camera = new CameraConnection(paramContext);
  }

  private long getMillisSinceFirstPreview()
  {
    if (this.firstPreviewFrameTimeNanos == 0L)
      return 0L;
    return TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.firstPreviewFrameTimeNanos);
  }

  private void log(UserEventAction paramUserEventAction, String paramString)
  {
    this.userEventHelper.log(paramUserEventAction, paramString);
  }

  private void logFailure()
  {
    UserEventAction localUserEventAction = UserEventAction.BARCODE_FAILED_SCAN;
    Long localLong = Long.valueOf(getMillisSinceFirstPreview());
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "f";
    arrayOfObject[1] = Integer.valueOf(this.previewFrameCount);
    log(localUserEventAction, UserEventHelper.createEventTuple("m", localLong, arrayOfObject));
  }

  private void logSuccess(Barcode paramBarcode)
  {
    UserEventAction localUserEventAction = UserEventAction.BARCODE_SUCCESSFUL_SCAN;
    Long localLong = Long.valueOf(getMillisSinceFirstPreview());
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "f";
    arrayOfObject[1] = Integer.valueOf(this.previewFrameCount);
    arrayOfObject[2] = "s";
    arrayOfObject[3] = Integer.valueOf(paramBarcode.rawValue.length());
    arrayOfObject[4] = "b";
    arrayOfObject[5] = paramBarcode.getBoundingBox().flattenToString().replace(' ', ',');
    log(localUserEventAction, UserEventHelper.createEventTuple("m", localLong, arrayOfObject));
  }

  public static Builder newBuilder()
  {
    return new Builder(1, 9223372036854775807L);
  }

  private void stopScanning(boolean paramBoolean, Barcode paramBarcode)
  {
    if (this.scanning)
      if (paramBoolean)
        logSuccess(paramBarcode);
    while (true)
    {
      this.scanning = false;
      this.shouldIgnorePreviewFrames = true;
      this.camera.stopPreview(this.cameraClient);
      return;
      logFailure();
      continue;
      logger.w("Duplicate stopScanning calls.", new Object[0]);
    }
  }

  public void bindCamera()
  {
    this.bound = true;
    this.camera.bind();
  }

  protected void finalize()
    throws Throwable
  {
    if (this.bound)
      logger.e("BarcodeScanner finalized while bound to camera service!", new Object[0]);
    super.finalize();
  }

  public void setViewfinder(TextureView paramTextureView)
  {
    this.cameraClient.setViewfinder(paramTextureView);
  }

  public void startScanning()
  {
    if (!this.bound)
      throw new IllegalStateException("Cannot scan unless bound.");
    if (this.cameraClient.getViewfinder() == null)
      throw new IllegalStateException("Cannot scan without a viewfinder.");
    if (this.scanning)
      logger.w("Duplicate startScanning calls.", new Object[0]);
    this.scanning = true;
    this.barcodeRecognizer = new BarhopperRecognizer();
    this.previewFrameCount = 0;
    this.firstPreviewFrameTimeNanos = 0L;
    this.shouldIgnorePreviewFrames = false;
    this.camera.startPreview(this.cameraClient);
  }

  public void stopScanning()
  {
    stopScanning(false, null);
  }

  public void unbindCamera()
  {
    this.camera.unbind();
    this.bound = false;
  }

  public static enum BarcodeError
  {
    static
    {
      CAMERA = new BarcodeError("CAMERA", 1);
      BarcodeError[] arrayOfBarcodeError = new BarcodeError[2];
      arrayOfBarcodeError[0] = TIMEOUT;
      arrayOfBarcodeError[1] = CAMERA;
    }
  }

  public static abstract interface BarcodeScannerListener
  {
    public abstract boolean onBarcodeScanned(Barcode paramBarcode);

    public abstract void onError(BarcodeScanner.BarcodeError paramBarcodeError);
  }

  public static class Builder
  {
    private final int cameraFrameModulus;
    private final long scanTimeoutNanos;

    Builder(int paramInt, long paramLong)
    {
      this.cameraFrameModulus = paramInt;
      this.scanTimeoutNanos = paramLong;
    }

    public BarcodeScanner build(Context paramContext, BarcodeScanner.BarcodeScannerListener paramBarcodeScannerListener, UserEventHelper paramUserEventHelper)
    {
      return new BarcodeScanner(paramContext, this.cameraFrameModulus, this.scanTimeoutNanos, paramBarcodeScannerListener, paramUserEventHelper);
    }

    public Builder withCameraFrameModulus(int paramInt)
    {
      return new Builder(paramInt, this.scanTimeoutNanos);
    }

    public Builder withScanTimeoutNanos(long paramLong)
    {
      return new Builder(this.cameraFrameModulus, paramLong);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.BarcodeScanner
 * JD-Core Version:    0.6.2
 */