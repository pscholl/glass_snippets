package com.google.glass.voice;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.SimpleAnimatorListener;
import com.google.glass.widget.TypophileTextView;

public class GuardHintAnimator
{
  private static final long GUARD_ANIMATION_DURATION_MS = 500L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final ImageView gradientView;
  private ViewPropertyAnimator gradientViewAnimator;
  private final TypophileTextView guardPhraseView;
  private ViewPropertyAnimator guardViewAnimator;

  @VisibleForTesting
  private AnimationState state = AnimationState.IDLE;

  public GuardHintAnimator(ImageView paramImageView, TypophileTextView paramTypophileTextView, Context paramContext)
  {
    this.context = paramContext;
    this.gradientView = paramImageView;
    this.guardPhraseView = paramTypophileTextView;
    Assert.assertNotNull("Gradient view is null", paramImageView);
    Assert.assertNotNull("Guard phrase view is null", paramTypophileTextView);
  }

  private void cancelAnimations()
  {
    if (this.guardViewAnimator != null)
      this.guardViewAnimator.cancel();
    if (this.gradientViewAnimator != null)
      this.gradientViewAnimator.cancel();
  }

  private void nullifyAnimators()
  {
    this.guardViewAnimator = null;
    this.gradientViewAnimator = null;
  }

  private void setGuardPhraseAndGradientVisibility(boolean paramBoolean)
  {
    FormattingLogger localFormattingLogger = logger;
    StringBuilder localStringBuilder = new StringBuilder().append("Setting guard phrase visibility to ");
    if (paramBoolean);
    for (String str = "VISIBLE"; ; str = "GONE")
    {
      localFormattingLogger.d(str, new Object[0]);
      if (!paramBoolean)
        break;
      this.guardPhraseView.setVisibility(0);
      this.gradientView.setVisibility(0);
      return;
    }
    this.guardPhraseView.setVisibility(8);
    this.gradientView.setVisibility(8);
  }

  private void setState(AnimationState paramAnimationState)
  {
    this.state = paramAnimationState;
  }

  public void animateIn()
  {
    Assert.isUiThread();
    if (this.state.equals(AnimationState.ANIMATING_OUT))
    {
      logger.d("Canceling an ongoing animate-out animation.", new Object[0]);
      cancelAnimations();
    }
    if ((this.guardPhraseView.getVisibility() == 0) || (this.state.equals(AnimationState.ANIMATING_IN)))
    {
      logger.d("Guard phrase is already visible or animate-in is already in progress", new Object[0]);
      return;
    }
    setState(AnimationState.ANIMATING_IN);
    logger.d("Animating in guard phrase.", new Object[0]);
    this.guardPhraseView.setTranslationY(this.context.getResources().getDisplayMetrics().heightPixels);
    this.gradientView.setAlpha(0.0F);
    setGuardPhraseAndGradientVisibility(true);
    this.guardViewAnimator = this.guardPhraseView.animate().translationY(0.0F).setDuration(500L);
    this.gradientViewAnimator = this.gradientView.animate().alpha(1.0F).setDuration(500L).setListener(new SimpleAnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        GuardHintAnimator.this.nullifyAnimators();
        GuardHintAnimator.this.setState(GuardHintAnimator.AnimationState.IDLE);
      }

      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        GuardHintAnimator.this.nullifyAnimators();
        GuardHintAnimator.this.setState(GuardHintAnimator.AnimationState.IDLE);
      }
    });
  }

  public void animateOut()
  {
    Assert.isUiThread();
    if (this.state.equals(AnimationState.ANIMATING_IN))
    {
      logger.d("Canceling an ongoing animate-in animation.", new Object[0]);
      cancelAnimations();
    }
    if ((this.guardPhraseView.getVisibility() != 0) || (this.state.equals(AnimationState.ANIMATING_OUT)))
    {
      logger.d("Guard phrase is already gone or animate-out is already in progress.", new Object[0]);
      return;
    }
    if (Assert.isTest())
    {
      setGuardPhraseAndGradientVisibility(false);
      return;
    }
    this.state = AnimationState.ANIMATING_OUT;
    logger.d("Animating out guard phrase.", new Object[0]);
    this.guardPhraseView.setTranslationY(0.0F);
    this.gradientView.setAlpha(1.0F);
    this.guardViewAnimator = this.guardPhraseView.animate().translationY(this.context.getResources().getDisplayMetrics().heightPixels).setDuration(500L);
    this.gradientViewAnimator = this.gradientView.animate().alpha(0.0F).setDuration(500L).setListener(new SimpleAnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        GuardHintAnimator.this.nullifyAnimators();
        GuardHintAnimator.this.setState(GuardHintAnimator.AnimationState.IDLE);
      }

      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        GuardHintAnimator.this.nullifyAnimators();
        GuardHintAnimator.this.setGuardPhraseAndGradientVisibility(false);
        GuardHintAnimator.this.setState(GuardHintAnimator.AnimationState.IDLE);
      }
    });
  }

  private static enum AnimationState
  {
    static
    {
      ANIMATING_IN = new AnimationState("ANIMATING_IN", 1);
      ANIMATING_OUT = new AnimationState("ANIMATING_OUT", 2);
      AnimationState[] arrayOfAnimationState = new AnimationState[3];
      arrayOfAnimationState[0] = IDLE;
      arrayOfAnimationState[1] = ANIMATING_IN;
      arrayOfAnimationState[2] = ANIMATING_OUT;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.GuardHintAnimator
 * JD-Core Version:    0.6.2
 */