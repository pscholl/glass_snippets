package de.tud.ess;

import android.util.Log;

public class LogCatWriter {

  protected Process mLogcat;

  public LogCatWriter(String path, String tag) {
    try {
      mLogcat = Runtime.getRuntime().exec( new String[] {
          "logcat", "-c" });
      mLogcat.waitFor();
      mLogcat = Runtime.getRuntime().exec( new String[] {
          "logcat", "-v", "time", "-f", path, "-r", "1024", "-s", tag});
    } catch (Exception e) {
      Log.e("logcatWriter", "logcat execution failed: "+e.toString());
      e.printStackTrace();
    } 
  }
  
  public void stop() {
    if (mLogcat == null)
      return;
    
    mLogcat.destroy();
  }

}
