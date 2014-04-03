package com.google.glass.maps;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.google.glass.common.R.dimen;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class SchematicView extends View
{
  private static final int MAX_SEGMENTS = 15;
  private static final String TAG = SchematicView.class.getSimpleName();
  private static int circleRadius;
  private static int innerCircleRadius;
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static int margin;
  private static final Paint paint = new Paint();
  private static final Path path = new Path();
  private static int strokeWidth;
  private int minimumWidthPx;
  private SchematicSegment[] segments;
  private int totalWeight = 0;

  public SchematicView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SchematicView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public SchematicView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void drawCircle(Canvas paramCanvas, float paramFloat, int paramInt)
  {
    paint.reset();
    paint.setAntiAlias(true);
    paint.setStyle(Paint.Style.FILL);
    float f = getHeight() / 2;
    paint.setColor(paramInt);
    paramCanvas.drawCircle(paramFloat, f, circleRadius, paint);
    paint.setColor(-16777216);
    paramCanvas.drawCircle(paramFloat, f, innerCircleRadius, paint);
  }

  private void drawLineSegment(Canvas paramCanvas, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    paint.reset();
    paint.setAntiAlias(true);
    paint.setColor(paramInt);
    paint.setStyle(Paint.Style.STROKE);
    paint.setStrokeWidth(strokeWidth);
    if (paramBoolean)
      paint.setPathEffect(new DashPathEffect(new float[] { 10.0F, 10.0F }, 0.0F));
    path.rewind();
    float f = getHeight() / 2;
    path.moveTo(paramFloat1, f);
    path.lineTo(paramFloat2, f);
    paramCanvas.drawPath(path, paint);
  }

  private void init()
  {
    margin = getResources().getDimensionPixelSize(R.dimen.schematic_margin);
    strokeWidth = getResources().getDimensionPixelSize(R.dimen.schematic_line_stroke_width);
    circleRadius = getResources().getDimensionPixelSize(R.dimen.schematic_circle_radius);
    innerCircleRadius = getResources().getDimensionPixelSize(R.dimen.schematic_inner_circle_radius);
    this.minimumWidthPx = (10 + 2 * circleRadius);
  }

  static boolean validate(SchematicSegment[] paramArrayOfSchematicSegment)
  {
    if (paramArrayOfSchematicSegment == null);
    while (paramArrayOfSchematicSegment.length > 15)
      return false;
    switch (paramArrayOfSchematicSegment.length)
    {
    case 0:
    default:
      if (paramArrayOfSchematicSegment[0].type != SchematicSegment.Type.START)
      {
        logger.e("Segment 0 of an overview must be a start", new Object[0]);
        return false;
      }
      break;
    case 1:
      if (paramArrayOfSchematicSegment[0].type == SchematicSegment.Type.TRANSFER)
      {
        logger.e("Transfer requires an initial CONTINUE segment", new Object[0]);
        return false;
      }
      break;
    case 2:
      if ((paramArrayOfSchematicSegment[0].type != SchematicSegment.Type.CONTINUE) || (paramArrayOfSchematicSegment[1].type != SchematicSegment.Type.TRANSFER));
      break;
    }
    while (true)
    {
      return true;
      if ((paramArrayOfSchematicSegment[0].type != SchematicSegment.Type.START) || (paramArrayOfSchematicSegment[1].type != SchematicSegment.Type.END))
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramArrayOfSchematicSegment[0].type;
        arrayOfObject[1] = paramArrayOfSchematicSegment[1].type;
        localFormattingLogger.e("Illegal 2 segment schematic.  Segment 0: %s, Segment 1: %s", arrayOfObject);
        return false;
        if (paramArrayOfSchematicSegment[(-1 + paramArrayOfSchematicSegment.length)].type != SchematicSegment.Type.END)
        {
          logger.e("Last segment of an overview must be an end", new Object[0]);
          return false;
        }
        for (int i = 1; i < -1 + paramArrayOfSchematicSegment.length; i++)
          if (paramArrayOfSchematicSegment[i].type != SchematicSegment.Type.TRANSFER)
          {
            logger.e("Middle segments of an overview must be transfers", new Object[0]);
            return false;
          }
      }
    }
  }

  int getSegmentWidth(int paramInt, SchematicSegment paramSchematicSegment)
  {
    int i = paramInt - (-1 + this.segments.length) * this.minimumWidthPx;
    return this.minimumWidthPx + (int)Math.round(i * (paramSchematicSegment.weight / this.totalWeight));
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.segments == null);
    int i;
    int j;
    int k;
    int m;
    SchematicSegment[] arrayOfSchematicSegment;
    int n;
    int i1;
    label56: 
    do
    {
      return;
      i = getWidth() - 2 * margin;
      j = 2 * circleRadius;
      if (this.segments.length != 1)
        break;
      k = 1;
      m = margin;
      arrayOfSchematicSegment = this.segments;
      n = arrayOfSchematicSegment.length;
      i1 = 0;
    }
    while (i1 >= n);
    SchematicSegment localSchematicSegment = arrayOfSchematicSegment[i1];
    int i2 = 1.$SwitchMap$com$google$glass$maps$SchematicSegment$Type[localSchematicSegment.type.ordinal()];
    int i3 = 0;
    switch (i2)
    {
    default:
    case 1:
    case 2:
    case 3:
      while (true)
      {
        m += i3;
        i1++;
        break label56;
        k = 0;
        break;
        float f5 = margin + circleRadius;
        float f6 = f5 + circleRadius - 1.0F;
        if (k != 0);
        for (float f7 = getWidth() - margin; ; f7 = 1 + (i3 - j))
        {
          drawCircle(paramCanvas, f5, localSchematicSegment.color);
          drawLineSegment(paramCanvas, f6, f6 + f7, localSchematicSegment.color, localSchematicSegment.isDotted);
          break;
          i3 = getSegmentWidth(i - 2 * circleRadius, localSchematicSegment);
        }
        if (k != 0)
          drawLineSegment(paramCanvas, 0.0F, 0.0F + margin, localSchematicSegment.color, localSchematicSegment.isDotted);
        for (float f4 = margin + circleRadius; ; f4 = -1 + (getWidth() - margin - circleRadius))
        {
          drawCircle(paramCanvas, f4, localSchematicSegment.color);
          i3 = 0;
          break;
        }
        if (k != 0)
        {
          drawLineSegment(paramCanvas, 0.0F, 0.0F + getWidth(), localSchematicSegment.color, localSchematicSegment.isDotted);
          i3 = 0;
        }
        else
        {
          drawLineSegment(paramCanvas, 0.0F, 0.0F + (1 + margin), localSchematicSegment.color, localSchematicSegment.isDotted);
          i3 = 0;
        }
      }
    case 4:
    }
    float f1 = m + circleRadius;
    float f2 = f1 + circleRadius - 1.0F;
    if (this.segments.length == 2);
    for (i3 = getWidth() - margin; ; i3 = getSegmentWidth(i - 2 * circleRadius, localSchematicSegment))
    {
      float f3 = 1 + (1 + (i3 - j));
      drawCircle(paramCanvas, f1, localSchematicSegment.color);
      drawLineSegment(paramCanvas, f2, f2 + f3, localSchematicSegment.color, localSchematicSegment.isDotted);
      break;
    }
  }

  public void setSegments(SchematicSegment[] paramArrayOfSchematicSegment)
  {
    if (validate(paramArrayOfSchematicSegment))
    {
      this.segments = paramArrayOfSchematicSegment;
      this.totalWeight = 0;
      int i = paramArrayOfSchematicSegment.length;
      for (int j = 0; j < i; j++)
      {
        SchematicSegment localSchematicSegment = paramArrayOfSchematicSegment[j];
        if (localSchematicSegment.type != SchematicSegment.Type.END)
          this.totalWeight = ((int)(this.totalWeight + localSchematicSegment.weight));
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.SchematicView
 * JD-Core Version:    0.6.2
 */