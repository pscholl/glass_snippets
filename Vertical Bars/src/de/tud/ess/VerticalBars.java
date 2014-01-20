package de.tud.ess;

import java.util.HashMap;
import java.util.Random;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.RelativeLayout;

public class VerticalBars extends RelativeLayout {

  public class BarAnimator implements Runnable {

    protected Random mRand = new Random();
    protected HashMap<View,Float> viewToScale = new HashMap<View,Float>();

    @Override
    public void run() {
      change_height(mBar1);
      animate_height(mBar2);
      animate_height(mBar3);
      mHandler.postDelayed(this, BAR_FREQ_MS);
    }
    
    public void animate_height(View v) {
      float scale    = mRand .nextFloat();
      Float oldscale = viewToScale.put(v, scale);
      oldscale = oldscale==null ? 1 : oldscale;
      
      ScaleAnimation a = new ScaleAnimation(v.getScaleX(), 1, oldscale, scale,
          Animation.RELATIVE_TO_SELF, 1, Animation.RELATIVE_TO_SELF, 1);
      a.setDuration(BAR_FREQ_MS-1);
      v.setAnimation(a);
    }

    public void change_height(View v) {
      LayoutParams p = (LayoutParams) v.getLayoutParams();
      p.height = mRand.nextInt(BAR_HEIGHT + 1);
      v.setLayoutParams(p);
    }

  }

  protected static final int BAR_HEIGHT = 260;
  protected static final int BAR_WIDTH = 10;
  protected static final long BAR_FREQ_MS = 400;
  protected View mBar1;
  protected View mBar2;
  protected View mBar3;
  protected Handler mHandler;
  protected BarAnimator mBarAnimator;

  public void init() {    
    mBar1 = new View(getContext());
    mBar2 = new View(getContext());
    mBar3 = new View(getContext());
    
    LayoutParams p = new LayoutParams(BAR_WIDTH, BAR_HEIGHT);
    p.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
    p.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
    p.setMargins(0, 0, 5, 0);
    mBar1.setId(1);
    mBar1.setBackgroundResource(R.color.green);
    addView(mBar1, p);
    
    p = new LayoutParams(BAR_WIDTH, BAR_HEIGHT);
    p.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
    p.addRule(RelativeLayout.RIGHT_OF, 1);
    p.setMargins(0, 0, 5, 0);
    mBar2.setId(2);
    mBar2.setBackgroundResource(R.color.red);
    addView(mBar2, p);
    
    p = new LayoutParams(BAR_WIDTH, BAR_HEIGHT);
    p.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
    p.addRule(RelativeLayout.RIGHT_OF, 2);
    p.setMargins(0, 0, 5, 0);
    mBar3.setId(3);
    mBar3.setBackgroundResource(R.color.blue);
    addView(mBar3, p);
  }
  
  public VerticalBars(Context context, AttributeSet attrs, int defStyle) {
    super(context, attrs, defStyle);
    init();
  }

  public VerticalBars(Context context, AttributeSet attrs) {
    super(context, attrs);
    init();
  }
  
  public VerticalBars(Context context) {
    super(context);
    init();
  }

  public void activate() {
    if (mHandler == null)
      mHandler = new Handler();
    
    if (mBarAnimator == null)
      mBarAnimator = new BarAnimator();
    
    mHandler.post(mBarAnimator);
  }
  
  public void deactivate() {
    if (mHandler == null)
      return;
    
    mHandler.removeCallbacks(mBarAnimator);
  }
}
