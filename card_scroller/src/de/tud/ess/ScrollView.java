package de.tud.ess;

import java.lang.reflect.Method;
import java.text.MessageFormat.Field;
import java.util.HashMap;
import java.util.LinkedHashMap;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.google.android.glass.widget.CardScrollAdapter;
import com.google.android.glass.widget.CardScrollView;
import com.google.glass.widget.RobotoTypefaces;

public class ScrollView extends Activity {

  public class MyScrollAdapter extends CardScrollAdapter {
    
    protected HashMap<Object, String> mMap;

    protected HashMap<Object, String> getMap() {
      if (mMap == null) {
        mMap = new LinkedHashMap<Object, String>();
        mMap.put(0, "Hello");
        mMap.put(1, "World!");
      }
      return mMap;
    }
    
    @Override
    public int findIdPosition(Object key) {
      return (Integer) key;
    }

    @Override
    public int findItemPosition(Object key) {
      return (Integer) key;
    }

    @Override
    public int getCount() {
      return getMap().size();
    }

    @Override
    public Object getItem(int num) {
      return getMap().get(num);
    }

    @Override
    public View getView(int num, View v, ViewGroup parent) {   
      if (v == null) {
        TextView tv = new TextView(getApplicationContext());
        tv.setText(getMap().get(num));
        
        Typeface roboto = RobotoTypefaces.getTypeface(getApplicationContext(), RobotoTypefaces.WEIGHT_THIN);
        tv.setTypeface(roboto);
        tv.setText(getMap().get(num));
        tv.setGravity(Gravity.CENTER);
        tv.setTextSize(50);
        
        v = tv;
      }
      
      return v;
    }
  }

  private CardScrollView mCardScrollView;
  private MyScrollAdapter mAdapter;
  protected Method mAnimate;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mCardScrollView = (CardScrollView) findViewById(R.id.scrollview);
    
    mAdapter = new MyScrollAdapter(); 
    mCardScrollView.setAdapter(mAdapter);
    mCardScrollView.activate();
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    
    /* This prints the possible values for the second argument
     * of animateToSelection. Currently these are:
     *  ANIMATE_DELETION = 3
     *  ANIMATE_GOTO = 2
     * ANIMATE_INSERTION = 1 */ 
    for (java.lang.reflect.Field f : mCardScrollView.getClass().getFields()) {
      if (f.getName().startsWith("ANIMATE"))
        try {
          Log.e("fields", String.format("%s = %d",f.getName(),f.getInt(null)));
        } catch (Exception e) {
          e.printStackTrace();
        }
    }
    
    /* This is an example on how to do an animation to another card.
     * API is not published yet, so let's get it via reflection. */    
    for(Method m : mCardScrollView.getClass().getDeclaredMethods()) {
      if (m.getName().equals("animateToSelection"))
        mAnimate = m;
    }
    
    Handler h = new Handler();
    h.postDelayed(new Runnable() {
      @Override
      public void run() {
        /* params are next_position, and animation_type */
        Class params[] = new Class[] { Integer.class, Integer.class };
        try {
          mAnimate.invoke(mCardScrollView, 1,2);
        } catch (Exception e) {
          Log.e("meh", e.toString());
        }
      }
    }, 300);
  }
}
