package com.google.glass.voice.menu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassError;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.predicates.Assert;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voiceclient.R.id;
import com.google.glass.voiceclient.R.layout;
import com.google.glass.widget.TypophileTextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

public class VoiceMenu extends FrameLayout
{
  private static final float FADE_OUT_ALPHA = 0.2F;
  public static final float HEAD_SCROLL_PER_ITEM = 45.0F;
  private static final long MENU_ITEM_ANIMATE_IN_DELAY_MILLIS = 50L;
  private static final long MENU_ITEM_ANIMATE_IN_DURATION_MILLIS = 220L;
  private static final long MENU_ITEM_SELECTION_ANIMATION_DURATION_MILLIS = 100L;
  private static final long MENU_ITEM_SELECTION_DURATION_MILLIS = 1000L;
  private static final int MSG_ANIMATE_IN = 1;
  private static final int MSG_END_SECONDARY_MENU_ITEM_SELECTION = 2;
  private static final String TAG = VoiceMenu.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static boolean skipInit = false;
  private List<? extends VoiceMenuItem> currentItems;
  private boolean dismissed;
  private final Handler handler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 1:
      case 2:
      }
      while (true)
      {
        return;
        VoiceMenu.this.animateIn((View)paramAnonymousMessage.obj);
        return;
        TypophileTextView localTypophileTextView1 = (TypophileTextView)paramAnonymousMessage.obj;
        Iterator localIterator = VoiceMenu.this.secondaryMenuItemViews.values().iterator();
        while (localIterator.hasNext())
        {
          TypophileTextView localTypophileTextView2 = (TypophileTextView)localIterator.next();
          if (localTypophileTextView2 != localTypophileTextView1)
            localTypophileTextView2.animate().alpha(1.0F).setDuration(100L);
        }
      }
    }
  };
  private LinearLayout primaryMenu;
  private final LinkedHashMap<VoiceMenuItem, TypophileTextView> primaryMenuItemViews = new LinkedHashMap();
  private LinearLayout primaryMenuLayout;
  private OverscrollView primaryMenuScrollView;
  private float primaryMenuSelectedYPosition;
  private LinkedHashMap<VoiceMenuItem, TypophileTextView> secondaryMenuItemViews;
  private LinearLayout secondaryMenuLayout;
  private OverscrollView secondaryMenuScrollView;
  private TypophileTextView selectedPrimaryMenuItem;
  private TypophileTextView selectedSecondaryMenuItem;
  private OverscrollView visibleScrollView;
  private VoiceMenuListener voiceMenuListener;

  public VoiceMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public VoiceMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (skipInit)
    {
      logger.w("Skipping proper initialization for tests", new Object[0]);
      return;
    }
    LayoutInflater.from(getContext()).inflate(R.layout.voice_menu, this);
    initViews();
    setVisibleScrollView(this.primaryMenuScrollView);
  }

  private void addPrimaryMenuItem(VoiceMenuItem paramVoiceMenuItem)
  {
    TypophileTextView localTypophileTextView = newMenuItem(paramVoiceMenuItem.getLabel(getContext()));
    this.primaryMenuItemViews.put(paramVoiceMenuItem, localTypophileTextView);
    this.primaryMenuLayout.addView(localTypophileTextView);
  }

  private void animateIn(View paramView)
  {
    paramView.setTranslationY(getResources().getDisplayMetrics().heightPixels);
    paramView.setVisibility(0);
    paramView.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(220L);
  }

  private void fadeInPrimaryMenuItems()
  {
    Iterator localIterator = this.primaryMenuItemViews.values().iterator();
    while (localIterator.hasNext())
    {
      TypophileTextView localTypophileTextView = (TypophileTextView)localIterator.next();
      if (localTypophileTextView != this.selectedPrimaryMenuItem)
        localTypophileTextView.animate().alpha(1.0F).setDuration(100L).setListener(null);
    }
  }

  private void initViews()
  {
    this.primaryMenu = ((LinearLayout)findViewById(R.id.primary_menu));
    this.selectedPrimaryMenuItem = ((TypophileTextView)findViewById(R.id.voice_menu_selected_primary_menu_item));
    this.selectedSecondaryMenuItem = ((TypophileTextView)findViewById(R.id.voice_menu_selected_secondary_menu_item));
    this.primaryMenuScrollView = ((OverscrollView)findViewById(R.id.voice_menu_primary_scroll_view));
    this.primaryMenuLayout = ((LinearLayout)findViewById(R.id.voice_menu_items));
    this.secondaryMenuScrollView = ((OverscrollView)findViewById(R.id.voice_menu_secondary_scroll_view));
    this.secondaryMenuLayout = ((LinearLayout)findViewById(R.id.voice_menu_secondary_menu_layout));
  }

  private TypophileTextView newMenuItem(String paramString)
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)LayoutInflater.from(getContext()).inflate(R.layout.voice_menu_item, null);
    localTypophileTextView.setText(paramString);
    return localTypophileTextView;
  }

  private LinkedHashMap<VoiceMenuItem, TypophileTextView> populateLayoutWithItems(LinearLayout paramLinearLayout, Collection<VoiceMenuItem> paramCollection)
  {
    Assert.assertUiThread();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(paramCollection.size());
    paramLinearLayout.removeAllViews();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      VoiceMenuItem localVoiceMenuItem = (VoiceMenuItem)localIterator.next();
      TypophileTextView localTypophileTextView = newMenuItem(localVoiceMenuItem.getLabel(getContext()));
      localLinkedHashMap.put(localVoiceMenuItem, localTypophileTextView);
      paramLinearLayout.addView(localTypophileTextView);
    }
    return localLinkedHashMap;
  }

  private void promoteMenuItem(final TypophileTextView paramTypophileTextView, final OverscrollView paramOverscrollView, final Runnable paramRunnable)
  {
    selectPrimaryMenuItem(paramTypophileTextView, new Runnable()
    {
      public void run()
      {
        VoiceMenu.this.selectedPrimaryMenuItem.setText(paramTypophileTextView.getText());
        VoiceMenu.access$802(VoiceMenu.this, paramTypophileTextView.getY() - paramOverscrollView.getScrollY() + paramOverscrollView.getChildAt(0).getTranslationY());
        VoiceMenu.this.selectedPrimaryMenuItem.setTranslationY(VoiceMenu.this.primaryMenuSelectedYPosition);
        VoiceMenu.this.selectedPrimaryMenuItem.setVisibility(0);
        VoiceMenu.this.primaryMenuLayout.setVisibility(8);
        VoiceMenu.this.selectedPrimaryMenuItem.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(220L).setListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            if (VoiceMenu.5.this.val$postAnimationRunnable != null)
              VoiceMenu.this.cancelIfDismissed(VoiceMenu.5.this.val$postAnimationRunnable).run();
            VoiceMenu.this.selectedPrimaryMenuItem.animate().setListener(null);
          }
        });
      }
    });
  }

  private void selectPrimaryMenuItem(TypophileTextView paramTypophileTextView, final Runnable paramRunnable)
  {
    paramTypophileTextView.setEnabled(true);
    ArrayList localArrayList = Lists.newArrayList(this.primaryMenuItemViews.values());
    localArrayList.remove(paramTypophileTextView);
    if (localArrayList.isEmpty())
    {
      if (paramRunnable != null)
        paramRunnable.run();
      return;
    }
    int i = 0;
    label47: final TypophileTextView localTypophileTextView;
    if (i < localArrayList.size())
    {
      localTypophileTextView = (TypophileTextView)localArrayList.get(i);
      if (i != -1 + localArrayList.size())
        break label125;
    }
    label125: for (AnimatorListenerAdapter local7 = new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (paramRunnable != null)
          VoiceMenu.this.cancelIfDismissed(paramRunnable).run();
        localTypophileTextView.animate().setListener(null);
      }
    }
    ; ; local7 = null)
    {
      localTypophileTextView.animate().alpha(0.2F).setDuration(100L).setListener(local7);
      i++;
      break label47;
      break;
    }
  }

  private void selectSecondaryMenuItem(TypophileTextView paramTypophileTextView, LinkedHashMap<VoiceMenuItem, TypophileTextView> paramLinkedHashMap)
  {
    Iterator localIterator = paramLinkedHashMap.values().iterator();
    while (localIterator.hasNext())
    {
      TypophileTextView localTypophileTextView = (TypophileTextView)localIterator.next();
      if (localTypophileTextView != paramTypophileTextView)
        localTypophileTextView.animate().alpha(0.2F).setDuration(100L);
    }
    this.handler.sendMessageDelayed(Message.obtain(this.handler, 2, paramTypophileTextView), 1000L);
  }

  private void setPrimaryMenuLayoutParams(boolean paramBoolean)
  {
    LinearLayout localLinearLayout = this.primaryMenu;
    if (paramBoolean);
    for (int i = -1; ; i = -2)
    {
      localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
      return;
    }
  }

  public static final void setSkipInit(boolean paramBoolean)
  {
    Assert.assertIsTest();
    skipInit = paramBoolean;
  }

  private void setVisibleScrollView(OverscrollView paramOverscrollView)
  {
    this.visibleScrollView = paramOverscrollView;
  }

  private void showSecondaryMenu(List<VoiceMenuItem> paramList)
  {
    setPrimaryMenuLayoutParams(false);
    this.primaryMenuScrollView.setVisibility(8);
    this.secondaryMenuLayout.setVisibility(0);
    this.secondaryMenuScrollView.setVisibility(0);
    Iterator localIterator = this.secondaryMenuItemViews.values().iterator();
    while (localIterator.hasNext())
      animateIn((TypophileTextView)localIterator.next());
  }

  private void updateEnabledState(LinkedHashMap<? extends VoiceMenuItem, TypophileTextView> paramLinkedHashMap)
  {
    Iterator localIterator = paramLinkedHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      VoiceMenuItem localVoiceMenuItem = (VoiceMenuItem)localIterator.next();
      ((TypophileTextView)paramLinkedHashMap.get(localVoiceMenuItem)).setEnabled(localVoiceMenuItem.isEnabled(this.voiceMenuListener));
    }
  }

  public void animateBackToPrimaryMenu()
  {
    updateEnabledState(this.primaryMenuItemViews);
    setPrimaryMenuLayoutParams(true);
    setVisibleScrollView(this.primaryMenuScrollView);
    this.primaryMenuScrollView.setVisibility(0);
    this.secondaryMenuScrollView.setVisibility(8);
    this.currentItems = Lists.newArrayList(this.primaryMenuItemViews.keySet());
    Iterator localIterator = this.currentItems.iterator();
    while (localIterator.hasNext())
      ((VoiceMenuItem)localIterator.next()).reset();
    this.selectedPrimaryMenuItem.animate().translationY(this.primaryMenuSelectedYPosition).setInterpolator(new DecelerateInterpolator()).setDuration(220L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (VoiceMenu.this.dismissed)
          return;
        VoiceMenu.this.primaryMenuLayout.setVisibility(0);
        VoiceMenu.this.selectedPrimaryMenuItem.animate().setListener(null);
        VoiceMenu.this.fadeInPrimaryMenuItems();
        VoiceMenu.this.selectedPrimaryMenuItem.setVisibility(8);
      }
    });
  }

  protected Runnable cancelIfDismissed(final Runnable paramRunnable)
  {
    return new Runnable()
    {
      public void run()
      {
        if (VoiceMenu.this.dismissed)
          return;
        paramRunnable.run();
      }
    };
  }

  public OverscrollView getVisibleScrollView()
  {
    return this.visibleScrollView;
  }

  public void onConnectivityChanged(boolean paramBoolean)
  {
    updateEnabledState(this.primaryMenuItemViews);
  }

  public void onDismissed()
  {
    if (this.dismissed)
      logger.w("Dismissed more than once!", new Object[0]);
    this.dismissed = true;
  }

  public VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    Iterator localIterator = this.currentItems.iterator();
    while (localIterator.hasNext())
    {
      VoiceMenuItem localVoiceMenuItem = (VoiceMenuItem)localIterator.next();
      if (localVoiceMenuItem.matches(paramVoiceCommand))
        return localVoiceMenuItem.trigger(this.voiceMenuListener, true);
    }
    logger.w("No matching menu item found.", new Object[0]);
    Log.logPii(5, TAG, "command: " + paramVoiceCommand + "; items: " + this.currentItems);
    return null;
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
  {
    promoteMenuItem((TypophileTextView)this.primaryMenuItemViews.get(paramVoiceMenuItem), this.primaryMenuScrollView, paramRunnable);
  }

  public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, List<? extends VoiceMenuItem> paramList)
  {
    final ArrayList localArrayList = Lists.newArrayList(paramList);
    this.secondaryMenuItemViews = populateLayoutWithItems(this.secondaryMenuLayout, localArrayList);
    this.currentItems = localArrayList;
    updateEnabledState(this.secondaryMenuItemViews);
    setVisibleScrollView(this.secondaryMenuScrollView);
    promoteMenuItem((TypophileTextView)this.primaryMenuItemViews.get(paramVoiceMenuItem), this.primaryMenuScrollView, new Runnable()
    {
      public void run()
      {
        VoiceMenu.this.showSecondaryMenu(localArrayList);
        if (VoiceMenu.this.voiceMenuListener != null)
          VoiceMenu.this.voiceMenuListener.onShowSecondaryMenu();
      }
    });
  }

  public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, final long paramLong, final Runnable paramRunnable)
  {
    TypophileTextView localTypophileTextView = (TypophileTextView)this.secondaryMenuItemViews.get(paramVoiceMenuItem);
    selectSecondaryMenuItem(localTypophileTextView, this.secondaryMenuItemViews);
    this.selectedSecondaryMenuItem.setText(localTypophileTextView.getText());
    this.selectedSecondaryMenuItem.setTranslationY(localTypophileTextView.getY() + this.secondaryMenuScrollView.getChildAt(0).getTranslationY());
    this.selectedSecondaryMenuItem.setVisibility(0);
    this.secondaryMenuScrollView.setVisibility(8);
    this.selectedSecondaryMenuItem.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(220L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (paramRunnable != null)
          VoiceMenu.this.handler.postDelayed(VoiceMenu.this.cancelIfDismissed(paramRunnable), paramLong);
        VoiceMenu.this.selectedSecondaryMenuItem.animate().setListener(null);
      }
    });
  }

  public void setListener(VoiceMenuListener paramVoiceMenuListener)
  {
    this.voiceMenuListener = paramVoiceMenuListener;
  }

  public void setPrimaryMenuItems(List<? extends VoiceMenuItem> paramList)
  {
    if (paramList.isEmpty())
      logger.w(new Throwable(), "List of primary menu items should not be empty.", new Object[0]);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      addPrimaryMenuItem((VoiceMenuItem)localIterator.next());
    this.currentItems = paramList;
  }

  public void setShouldHighlightSelectedItem(boolean paramBoolean)
  {
    this.secondaryMenuScrollView.setShouldHighlightSelectedItem(paramBoolean);
    this.primaryMenuScrollView.setShouldHighlightSelectedItem(paramBoolean);
  }

  public void showError(GlassError paramGlassError)
  {
    if (this.voiceMenuListener != null)
      this.voiceMenuListener.onError(paramGlassError);
  }

  public void showPrimaryMenu()
  {
    updateEnabledState(this.primaryMenuItemViews);
    this.selectedPrimaryMenuItem.setVisibility(8);
    this.secondaryMenuLayout.setVisibility(8);
    long l = 0L;
    Iterator localIterator = this.primaryMenuItemViews.values().iterator();
    while (localIterator.hasNext())
    {
      TypophileTextView localTypophileTextView = (TypophileTextView)localIterator.next();
      l += 50L;
      this.handler.sendMessageDelayed(Message.obtain(this.handler, 1, localTypophileTextView), l);
    }
    this.currentItems = Lists.newArrayList(this.primaryMenuItemViews.keySet());
  }

  public static abstract interface VoiceMenuListener extends VoiceMenuEnvironment
  {
    public abstract void onError(GlassError paramGlassError);

    public abstract void onShowSecondaryMenu();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.VoiceMenu
 * JD-Core Version:    0.6.2
 */