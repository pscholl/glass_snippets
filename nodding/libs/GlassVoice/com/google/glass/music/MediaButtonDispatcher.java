package com.google.glass.music;

import android.app.PendingIntent;
import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class MediaButtonDispatcher
{
  private static final String TAG = MediaButtonDispatcher.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final Context context;
  PendingIntent rccIntent;

  public MediaButtonDispatcher(Context paramContext)
  {
    this(paramContext, null);
  }

  public MediaButtonDispatcher(Context paramContext, PendingIntent paramPendingIntent)
  {
    this.context = paramContext;
    this.rccIntent = paramPendingIntent;
  }

  // ERROR //
  public boolean sendMediaButtonClick(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	com/google/glass/music/MediaButtonDispatcher:rccIntent	Landroid/app/PendingIntent;
    //   4: ifnonnull +19 -> 23
    //   7: getstatic 30	com/google/glass/music/MediaButtonDispatcher:logger	Lcom/google/glass/logging/FormattingLogger;
    //   10: ldc 47
    //   12: iconst_0
    //   13: anewarray 4	java/lang/Object
    //   16: invokeinterface 53 3 0
    //   21: iconst_0
    //   22: ireturn
    //   23: new 55	android/view/KeyEvent
    //   26: dup
    //   27: iconst_0
    //   28: iload_1
    //   29: invokespecial 58	android/view/KeyEvent:<init>	(II)V
    //   32: astore_2
    //   33: new 60	android/content/Intent
    //   36: dup
    //   37: ldc 62
    //   39: invokespecial 65	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   42: astore_3
    //   43: aload_3
    //   44: ldc 67
    //   46: aload_2
    //   47: invokevirtual 71	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   50: pop
    //   51: aload_0
    //   52: getfield 41	com/google/glass/music/MediaButtonDispatcher:rccIntent	Landroid/app/PendingIntent;
    //   55: aload_0
    //   56: getfield 39	com/google/glass/music/MediaButtonDispatcher:context	Landroid/content/Context;
    //   59: iconst_0
    //   60: aload_3
    //   61: invokevirtual 77	android/app/PendingIntent:send	(Landroid/content/Context;ILandroid/content/Intent;)V
    //   64: new 55	android/view/KeyEvent
    //   67: dup
    //   68: iconst_1
    //   69: iload_1
    //   70: invokespecial 58	android/view/KeyEvent:<init>	(II)V
    //   73: astore 6
    //   75: new 60	android/content/Intent
    //   78: dup
    //   79: ldc 62
    //   81: invokespecial 65	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   84: astore 7
    //   86: aload 7
    //   88: ldc 67
    //   90: aload 6
    //   92: invokevirtual 71	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   95: pop
    //   96: aload_0
    //   97: getfield 41	com/google/glass/music/MediaButtonDispatcher:rccIntent	Landroid/app/PendingIntent;
    //   100: aload_0
    //   101: getfield 39	com/google/glass/music/MediaButtonDispatcher:context	Landroid/content/Context;
    //   104: iconst_0
    //   105: aload 7
    //   107: invokevirtual 77	android/app/PendingIntent:send	(Landroid/content/Context;ILandroid/content/Intent;)V
    //   110: iconst_1
    //   111: ireturn
    //   112: astore 5
    //   114: getstatic 30	com/google/glass/music/MediaButtonDispatcher:logger	Lcom/google/glass/logging/FormattingLogger;
    //   117: aload 5
    //   119: ldc 79
    //   121: iconst_0
    //   122: anewarray 4	java/lang/Object
    //   125: invokeinterface 82 4 0
    //   130: iconst_0
    //   131: ireturn
    //   132: astore 9
    //   134: getstatic 30	com/google/glass/music/MediaButtonDispatcher:logger	Lcom/google/glass/logging/FormattingLogger;
    //   137: aload 9
    //   139: ldc 84
    //   141: iconst_0
    //   142: anewarray 4	java/lang/Object
    //   145: invokeinterface 82 4 0
    //   150: iconst_0
    //   151: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   51	64	112	android/app/PendingIntent$CanceledException
    //   96	110	132	android/app/PendingIntent$CanceledException
  }

  public void setRccIntent(PendingIntent paramPendingIntent)
  {
    this.rccIntent = paramPendingIntent;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.music.MediaButtonDispatcher
 * JD-Core Version:    0.6.2
 */