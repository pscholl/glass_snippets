package com.google.glass.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.DateHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public class ClockView extends TypophileTextView
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger timeReceiverLogger = FormattingLoggers.getLogger(logger, "timeReceiver");
  private final SafeBroadcastReceiver timeReceiver = new SafeBroadcastReceiver()
  {
    public FormattingLogger getLogger()
    {
      return ClockView.timeReceiverLogger;
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      ClockView.this.updateTime();
    }
  };

  public ClockView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ClockView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setGravity(17);
    updateTime();
  }

  private void updateTime()
  {
    long l = System.currentTimeMillis();
    setText(DateHelper.formattedTime(getContext(), l, true));
  }

  public void onLoad()
  {
    this.timeReceiver.registerAsync(AsyncThreadExecutorManager.getSerialExecutor(), getContext(), new String[] { "android.intent.action.TIME_TICK" });
    updateTime();
  }

  public void onUnload()
  {
    this.timeReceiver.unregisterAsync(AsyncThreadExecutorManager.getSerialExecutor(), getContext());
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ClockView
 * JD-Core Version:    0.6.2
 */