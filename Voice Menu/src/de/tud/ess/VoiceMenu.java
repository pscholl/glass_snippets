package de.tud.ess;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.StateListDrawable;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.RobotoTypefaces;

public class VoiceMenu extends StubVoiceListener {

  public class ThisFuckingAdapter extends ArrayAdapter<String> {

    protected Context mContext;
    protected String[] mItems;
    
    public ThisFuckingAdapter(Context c, String[] items) {
      super(c, 0, items);
      mContext = c;
      mItems = items;
    }
    
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
      TextView tv = new TextView(mContext);
      
      Typeface roboto = RobotoTypefaces.getTypeface(mContext,
          RobotoTypefaces.WEIGHT_THIN);
      tv.setTypeface(roboto);
      tv.setText(mItems[position]);
      tv.setGravity(Gravity.LEFT);
      
      return tv;
    }
  }

  public interface VoiceMenuListener {
    void onItemSelected(String item);
  }

  protected static final int MARGIN = 20;

  protected VoiceInputHelper mVoiceInputHelper;
  protected Activity mContext;
  protected VoiceConfig mVoiceConfig;
  protected PowerHelper mPower;
  protected String[] mItems;
  protected HeadListView mScroll;
  protected VoiceMenuListener mListener;
  protected FrameLayout mRoot;
  protected String mActivationWord;
  protected RelativeLayout mLayout;
  protected boolean mShowing = false;
  
  public VoiceMenu(Activity c, String hotword, String... items) {
    mContext = c;
    mVoiceInputHelper = new VoiceInputHelper(
        mContext, this,
        VoiceInputHelper.newUserActivityObserver(mContext));
    
    String[] hotwords = new String[items.length+1];
    for (int i=1; i<items.length; i++)
      hotwords[i] = items[i-1];
    hotwords[0] = hotword;
    
    mActivationWord = hotword;
    mVoiceConfig = new VoiceConfig(
        c.getApplicationInfo().name, hotwords);
    
    mItems = items;
    mPower = new PowerHelper(mContext);
  }
  
  @Override
  public void onVoiceServiceConnected() {
    super.onVoiceServiceConnected();
    mVoiceInputHelper.setVoiceConfig(mVoiceConfig, false);
  }
  
  public void setListener(VoiceMenuListener m) {
    mListener = m;
    
    if (mListener != null)
      mVoiceInputHelper.addVoiceServiceListener();
    else
      mVoiceInputHelper.detachVoiceInputCallback();
  }
  
  @Override
  public VoiceConfig onVoiceCommand(VoiceCommand vc) {
    String literal = vc.getLiteral();
    mPower.stayAwake(3000);
    
    if (mListener == null) {
      shutdown();
      return mVoiceConfig;
    }
    
    if (literal.equals(mActivationWord))
      show();
    
    for (String item : mItems) {
      if ( item.equals(literal) ) {
        mListener.onItemSelected(item);
        return mVoiceConfig;
      }
    }
    
    return null;
  }
  
  private void shutdown() {
    if (mScroll == null)
      Log.e("meh", "called again");
    else
    {
      mVoiceInputHelper.detachVoiceInputCallback();
      mScroll.deactivate();
      mRoot.removeView(mLayout);
      mScroll = null;
      mLayout = null;
      mShowing = false;
    }
  }

  public void show() {
    if (mShowing )
      return;
    
    mRoot = (FrameLayout) mContext.getWindow().getDecorView().findViewById(android.R.id.content);   
    
    mLayout = new RelativeLayout(mContext);
    mLayout.setBackgroundColor(0xDD000000);
    ViewGroup.LayoutParams p = new ViewGroup.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT, 
        ViewGroup.LayoutParams.MATCH_PARENT);
    mRoot.addView(mLayout, p);
    
    TextView tv = new TextView(mContext);
    Typeface roboto = RobotoTypefaces.getTypeface(mContext,
        RobotoTypefaces.WEIGHT_THIN);
    tv.setTypeface(roboto);
    tv.setText(mActivationWord + ", ");
    tv.setGravity(Gravity.LEFT);
    tv.setId(1);
    
    RelativeLayout.LayoutParams params;
    params = new RelativeLayout.LayoutParams(
        RelativeLayout.LayoutParams.WRAP_CONTENT,
        RelativeLayout.LayoutParams.MATCH_PARENT);
    params.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
    params.addRule(RelativeLayout.ALIGN_PARENT_TOP);
    params.setMargins(MARGIN, MARGIN, MARGIN, MARGIN);
    mLayout.addView(tv, params);
    
    mScroll = new HeadListView(mContext);
    mScroll.setAdapter(new ThisFuckingAdapter(mContext, mItems));
    mScroll.setSelector(new StateListDrawable()); // disable selector view
    mScroll.setDivider(new StateListDrawable());
    params = new RelativeLayout.LayoutParams(
        RelativeLayout.LayoutParams.WRAP_CONTENT,
        RelativeLayout.LayoutParams.MATCH_PARENT);
    params.addRule(RelativeLayout.ALIGN_PARENT_TOP);
    params.addRule(RelativeLayout.RIGHT_OF, 1);
    params.setMargins(0, MARGIN, MARGIN, MARGIN);
    mLayout.addView(mScroll, params);
    
    mShowing = true;
    mScroll.activate();
  }
}
