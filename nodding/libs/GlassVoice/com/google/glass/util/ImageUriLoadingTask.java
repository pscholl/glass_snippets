package com.google.glass.util;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.IOException;

public class ImageUriLoadingTask extends DeferredContentLoader.LoadingTask<Drawable>
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Uri imageUri;
  private ImageView imageView;

  public ImageUriLoadingTask(Context paramContext, Uri paramUri, ImageView paramImageView)
  {
    super(paramContext);
    this.imageUri = paramUri;
    this.imageView = paramImageView;
  }

  protected void bindContent(Drawable paramDrawable)
  {
    if (paramDrawable != null)
      this.imageView.setImageDrawable(paramDrawable);
  }

  protected String getUserEventTag()
  {
    return "iuri";
  }

  protected Drawable loadContent(Condition paramCondition)
  {
    if (paramCondition.get())
    {
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.imageUri.toString();
      localFormattingLogger3.w("Uri load for %s cancelled", arrayOfObject3);
      return null;
    }
    String str = this.imageUri.getScheme();
    if (("content".equals(str)) || ("file".equals(str)))
      try
      {
        Drawable localDrawable = Drawable.createFromStream(getContext().getContentResolver().openInputStream(this.imageUri), null);
        return localDrawable;
      }
      catch (IOException localIOException)
      {
        FormattingLogger localFormattingLogger1 = logger;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.imageUri.toString();
        localFormattingLogger1.e(localIOException, "Unable to open image uri: %s", arrayOfObject1);
        return null;
      }
    FormattingLogger localFormattingLogger2 = logger;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = str;
    arrayOfObject2[1] = this.imageUri.toString();
    localFormattingLogger2.e("Unsupported uri scheme: %s from imageUri: %s", arrayOfObject2);
    return null;
  }

  protected void prepareContent()
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ImageUriLoadingTask
 * JD-Core Version:    0.6.2
 */