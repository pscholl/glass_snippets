package de.tud.ess;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.StateListDrawable;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
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
      tv.setGravity(Gravity.CENTER);
      
      return tv;
    }

  }

  public interface VoiceMenuListener {
    void onItemSelected(String item);
  }

  protected VoiceInputHelper mVoiceInputHelper;
  protected Activity mContext;
  protected VoiceConfig mVoiceConfig;
  protected PowerHelper mPower;
  protected String[] mItems;
  protected HeadListView mScroll;
  private VoiceMenuListener mListener;
  private FrameLayout mRoot;
  
  public VoiceMenu(Activity c, String... items) {
    mContext = c;
    mVoiceInputHelper = new VoiceInputHelper(
        mContext, this,
        VoiceInputHelper.newUserActivityObserver(mContext));
    
    mVoiceConfig = new VoiceConfig(
        c.getApplicationInfo().name,items);
    
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
  }
  
  @Override
  public VoiceConfig onVoiceCommand(VoiceCommand vc) {
    String literal = vc.getLiteral();
    mPower.stayAwake(3000);
    
    if (mListener == null) {
      shutdown();
      return mVoiceConfig;
    }
    
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
      mRoot.removeView(mScroll);
      mScroll = null;
    }
  }

  public void show() {
    mVoiceInputHelper.addVoiceServiceListener();
    mRoot = (FrameLayout) mContext.getWindow().getDecorView().findViewById(android.R.id.content);   
    
    mScroll = new HeadListView(mContext);
    mScroll.setAdapter(new ThisFuckingAdapter(mContext, mItems));
    mScroll.setBackgroundColor(0xDD000000);
    mScroll.setSelector(new StateListDrawable()); // disable selector view
    mScroll.setDivider(new StateListDrawable());
    
    LayoutParams p = new LayoutParams(
        LayoutParams.MATCH_PARENT, 
        LayoutParams.MATCH_PARENT);
    mRoot.addView(mScroll,p);
    
    mScroll.activate();
  }
}
