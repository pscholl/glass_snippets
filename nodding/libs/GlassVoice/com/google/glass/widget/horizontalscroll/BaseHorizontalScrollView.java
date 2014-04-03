package com.google.glass.widget.horizontalscroll;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassApplication;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.input.InputListener;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.ItemScroller;
import com.google.glass.input.ItemScroller.Scrollable;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineActivityHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

@Deprecated
public abstract class BaseHorizontalScrollView<ItemID, ItemValue> extends AdapterView<Adapter>
  implements InputListener
{
  private static final float ANIMATION_MIN_ZOOM_OUT = 0.5F;
  private static final long ANIMATION_SCROLL_INITIAL_DELAY = 100L;
  private static final long ANIMATION_ZOOM_BACK_IN_DURATION_MS = 0L;
  private static final long ANIMATION_ZOOM_OUT_DURATION = 0L;
  private static final float ANIMATION_ZOOM_OUT_MS_PER_ITEM = 0.25F;
  private static final boolean HILARIOUSLY_SLOW_SPLICE_ANIMATION = false;
  private static final int MAX_CARD_SPACING_PX = 10;
  private static final int MIN_CARD_SPACING_PX = 2;
  private static final int NUM_VIEWS_TO_LOAD = 5;
  private static final int SCREEN_HEIGHT = 360;
  private static final int SCREEN_WIDTH = 640;
  private static final long SLOW_ANIMATION_MULTIPLIER = 5L;
  private static final int VIEW_INDEX_CARD = 0;
  private static final int VIEW_INDEX_SHEEN = 1;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Adapter adapter;
  private BaseHorizontalScrollView<ItemID, ItemValue>.AnimateToItemRequest animateToItemRequest = null;
  private int calculatedCardSpacing = -1;
  private float calculatedCardSpacingScale = -1.0F;
  private final List<ImageView> cardSheenCache = new ArrayList();
  private float currentScale = 1.0F;
  private int currentTranslation;
  private boolean dataChangePending;
  private DataSetObserver datasetObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      BaseHorizontalScrollView.this.updateViews(true);
    }

    public void onInvalidated()
    {
      BaseHorizontalScrollView.this.updateViews(true);
    }
  };
  private final ValueAnimator.AnimatorUpdateListener endAnimationFrameUpdateListener = new ValueAnimator.AnimatorUpdateListener()
  {
    public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
    {
      BaseHorizontalScrollView.access$202(BaseHorizontalScrollView.this, false);
      BaseHorizontalScrollView.this.updateViews(false);
      BaseHorizontalScrollView.this.translateAndScaleChildren();
    }
  };
  private final Runnable focusSoundRunnable = new Runnable()
  {
    public void run()
    {
      BaseHorizontalScrollView.this.soundManager.playSound(SoundManager.SoundId.FOCUS);
    }
  };
  private final List<FrameLayout> frameLayoutCache = new ArrayList();
  private boolean inAnimationFrame = false;
  private boolean isActivated;
  private boolean isAnimatingInView = false;
  private final ItemScroller itemScroller;
  private final SparseBooleanArray loadedPositions = new SparseBooleanArray();
  private final PositionListenerCollection positionListeners = new PositionListenerCollection(null);
  private float scrollVelocity = 0.0F;
  private final ItemScroller.Scrollable scrollable;
  private float scrollerPosition = this.selectedPosition;
  private double scrollerPositionUpdateTime = 0.0D;
  private int selectedPosition;
  private int selectedViewIndex;
  private final Drawable sheenDrawable;
  private final boolean shouldShowCardSheen;
  private final SoundManager soundManager;
  private final ValueAnimator.AnimatorUpdateListener startAnimationFrameUpdateListener = new ValueAnimator.AnimatorUpdateListener()
  {
    public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
    {
      BaseHorizontalScrollView.access$202(BaseHorizontalScrollView.this, true);
    }
  };
  private boolean suppressViewUpdates;

  static
  {
    ANIMATION_ZOOM_OUT_DURATION = getSpliceAnimationDuration(1100L);
  }

  public BaseHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.soundManager = GlassApplication.from(paramContext).getSoundManager();
    this.shouldShowCardSheen = paramBoolean;
    this.sheenDrawable = paramContext.getResources().getDrawable(R.drawable.card_sheen);
    this.scrollable = new ItemScroller.Scrollable()
    {
      public float getItem()
      {
        return BaseHorizontalScrollView.this.scrollerPosition;
      }

      public int getNumberOfItems()
      {
        if (!BaseHorizontalScrollView.this.hasData())
          return 0;
        return BaseHorizontalScrollView.this.getItemCount();
      }

      public float getScale()
      {
        return BaseHorizontalScrollView.this.currentScale;
      }

      public void setItem(float paramAnonymousFloat)
      {
        Assert.assertUiThread();
        if (!BaseHorizontalScrollView.this.isActivated)
        {
          FormattingLogger localFormattingLogger3 = BaseHorizontalScrollView.logger;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Float.valueOf(paramAnonymousFloat);
          localFormattingLogger3.w("setItem(%s) while deactivated.", arrayOfObject3);
        }
        label457: label475: 
        while (true)
        {
          return;
          if (BaseHorizontalScrollView.this.suppressViewUpdates)
          {
            FormattingLogger localFormattingLogger2 = BaseHorizontalScrollView.logger;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Float.valueOf(paramAnonymousFloat);
            localFormattingLogger2.w("setItem(%s) while suppressing view updates.", arrayOfObject2);
            return;
          }
          float f = BaseHorizontalScrollView.this.scrollerPosition;
          double d1 = BaseHorizontalScrollView.this.scrollerPositionUpdateTime;
          boolean bool = BaseHorizontalScrollView.this.isSettled();
          double d2 = System.nanoTime() / 1000000000.0D;
          BaseHorizontalScrollView.access$402(BaseHorizontalScrollView.this, paramAnonymousFloat);
          BaseHorizontalScrollView.access$802(BaseHorizontalScrollView.this, d2);
          if ((d1 > 0.0D) && (d2 > d1))
            BaseHorizontalScrollView.access$902(BaseHorizontalScrollView.this, (float)((BaseHorizontalScrollView.this.scrollerPosition - f) / (d2 - d1)));
          int i = Math.round(BaseHorizontalScrollView.this.scrollerPosition);
          int k;
          if (BaseHorizontalScrollView.this.hasData())
          {
            k = BaseHorizontalScrollView.this.getItemCount();
            if ((i < 0) || (i >= k))
            {
              FormattingLogger localFormattingLogger1 = BaseHorizontalScrollView.logger;
              Object[] arrayOfObject1 = new Object[3];
              arrayOfObject1[0] = Integer.valueOf(k);
              arrayOfObject1[1] = Float.valueOf(paramAnonymousFloat);
              arrayOfObject1[2] = Integer.valueOf(i);
              localFormattingLogger1.w("Invalid position reported from item scroller; item count: %s; reported position: %s (rounded to %s)", arrayOfObject1);
              if (i < 0)
                i = 0;
            }
            else
            {
              int j = (int)(640.0F * (i - BaseHorizontalScrollView.this.scrollerPosition));
              if (BaseHorizontalScrollView.this.selectedPosition != i)
              {
                BaseHorizontalScrollView.this.internalSetSelectedPosition(i, true);
                if (!BaseHorizontalScrollView.this.inAnimationFrame)
                {
                  Assert.assertTrue(BaseHorizontalScrollView.this.updateViewsInternal(false));
                  if (bool)
                    BaseHorizontalScrollView.this.onSettledInternal();
                }
              }
              if (BaseHorizontalScrollView.this.currentTranslation != j)
                BaseHorizontalScrollView.this.setTranslationAndScale(j, BaseHorizontalScrollView.this.currentScale);
              if (!bool)
                break label457;
              if (!BaseHorizontalScrollView.this.isSettled())
                BaseHorizontalScrollView.this.onUnsettledInternal();
            }
          }
          while (true)
          {
            if ((BaseHorizontalScrollView.this.positionListeners == null) || (BaseHorizontalScrollView.this.scrollerPosition == f))
              break label475;
            BaseHorizontalScrollView.this.positionListeners.onScrollPositionChanged(BaseHorizontalScrollView.this.scrollerPosition);
            return;
            i = k - 1;
            break;
            if (i == 0)
              break;
            i = 0;
            break;
            if (BaseHorizontalScrollView.this.isSettled())
              BaseHorizontalScrollView.this.onSettledInternal();
          }
        }
      }

      public void setScale(float paramAnonymousFloat)
      {
        Assert.assertUiThread();
        if (!BaseHorizontalScrollView.this.isActivated)
        {
          FormattingLogger localFormattingLogger = BaseHorizontalScrollView.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Float.valueOf(paramAnonymousFloat);
          localFormattingLogger.w("setScale(%s) while deactivated.", arrayOfObject);
        }
        while (true)
        {
          return;
          if (BaseHorizontalScrollView.this.currentScale != paramAnonymousFloat)
          {
            boolean bool = BaseHorizontalScrollView.this.isSettled();
            BaseHorizontalScrollView.this.setTranslationAndScale(BaseHorizontalScrollView.this.currentTranslation, paramAnonymousFloat);
            if (bool)
              if (!BaseHorizontalScrollView.this.isSettled())
                BaseHorizontalScrollView.this.onUnsettledInternal();
            while (BaseHorizontalScrollView.this.positionListeners != null)
            {
              BaseHorizontalScrollView.this.positionListeners.onScaleChanged(paramAnonymousFloat);
              return;
              if (BaseHorizontalScrollView.this.isSettled())
                BaseHorizontalScrollView.this.onSettledInternal();
            }
          }
        }
      }
    };
    this.itemScroller = new ItemScroller(this.scrollable);
  }

  public BaseHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    this(paramContext, paramAttributeSet, 0, paramBoolean);
  }

  public BaseHorizontalScrollView(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, null, 0, paramBoolean);
  }

  private void addChildView(int paramInt)
  {
    int i = 0;
    int j = getChildCount();
    if (i < j)
      if (paramInt != ((Integer)getCard(i).getTag(R.id.tag_horizontal_scroll_item_position)).intValue());
    label106: View localView1;
    do
    {
      return;
      i++;
      break;
      int k = 0;
      int m = getChildCount();
      while (true)
      {
        if (k >= m)
          break label106;
        if (((Integer)getCard(k).getTag(R.id.tag_horizontal_scroll_item_position)).intValue() > paramInt)
        {
          View localView2 = loadView(paramInt, null);
          if (localView2 == null)
            break;
          constructFrame(k, localView2);
          return;
        }
        k++;
      }
      localView1 = loadView(paramInt, null);
    }
    while (localView1 == null);
    constructFrame(-1, localView1);
  }

  private void addScaleAnimation(ValueAnimator paramValueAnimator, final float paramFloat1, float paramFloat2)
  {
    paramValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        Float localFloat = (Float)paramAnonymousValueAnimator.getAnimatedValue();
        BaseHorizontalScrollView.this.scrollable.setScale(paramFloat1 + localFloat.floatValue() * this.val$diff);
      }
    });
  }

  private static void addTagAnimator(ValueAnimator paramValueAnimator, View paramView, final int paramInt, final float paramFloat1, float paramFloat2)
  {
    paramValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        Float localFloat = (Float)paramAnonymousValueAnimator.getAnimatedValue();
        this.val$view.setTag(paramInt, Float.valueOf(paramFloat1 + localFloat.floatValue() * this.val$totalChange));
      }
    });
  }

  private void addTranslateAnimation(ValueAnimator paramValueAnimator, final float paramFloat1, float paramFloat2)
  {
    paramValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        Float localFloat = (Float)paramAnonymousValueAnimator.getAnimatedValue();
        BaseHorizontalScrollView.this.scrollable.setItem(paramFloat1 + localFloat.floatValue() * this.val$diff);
      }
    });
  }

  private void animateTo(final int paramInt)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setDuration(ANIMATION_ZOOM_OUT_DURATION);
    localValueAnimator.setStartDelay(100L);
    localValueAnimator.setInterpolator(EaseInOutQuartInterpolator.instance);
    localValueAnimator.addUpdateListener(this.startAnimationFrameUpdateListener);
    addTranslateAnimation(localValueAnimator, this.scrollerPosition, paramInt - 0.5F);
    float f = Math.max(0.33F, Math.min(0.5F, 1.0F - 0.25F * Math.abs(paramInt - this.scrollerPosition)));
    addScaleAnimation(localValueAnimator, this.currentScale, f);
    localValueAnimator.addUpdateListener(this.endAnimationFrameUpdateListener);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BaseHorizontalScrollView.this.startZoomBackInAnimation(paramInt);
      }
    });
    this.isAnimatingInView = true;
    localValueAnimator.start();
  }

  private float calculateAbsoluteLeft(float paramFloat)
  {
    return paramFloat + 320.0F * (1.0F - this.currentScale);
  }

  private int calculateCardSpacingPx()
  {
    if (this.currentScale == this.calculatedCardSpacingScale)
      return this.calculatedCardSpacing;
    this.calculatedCardSpacing = ((int)Math.max(2.0F, 10.0F * getZoomOutFactor()));
    this.calculatedCardSpacingScale = this.currentScale;
    return this.calculatedCardSpacing;
  }

  private float calculateRelativeLeft(View paramView, int paramInt1, int paramInt2)
  {
    float f1 = 640.0F * this.currentScale;
    float f2 = (f1 + paramInt2) * (this.scrollerPosition - Math.round(this.scrollerPosition));
    float f3 = (paramInt1 - this.selectedViewIndex) * (f1 + paramInt2) - f2;
    Float localFloat = (Float)paramView.getTag(R.id.tag_horizontal_scroll_item_animate_translate_x_offset);
    if (localFloat != null)
      f3 += localFloat.floatValue() * (f1 + paramInt2);
    return f3;
  }

  private void constructFrame(int paramInt, View paramView)
  {
    FrameLayout localFrameLayout = createFrame();
    localFrameLayout.addView(paramView);
    ImageView localImageView = createCardSheen();
    localFrameLayout.addView(localImageView);
    localImageView.setVisibility(8);
    paramView.setTag(R.id.tag_horizontal_scroll_card_sheen, localImageView);
    addViewInLayout(localFrameLayout, paramInt, getDefaultLayoutParams(), true);
    getStateManager(paramView).onLoad();
  }

  private ImageView createCardSheen()
  {
    if (this.cardSheenCache.isEmpty());
    for (ImageView localImageView = new ImageView(getContext()); ; localImageView = (ImageView)this.cardSheenCache.remove(-1 + this.cardSheenCache.size()))
    {
      localImageView.setImageDrawable(this.sheenDrawable);
      return localImageView;
    }
  }

  private FrameLayout createFrame()
  {
    if (this.frameLayoutCache.isEmpty())
      return new FrameLayout(getContext());
    return (FrameLayout)this.frameLayoutCache.remove(-1 + this.frameLayoutCache.size());
  }

  private ImageView getCardSheen(int paramInt)
  {
    return (ImageView)((ViewGroup)getChildAt(paramInt)).getChildAt(1);
  }

  private static FrameLayout.LayoutParams getDefaultLayoutParams()
  {
    return new FrameLayout.LayoutParams(-1, -1);
  }

  private int getItemCount()
  {
    if (this.adapter == null)
      return 0;
    return this.adapter.getCount();
  }

  private int getNumViewsToLoadInternal()
  {
    return Math.max(0, getNumViewsToLoad());
  }

  private static long getSpliceAnimationDuration(long paramLong)
  {
    return paramLong;
  }

  private CardStateManager getStateManager(View paramView)
  {
    return (CardStateManager)paramView.getTag(R.id.tag_card_state_manager);
  }

  private boolean hasData()
  {
    return (this.adapter != null) && (!this.adapter.isEmpty());
  }

  private void internalSetSelectedPosition(int paramInt, boolean paramBoolean)
  {
    if (paramInt != this.selectedPosition)
    {
      this.selectedPosition = paramInt;
      if ((paramBoolean) && (!this.isAnimatingInView))
        AsyncThreadExecutorManager.getThreadPoolExecutor().execute(this.focusSoundRunnable);
      onFocused(this.selectedPosition);
      if (this.positionListeners != null)
        this.positionListeners.onFocused(this.selectedPosition);
    }
  }

  private View loadView(int paramInt, View paramView)
  {
    View localView = null;
    if (paramInt >= 0)
    {
      int i = getItemCount();
      localView = null;
      if (paramInt < i)
      {
        localView = getViewForPosition(paramInt, paramView);
        Assert.assertNotNull(localView);
        if ((localView != paramView) && (localView.getParent() != null))
          throw new IllegalStateException(localView + " from adapter " + getAdapter() + " already has a parent: " + localView.getParent() + ", convertView: " + paramView);
        if (localView.getTag(R.id.tag_horizontal_scroll_item_view_recycler) == null)
          throw new IllegalStateException("Recycler must be set, position: " + paramInt);
        if (localView.getTag(R.id.tag_card_state_manager) == null)
          localView.setTag(R.id.tag_card_state_manager, new CardStateManager(localView));
        localView.setTag(R.id.tag_horizontal_scroll_item_position, Integer.valueOf(paramInt));
      }
    }
    return localView;
  }

  private void onSettledInternal()
  {
    if (getChildCount() > 0)
      getStateManager(getSelectedView()).onSettled();
    onSettled();
    resetScrollVelocity();
    if (this.positionListeners != null)
      this.positionListeners.onSettled(this.selectedPosition);
  }

  private void onUnsettledInternal()
  {
    if (getChildCount() > 0)
      getStateManager(getSelectedView()).onUnsettled();
    onUnsettled();
    if (this.positionListeners != null)
      this.positionListeners.onUnsettled(this.selectedPosition);
  }

  private void removeChildView(int paramInt)
  {
    if (paramInt == this.selectedViewIndex)
    {
      getStateManager(getSelectedView()).onUnfocus();
      this.selectedViewIndex = -1;
    }
    while (true)
    {
      View localView = getCard(paramInt);
      ImageView localImageView = getCardSheen(paramInt);
      FrameLayout localFrameLayout = (FrameLayout)getChildAt(paramInt);
      localFrameLayout.removeAllViews();
      removeViewInLayout(localFrameLayout);
      unloadView(localView);
      localView.setTag(R.id.tag_horizontal_scroll_card_sheen, null);
      localFrameLayout.setTag(R.id.tag_horizontal_scroll_item_position, null);
      localFrameLayout.setTag(R.id.tag_horizontal_scroll_item_id, null);
      localFrameLayout.setTag(R.id.tag_horizontal_scroll_item_animate_in_view, null);
      localFrameLayout.setTag(R.id.tag_horizontal_scroll_item_animate_scale, null);
      localFrameLayout.setTag(R.id.tag_horizontal_scroll_item_animate_translate_x_offset, null);
      this.frameLayoutCache.add(localFrameLayout);
      this.cardSheenCache.add(localImageView);
      return;
      if (paramInt < this.selectedViewIndex)
        this.selectedViewIndex = (-1 + this.selectedViewIndex);
    }
  }

  private void resetScrollVelocity()
  {
    this.scrollVelocity = 0.0F;
    this.scrollerPositionUpdateTime = 0.0D;
  }

  private void setTranslationAndScale(int paramInt, float paramFloat)
  {
    this.currentTranslation = paramInt;
    this.currentScale = paramFloat;
    if (this.inAnimationFrame)
      return;
    invalidate();
    translateAndScaleChildren();
  }

  private boolean sortCards()
  {
    int i = getChildCount();
    if (i > 0)
    {
      bool = false;
      int j = 2147483647;
      for (int k = 0; k < i; k++)
        j = Math.min(j, ((Integer)getCard(k).getTag(R.id.tag_horizontal_scroll_item_position)).intValue());
      for (int m = 0; m < i; m++)
        while (((Integer)getCard(m).getTag(R.id.tag_horizontal_scroll_item_position)).intValue() != j + m)
        {
          getChildAt(m).bringToFront();
          bool = true;
        }
    }
    boolean bool = false;
    return bool;
  }

  private void startZoomBackInAnimation(int paramInt)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setDuration(ANIMATION_ZOOM_BACK_IN_DURATION_MS);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if ((BaseHorizontalScrollView.this.animateToItemRequest != null) && (BaseHorizontalScrollView.AnimateToItemRequest.access$2300(BaseHorizontalScrollView.this.animateToItemRequest) != null))
          BaseHorizontalScrollView.AnimateToItemRequest.access$2300(BaseHorizontalScrollView.this.animateToItemRequest).setTag(R.id.tag_horizontal_scroll_item_animate_in_view, null);
        for (int i = 0; i < BaseHorizontalScrollView.this.getChildCount(); i++)
        {
          View localView = BaseHorizontalScrollView.this.getChildAt(i);
          localView.setTag(R.id.tag_horizontal_scroll_item_animate_translate_x_offset, null);
          localView.setTag(R.id.tag_horizontal_scroll_item_animate_scale, null);
        }
        BaseHorizontalScrollView.access$2202(BaseHorizontalScrollView.this, null);
        BaseHorizontalScrollView.access$2402(BaseHorizontalScrollView.this, false);
        BaseHorizontalScrollView.this.updateViews(false);
        BaseHorizontalScrollView.this.translateAndScaleChildren();
      }
    });
    localValueAnimator.addUpdateListener(this.startAnimationFrameUpdateListener);
    addScaleAnimation(localValueAnimator, this.currentScale, 1.0F);
    addTranslateAnimation(localValueAnimator, this.scrollerPosition, paramInt);
    if (this.animateToItemRequest != null)
    {
      if (this.animateToItemRequest.bindedViewForItem != null)
      {
        final View localView = this.animateToItemRequest.bindedViewForItem;
        localView.setTag(R.id.tag_horizontal_scroll_item_animate_scale, Float.valueOf(0.0F));
        localView.setScaleX(0.0F);
        localView.setScaleY(0.0F);
        localView.setVisibility(0);
        localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            Float localFloat = (Float)paramAnonymousValueAnimator.getAnimatedValue();
            float f1 = 640.0F * BaseHorizontalScrollView.this.currentScale;
            float f2 = BaseHorizontalScrollView.this.calculateCardSpacingPx();
            float f3 = localFloat.floatValue() * (f1 + f2) / localView.getWidth();
            localView.setTag(R.id.tag_horizontal_scroll_item_animate_scale, Float.valueOf(f3));
            localView.setTag(R.id.tag_horizontal_scroll_item_animate_translate_x_offset, Float.valueOf(BaseHorizontalScrollView.this.scrollerPosition - Math.round(BaseHorizontalScrollView.this.scrollerPosition)));
          }
        });
        for (int i = 1 + this.animateToItemRequest.viewPosition; i < getChildCount(); i++)
          addTagAnimator(localValueAnimator, getChildAt(i), R.id.tag_horizontal_scroll_item_animate_translate_x_offset, 0.0F, 1.0F);
      }
      logger.d("Never found the view to animate in.  Just zooming in now", new Object[0]);
    }
    localValueAnimator.addUpdateListener(this.endAnimationFrameUpdateListener);
    localValueAnimator.setInterpolator(EaseInOutQuartInterpolator.instance);
    localValueAnimator.start();
  }

  private void translateAndScaleChild(View paramView, int paramInt1, int paramInt2)
  {
    float f1 = calculateRelativeLeft(paramView, paramInt1, paramInt2);
    float f2 = calculateAbsoluteLeft(f1);
    if ((f2 > 640.0F) || (f2 < -(640.0F * this.currentScale)))
      paramView.setVisibility(4);
    ImageView localImageView;
    while (true)
    {
      if (this.shouldShowCardSheen)
      {
        localImageView = getCardSheen(paramInt1);
        if (this.currentScale >= 1.0F)
          break;
        localImageView.setVisibility(0);
        localImageView.setAlpha(getZoomOutFactor());
      }
      return;
      if (!Boolean.TRUE.equals(paramView.getTag(R.id.tag_horizontal_scroll_item_animate_in_view)))
        paramView.setVisibility(0);
      paramView.setTranslationX(Math.round(f1));
      float f3 = this.currentScale;
      if (paramView.getTag(R.id.tag_horizontal_scroll_item_animate_scale) != null)
        f3 = ((Float)paramView.getTag(R.id.tag_horizontal_scroll_item_animate_scale)).floatValue();
      paramView.setScaleX(f3);
      paramView.setScaleY(f3);
    }
    localImageView.setVisibility(8);
  }

  private void translateAndScaleChildren()
  {
    int i = calculateCardSpacingPx();
    int j = 0;
    int k = 0;
    int m = getChildCount();
    while (k < m)
    {
      View localView = getChildAt(k);
      translateAndScaleChild(localView, j, i);
      if (localView.getTag(R.id.tag_horizontal_scroll_item_animate_in_view) != Boolean.TRUE)
        j++;
      k++;
    }
  }

  private void unloadView(View paramView)
  {
    getStateManager(paramView).onUnload();
    paramView.setTag(R.id.tag_card_state_manager, null);
    Integer localInteger = (Integer)paramView.getTag(R.id.tag_horizontal_scroll_item_position);
    Assert.assertNotNull(localInteger);
    if (localInteger.intValue() != -1);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      paramView.setTag(R.id.tag_horizontal_scroll_item_position, Integer.valueOf(-1));
      ((ViewRecycler)paramView.getTag(R.id.tag_horizontal_scroll_item_view_recycler)).recycleView(paramView);
      return;
    }
  }

  private void updateSelectedViewIndex()
  {
    this.selectedViewIndex = -1;
    int i = 0;
    int j = getChildCount();
    while (true)
    {
      if (i < j)
      {
        if (((Integer)getCard(i).getTag(R.id.tag_horizontal_scroll_item_position)).intValue() == this.selectedPosition)
          this.selectedViewIndex = i;
      }
      else
        return;
      i++;
    }
  }

  private boolean updateViewsInternal(boolean paramBoolean)
  {
    Assert.assertUiThread();
    if ((!this.isActivated) || (this.suppressViewUpdates) || (this.inAnimationFrame))
    {
      this.dataChangePending = (paramBoolean | this.dataChangePending);
      return false;
    }
    int i = getItemCount();
    boolean bool1 = paramBoolean | this.dataChangePending;
    this.dataChangePending = false;
    if (bool1)
    {
      int i4 = getChildCount();
      int i5 = 0;
      if (i4 > 0)
      {
        Object localObject2 = getSelectedItem();
        i5 = 0;
        if (localObject2 != null)
        {
          int i11 = findItemPosition(localObject2);
          if (i11 == -1)
            break label288;
          i5 = 1;
          if (i5 != 0)
          {
            Integer localInteger2 = (Integer)getSelectedView().getTag(R.id.tag_horizontal_scroll_item_position);
            if (i11 != localInteger2.intValue())
            {
              int i12 = i11 - localInteger2.intValue();
              internalSetSelectedPosition(i11, false);
              this.scrollerPosition += i12;
              resetScrollVelocity();
            }
          }
        }
      }
      if ((i5 == 0) && (this.selectedPosition >= i))
      {
        int i9 = Math.max(0, i - 1);
        int i10 = i9 - this.selectedPosition;
        internalSetSelectedPosition(i9, false);
        this.scrollerPosition += i10;
        resetScrollVelocity();
      }
      this.loadedPositions.clear();
      int i6 = -1 + getChildCount();
      label234: if (i6 >= 0)
      {
        View localView6 = getCard(i6);
        Object localObject1 = localView6.getTag(R.id.tag_horizontal_scroll_item);
        int i8;
        if (localObject1 != null)
        {
          i8 = findItemPosition(localObject1);
          if (i8 == -1)
            removeChildView(i6);
        }
        while (true)
        {
          i6--;
          break label234;
          i5 = 0;
          break;
          if (this.loadedPositions.get(i8))
          {
            removeChildView(i6);
          }
          else
          {
            this.loadedPositions.put(i8, true);
            localView6.setTag(R.id.tag_horizontal_scroll_item_position, Integer.valueOf(i8));
            continue;
            removeChildView(i6);
          }
        }
      }
      label288: for (int i7 = 0; i7 < getChildCount(); i7++)
      {
        View localView4 = getCard(i7);
        View localView5 = loadView(((Integer)localView4.getTag(R.id.tag_horizontal_scroll_item_position)).intValue(), localView4);
        if (localView4 != localView5)
        {
          ((ViewGroup)getChildAt(i7)).removeViewAt(0);
          if (i7 == this.selectedViewIndex)
          {
            getStateManager(localView4).onUnfocus();
            this.selectedViewIndex = -1;
          }
          unloadView(localView4);
          ((ViewGroup)getChildAt(i7)).addView(localView5, 0);
          getStateManager(localView5).onLoad();
        }
      }
    }
    View localView1 = getSelectedView();
    this.loadedPositions.clear();
    if (hasData())
    {
      int i1 = getNumViewsToLoadInternal();
      int i2 = this.selectedPosition - i1 / 2;
      for (int i3 = 0; i3 < i1; i3++)
      {
        this.loadedPositions.put(i2, true);
        addChildView(i2);
        i2++;
      }
    }
    updateSelectedViewIndex();
    boolean bool2;
    View localView2;
    int j;
    if ((getChildCount() == 0) || (i == 0) || (this.selectedViewIndex != -1))
    {
      bool2 = true;
      Assert.assertTrue(bool2);
      localView2 = getSelectedView();
      if (localView2 != localView1)
      {
        if (localView1 != null)
          getStateManager(localView1).onUnfocus();
        if (localView2 != null)
          getStateManager(localView2).onFocus();
      }
      j = -1 + getChildCount();
      label623: if (j < 0)
        break label705;
      Integer localInteger1 = (Integer)getCard(j).getTag(R.id.tag_horizontal_scroll_item_position);
      if (!this.loadedPositions.get(localInteger1.intValue()))
        if ((j == this.selectedViewIndex) && (i != 0))
          break label699;
    }
    label699: for (boolean bool4 = true; ; bool4 = false)
    {
      Assert.assertTrue(bool4);
      removeChildView(j);
      j--;
      break label623;
      bool2 = false;
      break;
    }
    label705: if (sortCards())
      updateSelectedViewIndex();
    int k;
    int m;
    label750: boolean bool3;
    label763: int n;
    if (getSelectedView() == localView2)
    {
      k = 1;
      if ((getSelectedView() != null) || (i != 0) || (this.selectedViewIndex != -1))
        break label867;
      m = 1;
      if ((k == 0) && (m == 0))
        break label873;
      bool3 = true;
      Assert.assertTrue(bool3);
      if (this.animateToItemRequest == null)
        break label895;
      n = 0;
      label778: if (n >= getChildCount())
        break label900;
      View localView3 = getCard(n);
      if (!this.animateToItemRequest.itemId.equals(localView3.getTag(R.id.tag_horizontal_scroll_item_id)))
        break label879;
      getChildAt(n).setTag(R.id.tag_horizontal_scroll_item_animate_in_view, Boolean.TRUE);
      AnimateToItemRequest.access$2602(this.animateToItemRequest, n);
      AnimateToItemRequest.access$2302(this.animateToItemRequest, getChildAt(n));
    }
    while (true)
    {
      n++;
      break label778;
      k = 0;
      break;
      label867: m = 0;
      break label750;
      label873: bool3 = false;
      break label763;
      label879: getChildAt(n).setTag(R.id.tag_horizontal_scroll_item_animate_in_view, null);
    }
    label895: this.animateToItemRequest = null;
    label900: requestLayout();
    return localView1 != localView2;
  }

  public final void activate()
  {
    logger.d("Activating.", new Object[0]);
    Assert.assertUiThread();
    Assert.assertFalse(this.isActivated);
    onPreActivate();
    this.isActivated = true;
    int i = getChildCount();
    if (i > 0)
    {
      for (int j = 0; j < i; j++)
        getStateManager(getCard(j)).onLoad();
      getStateManager(getSelectedView()).onFocus();
      onSettledInternal();
    }
    updateViews(false);
  }

  public final void addPositionListener(PositionListener paramPositionListener)
  {
    this.positionListeners.addPositionListener(paramPositionListener);
  }

  public boolean animateTo(ItemID paramItemID)
  {
    Assert.assertUiThread();
    boolean bool;
    if (!Labs.isEnabled(Labs.Feature.SP_AN))
      bool = setSelection(paramItemID, false);
    int i;
    do
    {
      return bool;
      i = findIdPosition(paramItemID);
      bool = false;
    }
    while (i == -1);
    this.animateToItemRequest = new AnimateToItemRequest(paramItemID);
    updateViews(true);
    animateTo(i);
    return true;
  }

  public final void deactivate()
  {
    logger.d("Deactivating.", new Object[0]);
    Assert.assertUiThread();
    Assert.assertTrue(this.isActivated);
    onPreDeactivate();
    if (getChildCount() > 0)
    {
      this.itemScroller.snapToNearest(false);
      if (getChildCount() > 0)
      {
        getStateManager(getSelectedView()).onUnfocus();
        for (int i = 0; i < getChildCount(); i++)
          getStateManager(getCard(i)).onUnload();
      }
    }
    this.isActivated = false;
  }

  public abstract int findIdPosition(ItemID paramItemID);

  public abstract int findItemPosition(ItemValue paramItemValue);

  public final Adapter getAdapter()
  {
    return this.adapter;
  }

  public int getAnticipatedSettlePosition()
  {
    if (this.scrollVelocity == 0.0F)
      return this.selectedPosition;
    int i = this.itemScroller.getAnticipatedSettlePosition(this.scrollVelocity);
    if (((i >= this.selectedPosition) && (this.scrollVelocity > 0.0F)) || ((i <= this.selectedPosition) && (this.scrollVelocity < 0.0F)));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      return i;
    }
  }

  protected View getCard(int paramInt)
  {
    return ((ViewGroup)getChildAt(paramInt)).getChildAt(0);
  }

  public abstract int getHomePosition();

  public final ItemValue getItemForChildAt(int paramInt)
  {
    return getCard(paramInt).getTag(R.id.tag_horizontal_scroll_item);
  }

  public final View getItemViewForChildAt(int paramInt)
  {
    return getCard(paramInt);
  }

  protected int getNumViewsToLoad()
  {
    return 5;
  }

  public final float getScrollPosition()
  {
    return this.scrollerPosition;
  }

  public final float getScrollVelocity()
  {
    return this.scrollVelocity;
  }

  public ItemScroller.Scrollable getScrollable()
  {
    return this.scrollable;
  }

  public ItemValue getSelectedItem()
  {
    View localView = getSelectedView();
    if (localView != null)
      return localView.getTag(R.id.tag_horizontal_scroll_item);
    return null;
  }

  public ItemValue getSelectedItemParent()
  {
    return getSelectedItem();
  }

  public final int getSelectedItemPosition()
  {
    return this.selectedPosition;
  }

  public final View getSelectedView()
  {
    if (getChildCount() == 0);
    while (this.selectedViewIndex < 0)
      return null;
    return getCard(this.selectedViewIndex);
  }

  public abstract View getViewForPosition(int paramInt, View paramView);

  public float getZoomOutFactor()
  {
    return 1.0F - (this.currentScale - 0.33F) / 0.67F;
  }

  public float getZoomScale()
  {
    return this.currentScale;
  }

  public final boolean isActivated()
  {
    return this.isActivated;
  }

  public boolean isSettled()
  {
    return (this.scrollerPosition == this.selectedPosition) && (this.currentScale == 1.0F);
  }

  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public final boolean onConfirm()
  {
    if (!this.isActivated)
      logger.w("onConfirm while deactivated.", new Object[0]);
    Card localCard;
    do
    {
      do
      {
        do
          return false;
        while (this.isAnimatingInView);
        if (this.itemScroller.onConfirm())
          return true;
      }
      while (getChildCount() <= 0);
      localCard = (Card)getSelectedView();
      TimelineItemId localTimelineItemId = localCard.getBundleEntryPoint();
      if (localTimelineItemId != null)
      {
        this.soundManager.playSound(SoundManager.SoundId.TAP);
        TimelineActivityHelper.goToBundle(getContext(), null, localTimelineItemId, false, false);
        return true;
      }
    }
    while (!localCard.onConfirm());
    if (!localCard.shouldSuppressSingleTapSound())
      this.soundManager.playSound(SoundManager.SoundId.TAP);
    return true;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return false;
  }

  public final boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if (!this.isActivated)
      logger.w("onFingerCountChanged while deactivated.", new Object[0]);
    do
    {
      do
        return false;
      while (this.isAnimatingInView);
      this.itemScroller.onFingerCountChanged(paramInt, paramBoolean);
    }
    while ((!paramBoolean) || (paramInt != 1));
    resetScrollVelocity();
    return true;
  }

  protected void onFocused(int paramInt)
  {
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    int k = 0;
    int m = getChildCount();
    while (k < m)
    {
      View localView = getChildAt(k);
      localView.measure(i, j);
      localView.layout(0, 0, localView.getMeasuredWidth(), localView.getMeasuredHeight());
      k++;
    }
    translateAndScaleChildren();
  }

  protected void onPreActivate()
  {
  }

  protected void onPreDeactivate()
  {
  }

  public final boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (!this.isActivated)
      logger.w("onPrepareSwipe while deactivated.", new Object[0]);
    while (this.isAnimatingInView)
      return false;
    this.itemScroller.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return true;
  }

  protected void onSettled()
  {
  }

  public final boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (!this.isActivated)
      logger.w("onSwipe while deactivated.", new Object[0]);
    while (this.isAnimatingInView)
      return false;
    return this.itemScroller.onSwipe(paramInt, paramSwipeDirection);
  }

  protected void onUnsettled()
  {
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    return false;
  }

  public final void removePositionListener(PositionListener paramPositionListener)
  {
    this.positionListeners.removePositionListener(paramPositionListener);
  }

  public void setAdapter(Adapter paramAdapter)
  {
    if (this.adapter != null)
      this.adapter.unregisterDataSetObserver(this.datasetObserver);
    this.adapter = paramAdapter;
    if (this.adapter != null)
      this.adapter.registerDataSetObserver(this.datasetObserver);
    updateViews(true);
  }

  public final void setSelection(int paramInt)
  {
    setSelection(paramInt, false);
  }

  public final void setSelection(int paramInt, boolean paramBoolean)
  {
    if (!hasData());
    do
    {
      do
      {
        return;
        if ((paramInt >= 0) && (paramInt < this.adapter.getCount()))
          break;
      }
      while (paramBoolean);
      setTranslationAndScale(0, this.currentScale);
      return;
      if (paramInt != this.scrollerPosition)
        this.itemScroller.setItem(paramInt);
    }
    while (paramBoolean);
    setTranslationAndScale(0, this.currentScale);
  }

  public final boolean setSelection(ItemID paramItemID, boolean paramBoolean)
  {
    if (!hasData());
    int i;
    do
    {
      return false;
      if (paramBoolean)
        return animateTo(paramItemID);
      i = findIdPosition(paramItemID);
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramItemID;
      arrayOfObject[1] = Integer.valueOf(i);
      localFormattingLogger.d("Searched for ID %s; result position: %s", arrayOfObject);
    }
    while (i == -1);
    setSelection(i, paramBoolean);
    return true;
  }

  public void setSuppressViewUpdates(boolean paramBoolean)
  {
    this.suppressViewUpdates = paramBoolean;
    if (!paramBoolean)
      updateViews(false);
  }

  public final boolean shouldSuppressSingleTapSound()
  {
    if (!this.isActivated);
    while (getChildCount() <= 0)
      return false;
    return ((Card)getSelectedView()).shouldSuppressSingleTapSound();
  }

  public final void updateViews(boolean paramBoolean)
  {
    if ((updateViewsInternal(paramBoolean)) && (isSettled()) && (getChildCount() > 0))
      onSettledInternal();
  }

  private class AnimateToItemRequest
  {
    private View bindedViewForItem;
    private final ItemID itemId;
    private int viewPosition;

    public AnimateToItemRequest()
    {
      Object localObject;
      this.itemId = localObject;
    }
  }

  public static abstract interface PositionListener
  {
    public abstract void onFocused(int paramInt);

    public abstract void onScaleChanged(float paramFloat);

    public abstract void onScrollPositionChanged(float paramFloat);

    public abstract void onSettled(int paramInt);

    public abstract void onUnsettled(int paramInt);
  }

  private static class PositionListenerCollection
    implements BaseHorizontalScrollView.PositionListener
  {
    private List<BaseHorizontalScrollView.PositionListener> positionListeners = Lists.newArrayList();

    public void addPositionListener(BaseHorizontalScrollView.PositionListener paramPositionListener)
    {
      this.positionListeners.add(paramPositionListener);
    }

    public void onFocused(int paramInt)
    {
      for (int i = 0; i < this.positionListeners.size(); i++)
        ((BaseHorizontalScrollView.PositionListener)this.positionListeners.get(i)).onFocused(paramInt);
    }

    public void onScaleChanged(float paramFloat)
    {
      for (int i = 0; i < this.positionListeners.size(); i++)
        ((BaseHorizontalScrollView.PositionListener)this.positionListeners.get(i)).onScaleChanged(paramFloat);
    }

    public void onScrollPositionChanged(float paramFloat)
    {
      for (int i = 0; i < this.positionListeners.size(); i++)
        ((BaseHorizontalScrollView.PositionListener)this.positionListeners.get(i)).onScrollPositionChanged(paramFloat);
    }

    public void onSettled(int paramInt)
    {
      for (int i = 0; i < this.positionListeners.size(); i++)
        ((BaseHorizontalScrollView.PositionListener)this.positionListeners.get(i)).onSettled(paramInt);
    }

    public void onUnsettled(int paramInt)
    {
      for (int i = 0; i < this.positionListeners.size(); i++)
        ((BaseHorizontalScrollView.PositionListener)this.positionListeners.get(i)).onUnsettled(paramInt);
    }

    public void removePositionListener(BaseHorizontalScrollView.PositionListener paramPositionListener)
    {
      this.positionListeners.remove(paramPositionListener);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.BaseHorizontalScrollView
 * JD-Core Version:    0.6.2
 */