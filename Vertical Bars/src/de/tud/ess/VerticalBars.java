package de.tud.ess;

import java.util.Random;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;

public class VerticalBars extends LinearLayout {

  protected static final String TAG = "VerticalBars";
  public static final int MAX_DELAY_inS = 240;
  public static final int MIN_DELAY_inS = 40;
  
  public class ColorChanger implements Runnable {
    protected Random mRand = new Random();
    
    @Override
    public void run() {      
      for (int i=0; i<getChildCount(); i++) {
        View v = getChildAt(i);
        v.setBackgroundResource(R.color.blue);
      }
      
      int i = mRand.nextInt(getChildCount());
      View v = getChildAt(i);
      v.setBackgroundResource(R.color.red);
      
      Log.e(TAG, String.format("highlighted bar changed to %d", i));
      postDelayed(this, (MIN_DELAY_inS + mRand.nextInt(MAX_DELAY_inS-MIN_DELAY_inS))*1000);
    }

  }

  public class BarAnimator implements Runnable {
    protected static final int MIN_HEIGHT = 10;
    protected Random mRand = new Random();
    protected int mWithMaxHeight = -1;

    @Override
    public void run() {
      int withmaxheight = 0;
      
      for (int i=0; i<getChildCount(); i++) {
        View v = getChildAt(i);
        LayoutParams p = (LayoutParams) v.getLayoutParams();
        
        if (mBarGoals[i] < p.height) {
          if (mBarGoals[i] == p.height - 1)
            mBarGoals[i] = p.height + mRand.nextInt(getHeight() - p.height);
          p.height -= 1;
        } else if (mBarGoals[i] > p.height) {
          if (mBarGoals[i] == p.height + 1)
            mBarGoals[i] = MIN_HEIGHT + mRand.nextInt(p.height - MIN_HEIGHT);
          p.height += 1;
        } else {
          mBarGoals[i] = MIN_HEIGHT + mRand.nextInt(getHeight() - MIN_HEIGHT);
          p.height = MIN_HEIGHT + mRand.nextInt(getHeight() - MIN_HEIGHT);
        }
        
        v.setLayoutParams(p);
   
        if (getChildAt(withmaxheight).getHeight() < v.getHeight())
          withmaxheight = i;
      }
      
      if (mWithMaxHeight != withmaxheight) {
        mWithMaxHeight  = withmaxheight;
        Log.e(TAG, String.format("max height changed to %d", mWithMaxHeight));
      }
      
      postDelayed(this, BAR_FREQ_MS);
    }
  }

  protected static final long BAR_FREQ_MS = 400;
  protected BarAnimator mBarAnimator;
  protected ColorChanger mColorChanger;
  protected int[] mBarGoals   = null;

  public void setNumberOfBars(int num) {
    if (num <= 0)
      return;
        
    mBarGoals   = new int[num];   
    removeAllViews();
    setOrientation(LinearLayout.HORIZONTAL);
    setGravity(Gravity.BOTTOM);
    
    for (int i=0; i<num; i++) {
      View bar = new View(getContext());
      LayoutParams p = new LayoutParams(LayoutParams.WRAP_CONTENT, 0,1F);
      p.setMargins(0, 0, 5, 0);
      bar.setId(i);
      bar.setBackgroundResource(R.color.blue);
      addView(bar, p);
    }
  }
  
  @Override
  protected void onVisibilityChanged(View changedView, int visibility) {
    super.onVisibilityChanged(changedView, visibility);
    
    if (visibility==VISIBLE) {
      if (mBarAnimator==null) 
        mBarAnimator = new BarAnimator();
      if (mColorChanger==null)
        mColorChanger = new ColorChanger();
      post(mBarAnimator);
      post(mColorChanger);
      
    } else {
      removeCallbacks(mBarAnimator);
      removeCallbacks(mColorChanger);
    }
  }
  
  public VerticalBars(Context context, AttributeSet attrs, int defStyle) {
    super(context, attrs, defStyle);
    setNumberOfBars(3);
  }

  public VerticalBars(Context context, AttributeSet attrs) {
    super(context, attrs);
    setNumberOfBars(3);
  }
  
  public VerticalBars(Context context) {
    super(context);
    setNumberOfBars(3);
  }
}
