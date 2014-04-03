package com.google.glass.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.common.R.style;
import com.google.glass.input.InputListener;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.input.TouchDetector;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.SafeBroadcastReceiver;

public final class MessageDialog extends Dialog
  implements InputListener
{
  private static final long DEFAULT_TEMPORARY_MESSAGE_DURATION = 2000L;
  private static final long EXPANDED_MESSAGE_DURATION = 2000L;
  private static final long MESSAGE_DURATION = 1000L;
  private static final int MSG_DISMISS = 0;
  private static final int MSG_ON_DONE = 2;
  private static final int MSG_TEMPORARY_MESSAGE_DONE = 1;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger screenOffReceiverLogger = FormattingLoggers.getLogger(logger, "screenOffReceiver");
  private ViewGroup dialogLayout;
  private LinearLayout gradientView;
  private final Handler handler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      do
      {
        do
        {
          return;
          MessageDialog.this.dismiss();
          return;
          MessageDialog.this.showNormalContent();
        }
        while (MessageDialog.Params.access$200(MessageDialog.this.params) == null);
        MessageDialog.Params.access$200(MessageDialog.this.params).onDoneMessageShown();
        return;
      }
      while (MessageDialog.Params.access$200(MessageDialog.this.params) == null);
      if (MessageDialog.this.temporaryContentShowing)
      {
        MessageDialog.Params.access$200(MessageDialog.this.params).onDismissed();
        return;
      }
      MessageDialog.Params.access$200(MessageDialog.this.params).onDone();
    }
  };
  private final Params params;
  private final SafeBroadcastReceiver screenOffReceiver = new SafeBroadcastReceiver()
  {
    public FormattingLogger getLogger()
    {
      return MessageDialog.screenOffReceiverLogger;
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("android.intent.action.SCREEN_OFF".equals(paramAnonymousIntent.getAction()))
        MessageDialog.this.onScreenOff();
    }
  };
  private boolean temporaryContentShowing;
  private final TouchDetector touchDetector;

  private MessageDialog(Context paramContext, Params paramParams)
  {
    super(paramContext, getThemeId(paramParams.shouldAnimate));
    this.params = paramParams;
    this.touchDetector = new TouchDetector(paramContext, this);
    if (paramParams.isExpanded);
    for (int i = R.layout.message_dialog_expanded; ; i = R.layout.message_dialog)
    {
      setContentView(i);
      this.dialogLayout = ((ViewGroup)findViewById(R.id.ms_dialog));
      this.dialogLayout.setKeepScreenOn(paramParams.shouldKeepScreenOn);
      this.gradientView = ((LinearLayout)findViewById(R.id.gradient_view));
      return;
    }
  }

  private void cancelTransitions()
  {
    this.handler.removeMessages(0);
    this.handler.removeMessages(1);
  }

  private void checkIsShowing()
  {
    if (!isShowing())
      throw new IllegalStateException("Method not available when the dialog is not showing.");
  }

  private ImageView getIcon()
  {
    return (ImageView)findViewById(R.id.icon);
  }

  private TextView getLabel()
  {
    return (TextView)findViewById(R.id.label);
  }

  private TextView getSecondaryLabel()
  {
    return (TextView)findViewById(R.id.secondary_label);
  }

  private SliderView getSlider()
  {
    return (SliderView)findViewById(R.id.slider);
  }

  private static int getThemeId(boolean paramBoolean)
  {
    if (paramBoolean)
      return R.style.ContextualDialogTheme;
    return R.style.ContextualDialogTheme_NoAnimation;
  }

  private boolean hasSlider()
  {
    return getSlider() != null;
  }

  private void setContent(CharSequence paramCharSequence1, CharSequence paramCharSequence2, Drawable paramDrawable)
  {
    TextView localTextView1 = getLabel();
    TextView localTextView2 = getSecondaryLabel();
    ImageView localImageView = getIcon();
    if (paramCharSequence1 != null)
    {
      localTextView1.setText(paramCharSequence1);
      localTextView1.setVisibility(0);
      if (localTextView2 != null)
      {
        if (paramCharSequence2 == null)
          break label123;
        if (this.params.background == null)
          break label112;
        this.gradientView.setBackgroundDrawable(getContext().getResources().getDrawable(R.drawable.overlay_medium));
        label73: localTextView2.setText(paramCharSequence2);
        localTextView2.setVisibility(0);
      }
    }
    while (true)
    {
      if (paramDrawable == null)
        break label132;
      localImageView.setImageDrawable(paramDrawable);
      localImageView.setVisibility(0);
      return;
      localTextView1.setVisibility(8);
      break;
      label112: this.gradientView.setBackgroundDrawable(null);
      break label73;
      label123: localTextView2.setVisibility(4);
    }
    label132: localImageView.setVisibility(8);
  }

  private void showNormalContent()
  {
    this.temporaryContentShowing = false;
    if (this.params.sound != null)
      this.params.soundManager.playSound(this.params.sound);
    setContent(this.params.message, this.params.secondaryMessage, this.params.icon);
    if (hasSlider())
    {
      if (this.params.shouldShowProgress)
      {
        getSlider().setVisibility(0);
        getSlider().startIndeterminate();
      }
    }
    else if (this.params.shouldAutoHide)
      if (!this.params.isExpanded)
        break label144;
    label144: for (long l = 2000L; ; l = 1000L)
    {
      this.handler.sendMessageDelayed(Message.obtain(this.handler, 0), l);
      return;
      getSlider().setVisibility(8);
      break;
    }
  }

  private void showTemporaryContent()
  {
    this.temporaryContentShowing = true;
    setContent(this.params.temporaryMessage, this.params.temporarySecondaryMessage, this.params.temporaryIcon);
    if (hasSlider())
    {
      getSlider().setVisibility(0);
      getSlider().startProgress(this.params.temporaryMessageDuration);
    }
    if (!this.handler.hasMessages(1))
      this.handler.sendMessageDelayed(Message.obtain(this.handler, 1), this.params.temporaryMessageDuration);
  }

  public void autoHide()
  {
    checkIsShowing();
    this.handler.sendMessageDelayed(Message.obtain(this.handler, 0), 1000L);
  }

  public void cancel()
  {
    this.params.soundManager.playSound(SoundManager.SoundId.DISMISS);
    cancelTransitions();
    this.handler.sendMessage(Message.obtain(this.handler, 2));
    super.dismiss();
  }

  public void clearAutoHide()
  {
    checkIsShowing();
    this.handler.removeMessages(0);
  }

  public void dismiss()
  {
    cancelTransitions();
    this.handler.sendMessage(Message.obtain(this.handler, 2));
    super.dismiss();
  }

  public void done()
  {
    this.temporaryContentShowing = false;
    dismiss();
  }

  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public boolean onConfirm()
  {
    if (this.params.shouldHandleConfirm)
    {
      if ((!this.handler.hasMessages(1)) && (!TextUtils.isEmpty(this.params.temporaryMessage)))
        logger.d("Temporary message has completed, onDone will be called to listener, do not send onConfirm.", new Object[0]);
      do
      {
        return true;
        cancelTransitions();
      }
      while ((this.params.listener == null) || (!this.params.listener.onConfirmed()));
      super.dismiss();
      return true;
    }
    if (this.handler.hasMessages(1))
    {
      this.handler.removeMessages(1);
      this.handler.sendMessage(Message.obtain(this.handler, 1));
    }
    return false;
  }

  public void onDetachedFromWindow()
  {
    cancelTransitions();
    super.onDetachedFromWindow();
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return false;
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return false;
  }

  @VisibleForTesting
  void onScreenOff()
  {
    if (isShowing())
    {
      logger.d("Cancelling for screen off event.", new Object[0]);
      cancel();
    }
  }

  protected void onStart()
  {
    super.onStart();
    setCancelable(this.params.isDismissable);
    ImageView localImageView = (ImageView)this.dialogLayout.findViewById(R.id.background_image);
    localImageView.setBackgroundDrawable(this.params.background);
    int i;
    if (this.params.background == null)
    {
      i = 8;
      localImageView.setVisibility(i);
      if ((!this.params.hasTemporaryContent()) || (this.params.isExpanded))
        break label110;
      showTemporaryContent();
    }
    while (true)
    {
      this.screenOffReceiver.register(getContext(), new String[] { "android.intent.action.SCREEN_OFF" });
      return;
      i = 0;
      break;
      label110: showNormalContent();
    }
  }

  protected void onStop()
  {
    this.screenOffReceiver.unregister(getContext());
    super.onStop();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    return false;
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    return false;
  }

  public void restartCountdown()
  {
    showTemporaryContent();
  }

  public void setDismissable(boolean paramBoolean)
  {
    setCancelable(paramBoolean);
  }

  public void setListener(Listener paramListener)
  {
    Params.access$202(this.params, paramListener);
  }

  public void stopCountdown()
  {
    this.handler.removeMessages(1);
    getSlider().stopProgress();
  }

  public void updateContent(int paramInt1, int paramInt2)
  {
    checkIsShowing();
    updateContent(getContext().getResources().getString(paramInt1), paramInt2);
  }

  public void updateContent(CharSequence paramCharSequence, int paramInt)
  {
    checkIsShowing();
    setContent(paramCharSequence, null, getContext().getResources().getDrawable(paramInt));
  }

  public static final class Builder
  {
    private final Context context;
    private MessageDialog.Params params;

    public Builder(Context paramContext, SoundManager paramSoundManager)
    {
      this.context = paramContext;
      reset();
      MessageDialog.Params.access$1502(this.params, paramSoundManager);
    }

    private void reset()
    {
      this.params = new MessageDialog.Params(null);
      MessageDialog.Params.access$2002(this.params, true);
      MessageDialog.Params.access$2102(this.params, false);
      MessageDialog.Params.access$502(this.params, true);
      MessageDialog.Params.access$802(this.params, true);
    }

    public MessageDialog build()
    {
      MessageDialog.Params localParams = this.params;
      reset();
      return new MessageDialog(this.context, localParams, null);
    }

    public Builder setAnimated(boolean paramBoolean)
    {
      MessageDialog.Params.access$502(this.params, paramBoolean);
      return this;
    }

    public Builder setAutoHide(boolean paramBoolean)
    {
      MessageDialog.Params.access$2002(this.params, paramBoolean);
      return this;
    }

    public Builder setBackground(Drawable paramDrawable)
    {
      MessageDialog.Params.access$902(this.params, paramDrawable);
      return this;
    }

    public Builder setDismissable(boolean paramBoolean)
    {
      MessageDialog.Params.access$802(this.params, paramBoolean);
      return this;
    }

    public Builder setExpanded(boolean paramBoolean)
    {
      MessageDialog.Params.access$602(this.params, paramBoolean);
      return this;
    }

    public Builder setHandleConfirm(boolean paramBoolean)
    {
      MessageDialog.Params.access$2102(this.params, paramBoolean);
      return this;
    }

    public Builder setIcon(int paramInt)
    {
      return setIcon(this.context.getResources().getDrawable(paramInt));
    }

    public Builder setIcon(Drawable paramDrawable)
    {
      MessageDialog.Params.access$1802(this.params, paramDrawable);
      return this;
    }

    public Builder setKeepScreenOn(boolean paramBoolean)
    {
      MessageDialog.Params.access$702(this.params, paramBoolean);
      return this;
    }

    public Builder setListener(MessageDialog.Listener paramListener)
    {
      MessageDialog.Params.access$202(this.params, paramListener);
      return this;
    }

    public Builder setMessage(int paramInt)
    {
      return setMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$1602(this.params, paramCharSequence);
      return this;
    }

    public Builder setSecondaryMessage(int paramInt)
    {
      return setSecondaryMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setSecondaryMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$1702(this.params, paramCharSequence);
      return this;
    }

    public Builder setShowProgress(boolean paramBoolean)
    {
      MessageDialog.Params.access$1902(this.params, paramBoolean);
      return this;
    }

    public Builder setSound(SoundManager.SoundId paramSoundId)
    {
      MessageDialog.Params.access$1402(this.params, paramSoundId);
      return this;
    }

    public Builder setTemporaryIcon(int paramInt)
    {
      return setTemporaryIcon(this.context.getResources().getDrawable(paramInt));
    }

    public Builder setTemporaryIcon(Drawable paramDrawable)
    {
      MessageDialog.Params.access$1202(this.params, paramDrawable);
      return this;
    }

    public Builder setTemporaryMessage(int paramInt)
    {
      return setTemporaryMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setTemporaryMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$1002(this.params, paramCharSequence);
      return this;
    }

    public Builder setTemporaryMessageDuration(long paramLong)
    {
      MessageDialog.Params.access$1302(this.params, paramLong);
      MessageDialog.Params.access$2302(this.params, true);
      return this;
    }

    public Builder setTemporarySecondaryMessage(int paramInt)
    {
      return setTemporarySecondaryMessage(this.context.getResources().getText(paramInt));
    }

    public Builder setTemporarySecondaryMessage(CharSequence paramCharSequence)
    {
      MessageDialog.Params.access$1102(this.params, paramCharSequence);
      return this;
    }
  }

  public static abstract interface Listener
  {
    public abstract boolean onConfirmed();

    public abstract void onDismissed();

    public abstract void onDone();

    public abstract void onDoneMessageShown();
  }

  private static class Params
  {
    private Drawable background;
    private Drawable icon;
    private boolean isDismissable;
    private boolean isExpanded;
    private MessageDialog.Listener listener;
    private CharSequence message;
    private CharSequence secondaryMessage;
    private boolean shouldAnimate;
    private boolean shouldAutoHide;
    private boolean shouldHandleConfirm;
    private boolean shouldKeepScreenOn;
    private boolean shouldShowProgress;
    private boolean shouldShowTemporaryContent = false;
    private SoundManager.SoundId sound;
    private SoundManager soundManager;
    private Drawable temporaryIcon;
    private CharSequence temporaryMessage;
    private long temporaryMessageDuration = 2000L;
    private CharSequence temporarySecondaryMessage;

    boolean hasTemporaryContent()
    {
      return (this.shouldShowTemporaryContent) || (this.temporaryMessage != null) || (this.temporaryIcon != null) || (this.temporarySecondaryMessage != null);
    }
  }

  public static class SimpleListener
    implements MessageDialog.Listener
  {
    public boolean onConfirmed()
    {
      return false;
    }

    public void onDismissed()
    {
    }

    public void onDone()
    {
    }

    public void onDoneMessageShown()
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.MessageDialog
 * JD-Core Version:    0.6.2
 */