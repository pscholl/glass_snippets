package com.google.glass.util;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.glass.hidden.HiddenBluetoothAdapter;
import com.google.glass.bluetooth.BluetoothDeviceWrapper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;

public class BluetoothHelper
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static void cancelDiscoverable()
  {
    android.bluetooth.BluetoothAdapter localBluetoothAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
    if ((!isBluetoothEnabled(localBluetoothAdapter)) || (localBluetoothAdapter.getScanMode() != 23))
      return;
    logger.d("Canceling discoverability.", new Object[0]);
    HiddenBluetoothAdapter.setScanMode(21, 0);
  }

  public static boolean isBluetoothEnabled(android.bluetooth.BluetoothAdapter paramBluetoothAdapter)
  {
    return (paramBluetoothAdapter != null) && (paramBluetoothAdapter.isEnabled());
  }

  public static String loggableDevice(BluetoothDevice paramBluetoothDevice)
  {
    if (paramBluetoothDevice == null)
      return "null";
    return new BluetoothDeviceWrapper(paramBluetoothDevice).toString();
  }

  public static void makeBluetoothDiscoverable()
  {
    makeBluetoothDiscoverable(0);
  }

  public static void makeBluetoothDiscoverable(int paramInt)
  {
    android.bluetooth.BluetoothAdapter localBluetoothAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
    if ((!isBluetoothEnabled(localBluetoothAdapter)) || (localBluetoothAdapter.getScanMode() == 23))
      return;
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localFormattingLogger.d("Enabling discoverability for %ss", arrayOfObject);
    HiddenBluetoothAdapter.setScanMode(23, paramInt);
  }

  public static final class IntervalDiscoveringKeeper
  {
    public static final long DISCOVER_INTERVAL_MS = 58000L;
    private static final FormattingLogger discoveringProcessReceiverLogger = FormattingLoggers.getLogger(BluetoothHelper.logger, "discoveringProcessReceiver");
    private final com.google.glass.bluetooth.BluetoothAdapter btAdapterWrapper = com.google.glass.bluetooth.BluetoothAdapter.getDefaultAdapter();
    private final SafeBroadcastReceiver discoveringProcessReceiver;
    private final Handler handler;
    private boolean isKeptDiscovering;

    public IntervalDiscoveringKeeper()
    {
      Assert.assertUiThread();
      this.handler = new Handler(Looper.getMainLooper());
      this.discoveringProcessReceiver = new SafeBroadcastReceiver()
      {
        public FormattingLogger getLogger()
        {
          return BluetoothHelper.IntervalDiscoveringKeeper.discoveringProcessReceiverLogger;
        }

        public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          String str = paramAnonymousIntent.getAction();
          getLogger().i("receive %s", new Object[] { str });
          if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(str))
            if (BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.isBluetoothEnabled())
              BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.cancelDiscovery();
          while (!"android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(str))
            return;
          BluetoothHelper.IntervalDiscoveringKeeper.this.handler.removeCallbacksAndMessages(null);
          BluetoothHelper.IntervalDiscoveringKeeper.this.handler.postDelayed(new Runnable()
          {
            public void run()
            {
              if (BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.isBluetoothEnabled())
                BluetoothHelper.IntervalDiscoveringKeeper.this.btAdapterWrapper.startDiscovery();
            }
          }
          , 58000L);
        }
      };
      this.isKeptDiscovering = false;
    }

    public void start(Context paramContext)
    {
      FormattingLogger localFormattingLogger = BluetoothHelper.logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(this.isKeptDiscovering);
      localFormattingLogger.i("start with isKeptDiscovering = %s", arrayOfObject);
      Assert.assertUiThread();
      if (this.isKeptDiscovering);
      do
      {
        return;
        this.handler.removeCallbacksAndMessages(null);
        this.isKeptDiscovering = true;
        this.discoveringProcessReceiver.register(paramContext, new String[] { "android.bluetooth.adapter.action.DISCOVERY_STARTED", "android.bluetooth.adapter.action.DISCOVERY_FINISHED" });
        if (!this.btAdapterWrapper.isBluetoothEnabled())
        {
          BluetoothHelper.logger.d("Bluetooth is disabled.", new Object[0]);
          return;
        }
      }
      while (this.btAdapterWrapper.isDiscovering());
      this.btAdapterWrapper.startDiscovery();
    }

    public void start(final Context paramContext, long paramLong)
    {
      FormattingLogger localFormattingLogger = BluetoothHelper.logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(this.isKeptDiscovering);
      arrayOfObject[1] = Long.valueOf(paramLong);
      localFormattingLogger.i("start with isKeptDiscovering = %s and delayMs = %s", arrayOfObject);
      Assert.assertUiThread();
      if (this.isKeptDiscovering)
        return;
      if (paramLong <= 0L)
      {
        start(paramContext);
        return;
      }
      this.handler.removeCallbacksAndMessages(null);
      this.handler.postDelayed(new Runnable()
      {
        public void run()
        {
          BluetoothHelper.IntervalDiscoveringKeeper.this.start(paramContext);
        }
      }
      , paramLong);
    }

    public void stop(Context paramContext)
    {
      FormattingLogger localFormattingLogger = BluetoothHelper.logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(this.isKeptDiscovering);
      localFormattingLogger.i("stop with isKeptDiscovering = %s", arrayOfObject);
      Assert.assertUiThread();
      this.handler.removeCallbacksAndMessages(null);
      if (!this.isKeptDiscovering);
      do
      {
        return;
        this.isKeptDiscovering = false;
        this.discoveringProcessReceiver.unregister(paramContext);
        if (!this.btAdapterWrapper.isBluetoothEnabled())
        {
          BluetoothHelper.logger.d("Bluetooth is disabled.", new Object[0]);
          return;
        }
      }
      while (!this.btAdapterWrapper.isDiscovering());
      this.btAdapterWrapper.cancelDiscovery();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BluetoothHelper
 * JD-Core Version:    0.6.2
 */