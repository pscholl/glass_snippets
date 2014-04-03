package de.tud.ess.glass_hello_world;

import java.lang.reflect.Field;
import java.util.List;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import com.google.glass.app.GlassVoiceActivity;
import com.google.glass.app.VoiceMenuDialog;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.menu.StaticCommandMenuItem;
import com.google.glass.voice.menu.VoiceMenuEnvironment;
import com.google.glass.voice.menu.VoiceMenuItem;

public class NodMenuActivity extends GlassVoiceActivity {

  private boolean resumed;

  @Override
  protected int provideContentView() {
    Log.e("mh", "not entertaining?");
    try {
      View cv = getLayoutInflater().inflate(R.layout.glass_activity, null);
      Field f = this.getClass().getSuperclass().getSuperclass().getDeclaredField("contentView");
      f.setAccessible(true);
      f.set(this, cv);
    } catch (Exception e) {
      e.printStackTrace();
      Log.e("uhoh", e.toString());
    }
    return 1;
  }
  
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    if (getContentView() == null)
      Log.e("meh", "there is the problem");
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    resumed = true;
    openOptionsMenu();
    //FIXME: need to subclass and load views manually openVoiceMenu(getInitialVoiceConfig(), new VoiceMenuItem[] {});
  }
  
  @Override
  protected void onStart() {
    super.onStart();
  }
  
  @Override
  public void onPause() {
    super.onPause();
    resumed = false;
  }
  
  @Override
  public void onUserInteraction() {
    super.onUserInteraction();
    Log.e("meh", "onUser");
  }
  
  @Override
  public void openOptionsMenu() {
    //if (resumed) {
    //  super.openOptionsMenu();
    //}
  }
  
  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    getMenuInflater().inflate(R.menu.nod, menu);
    return true;
  }
  
  @Override /* eh this needs to be here, so it dex'es?!? */
  public void onOptionsMenuClosed(Menu menu) {
    super.onOptionsMenuClosed(menu);
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem item) {
    switch(item.getItemId())
    {
      case R.id.stop:
        stopService(new Intent(this, NodService.class));
        break;
      default:
        super.onOptionsItemSelected(item);
    }
    return true;
  }

  @Override
  public VoiceConfig onVoiceCommand(VoiceCommand c) {
    Log.e("mh", c.getLiteral());
    Log.e("mh", c.getSemanticTag());
    return null;
  }
  
  @Override
  public VoiceConfig getInitialVoiceConfig() {
    VoiceConfig test = new VoiceConfig("test", new String[]{"test", "back", "forward"}, new String[]{"test", "back", "forward"});
    return test;
    
    //return VoiceConfig.MAIN_MENU;
  }

  @Override
  public FormattingLogger getLogger() {
    return FormattingLoggers.getContextLogger();
  }
}
