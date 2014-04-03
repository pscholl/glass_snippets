package de.tud.ess.glass_hello_world;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.Html;
import android.util.Log;
import android.view.SurfaceHolder;
import android.widget.RemoteViews;

import com.google.android.glass.sample.compass.model.Landmarks;
import com.google.android.glass.sample.compass.model.Place;
import com.google.android.glass.timeline.LiveCard;
import com.google.android.glass.timeline.TimelineManager;
import com.google.glass.app.GlassVoiceActivity;

public class NodService extends Service implements NodDetector.Listener, SurfaceHolder.Callback {

  private static final String LIVECARD = "mehmeh";
  private LiveCard liveCard;
  private RemoteViews view;
  private int counter = 0;
  
  private final Handler update_handler = new Handler() {
    public void handleMessage(android.os.Message msg) {
      counter++;
      String txt = String.format("<center>This is <b>number %d</b></center>", counter);
      view.setTextViewText(R.id.textView2, Html.fromHtml(txt));
      Log.e("what", "updated!!");
      liveCard.setViews(view);
      //update_handler.sendEmptyMessageDelayed(0, 1000);
    };
  };
  
  private NodDetector nodDetector;
  private GlassVoiceActivity ac;

  @Override
  public IBinder onBind(Intent intent) {
    // TODO Auto-generated method stub
    return null;
  }
  
  @Override
  public void onCreate() {
    super.onCreate();
    SensorManager systemService = (SensorManager) getSystemService(SENSOR_SERVICE);
    nodDetector = new NodDetector(systemService, this);
  }
  
  @Override
  public int onStartCommand(Intent intent, int flags, int startId) {
    if (liveCard == null) {
      //liveCard = TimelineManager.from(this).getLiveCard(LIVECARD);
      view     = new RemoteViews(this.getPackageName(), R.layout.main);
      //liveCard.setViews(view);
      
      String txt = "<div align=\"center\">This is an <b>initial</b> test.</div>";
      //view.setTextViewText(R.id.textView2, Html.fromHtml(txt));
      Log.e("man", Html.fromHtml(txt).toString());
      
      //Intent menui = new Intent(this, NodMenuActivity.class);
      //liveCard.setAction(PendingIntent.getActivity(this, 0, menui, 0));
      //liveCard.getSurfaceHolder().addCallback(this);
      
      nodDetector.startListening(); // surface callback does not work!
      //liveCard.setNonSilent(true);
      //liveCard.publish();
    }
    
    return START_STICKY;
  }
  
  public void getLandmarks() {
    try {
      Landmarks l= new Landmarks(this);
      Method m = l.getClass().getDeclaredMethod("decryptLandmarks", null);
      m.setAccessible(true);
      m.invoke(l, null);
      
      Field[] arr = l.getClass().getDeclaredFields();
      Log.e("field", Integer.toString(arr.length));
      for (int i=0; i<arr.length; i++)
        Log.e("fields", arr[i].getName());
      
      Field f = l.getClass().getDeclaredField("mPlaces");
      f.setAccessible(true);
      ArrayList<Place> p = (ArrayList<Place>) f.get(l);
      
      for (Iterator i = p.iterator(); i.hasNext();) {
        Place place = (Place) i.next();
        String s = place.getName();
        s += ":";
        s += Double.toString(place.getLatitude());
        s += ":";
        s += Double.toString(place.getLongitude());
        Log.e("place", s);
      }
              
    } catch (Exception e) {
      e.printStackTrace();
      Log.e("places", "meh");
    }
  }

  @Override
  public void onDestroy() {
    if (liveCard != null && liveCard.isPublished()) {
      liveCard.unpublish();
      liveCard = null;
      
      nodDetector.stopListening();
      nodDetector = null;
    }
    
    super.onDestroy();
  }

  @Override
  public void onNodDetected(boolean yesno) {
    update_handler.sendMessage(new Message());
  }

  @Override
  public void surfaceChanged(SurfaceHolder holder, int format, int width,
      int height) {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void surfaceCreated(SurfaceHolder holder) {
    nodDetector.startListening();
  }

  @Override
  public void surfaceDestroyed(SurfaceHolder holder) {
    nodDetector.stopListening();
  }
}
