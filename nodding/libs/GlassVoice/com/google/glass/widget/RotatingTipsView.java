package com.google.glass.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.glass.common.R.dimen;
import com.google.glass.predicates.Assert;
import java.util.ArrayList;
import java.util.List;

public class RotatingTipsView extends TipsView
{
  private static final long DEFAULT_MESSAGE_DURATION_MS = 4000L;
  private static final long INITIAL_DELAY_MS = 1000L;
  private static final long MESSAGE_DURATION_MS = 3000L;
  private static final int MSG_SHOW_DEFAULT_MESSAGE = 0;
  private static final int MSG_SHOW_INITIAL_MESSAGE = 2;
  private static final int MSG_SHOW_NEXT_MESSAGE = 1;
  private static final long SWAP_TEXT_ANIMATION_DURATION_MS = 200L;
  private final Animator.AnimatorListener animateOutListener = new AnimatorListenerAdapter()
  {
    public void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      RotatingTipsView.this.setText(RotatingTipsView.this.nextMessage);
      RotatingTipsView.this.setTextSize(0, RotatingTipsView.this.nextMessageSize);
      RotatingTipsView.this.setTypeface(RotatingTipsView.this.nextMessageTypeface);
      RotatingTipsView.this.animateIn();
    }
  };
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        RotatingTipsView.this.animateToDefaultMessage();
        sendEmptyMessageDelayed(1, 4000L);
        return;
      case 1:
        RotatingTipsView.this.animateToNextMessage();
        sendEmptyMessageDelayed(0, 3000L);
        return;
      case 2:
      }
      sendEmptyMessage(1);
    }
  };
  private int index;
  private List<String> messages = new ArrayList();
  private String nextMessage;
  private float nextMessageSize;
  private Typeface nextMessageTypeface;
  private boolean started;

  public RotatingTipsView(Context paramContext)
  {
    this(paramContext, null);
  }

  public RotatingTipsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RotatingTipsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void animateIn()
  {
    animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(200L).setListener(null);
  }

  private void animateOut()
  {
    animate().translationY(getContext().getResources().getDisplayMetrics().heightPixels).setInterpolator(new AccelerateInterpolator()).setDuration(200L).setListener(this.animateOutListener);
  }

  private void animateToDefaultMessage()
  {
    animateToText(getTip(), getTipTextSize(), getTipTypeface());
  }

  private void animateToNextMessage()
  {
    animateToText((String)this.messages.get(this.index), getMessageTextSize(), getMessageTypeface());
    this.index = (1 + this.index);
    if (this.index >= this.messages.size())
      this.index = 0;
  }

  private void animateToText(String paramString, float paramFloat, Typeface paramTypeface)
  {
    this.nextMessage = paramString;
    this.nextMessageSize = paramFloat;
    this.nextMessageTypeface = paramTypeface;
    animateOut();
  }

  private void clearHandlerMessages()
  {
    this.handler.removeMessages(2);
    this.handler.removeMessages(0);
    this.handler.removeMessages(1);
    this.started = false;
  }

  private void startIfReady()
  {
    if ((!this.messages.isEmpty()) && (isActivated()) && (!this.started))
    {
      this.handler.sendEmptyMessageDelayed(2, 1000L);
      this.started = true;
    }
  }

  private void stopIfDone()
  {
    if (this.messages.isEmpty())
    {
      clearHandlerMessages();
      clearAnimation();
      showTip();
    }
  }

  public void addMessage(int paramInt)
  {
    addMessage(getContext().getString(paramInt));
  }

  public void addMessage(String paramString)
  {
    if (!this.messages.contains(paramString))
    {
      this.messages.add(paramString);
      startIfReady();
    }
  }

  protected float getMessageTextSize()
  {
    return getContext().getResources().getDimension(R.dimen.small_text_size);
  }

  protected Typeface getMessageTypeface()
  {
    return RobotoTypefaces.getTypeface(getContext(), 2);
  }

  protected boolean isTipShown()
  {
    return getText().toString().contentEquals(getTip());
  }

  public void removeMessage(int paramInt)
  {
    removeMessage(getContext().getString(paramInt));
  }

  public void removeMessage(String paramString)
  {
    this.messages.remove(paramString);
    stopIfDone();
  }

  protected void showTip()
  {
    setText(getTip());
    setTextSize(0, getTipTextSize());
    setTypeface(getTipTypeface());
  }

  public void startRotating()
  {
    Assert.assertFalse(isActivated());
    setActivated(true);
    this.index = 0;
    showTip();
    startIfReady();
  }

  public void stopRotating()
  {
    Assert.assertTrue(isActivated());
    setActivated(false);
    clearHandlerMessages();
    clearAnimation();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.RotatingTipsView
 * JD-Core Version:    0.6.2
 */