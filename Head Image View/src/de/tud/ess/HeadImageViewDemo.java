package de.tud.ess;

import java.io.IOException;
import java.io.InputStream;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Bundle;

public class HeadImageViewDemo extends Activity {

  private HeadImageView mHeadView;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mHeadView = (HeadImageView) findViewById(R.id.imview);
    
    InputStream is = null;
    try {
      is = getAssets().open("lego.jpg");
    } catch (IOException e) {
      e.printStackTrace();
      return;
    }
    
    Options o = new Options();
    o.inSampleSize = 4; // downsample
    Bitmap b  = BitmapFactory.decodeStream(is, null, o);
    mHeadView.setImageBitmap(b);
  }
}
