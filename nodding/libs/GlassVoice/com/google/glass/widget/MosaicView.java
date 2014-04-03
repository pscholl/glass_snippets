package com.google.glass.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.GridLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.util.DeferredContentLoader.LoadingTask.CompletionListener;
import com.google.glass.util.HandlerWrapper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

public class MosaicView extends GridLayout
{
  private static final int CELL_LAYOUT_CACHE_CAPACITY = 80;
  private static final SparseArray<MosaicSpec> LANDSCAPE_MOSAIC_MAP;

  @VisibleForTesting
  protected static final int MAX_IMAGES_LANDSCAPE = 8;

  @VisibleForTesting
  protected static final int MAX_IMAGES_PORTRAIT = 5;
  private static final SparseArray<MosaicSpec> PORTRAIT_ALT_MOSAIC_MAP;
  private static final SparseArray<MosaicSpec> PORTRAIT_MOSAIC_MAP;
  private static final SparseArray<LinkedBlockingQueue<FrameLayout>> cellLayoutCache;
  private static final FormattingLogger logger;
  private static final Handler mainThreadHandler;
  private CellsLoadedListener cellsLoadedListener;
  private DeferredContentLoader deferredContentLoader = new DeferredContentLoader();
  private final List<DeferredContentLoader.LoadingTask<?>> imageDownloadTasks = new ArrayList();
  private ImageLoader imageLoader;
  private int numberOfLoadingTasks;
  private int subtaskIndex = 0;
  private HandlerWrapper testHandler;

  static
  {
    if (!MosaicView.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      logger = FormattingLoggers.getContextLogger();
      LANDSCAPE_MOSAIC_MAP = new SparseArray();
      LANDSCAPE_MOSAIC_MAP.put(1, MosaicSpec.LANDSCAPE_1);
      LANDSCAPE_MOSAIC_MAP.put(2, MosaicSpec.LANDSCAPE_2);
      LANDSCAPE_MOSAIC_MAP.put(3, MosaicSpec.LANDSCAPE_3);
      LANDSCAPE_MOSAIC_MAP.put(4, MosaicSpec.LANDSCAPE_4);
      LANDSCAPE_MOSAIC_MAP.put(5, MosaicSpec.LANDSCAPE_5);
      LANDSCAPE_MOSAIC_MAP.put(6, MosaicSpec.LANDSCAPE_6);
      LANDSCAPE_MOSAIC_MAP.put(7, MosaicSpec.LANDSCAPE_7);
      LANDSCAPE_MOSAIC_MAP.put(8, MosaicSpec.LANDSCAPE_8);
      PORTRAIT_MOSAIC_MAP = new SparseArray();
      PORTRAIT_MOSAIC_MAP.put(1, MosaicSpec.PORTRAIT_1);
      PORTRAIT_MOSAIC_MAP.put(2, MosaicSpec.PORTRAIT_2);
      PORTRAIT_MOSAIC_MAP.put(3, MosaicSpec.PORTRAIT_3);
      PORTRAIT_MOSAIC_MAP.put(4, MosaicSpec.PORTRAIT_4);
      PORTRAIT_MOSAIC_MAP.put(5, MosaicSpec.PORTRAIT_5);
      PORTRAIT_ALT_MOSAIC_MAP = new SparseArray();
      PORTRAIT_ALT_MOSAIC_MAP.put(4, MosaicSpec.PORTRAIT_4_ALT);
      cellLayoutCache = new SparseArray(80);
      mainThreadHandler = new Handler(Looper.getMainLooper());
      return;
    }
  }

  public MosaicView(Context paramContext)
  {
    super(paramContext);
  }

  public MosaicView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MosaicView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void addCell(final int paramInt1, final int paramInt2, final int paramInt3, final int paramInt4, final int paramInt5, final int paramInt6, final GridLayout.LayoutParams paramLayoutParams)
  {
    if ((paramInt2 == -1) && (paramInt3 == -1))
      throw new IllegalArgumentException("Must supply an image source and/or a remainingCount");
    postSubtask(new Runnable()
    {
      public void run()
      {
        if (paramInt1 != MosaicView.this.subtaskIndex)
          return;
        LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)MosaicView.cellLayoutCache.get(paramInt6);
        FrameLayout localFrameLayout = null;
        if (localLinkedBlockingQueue != null)
          localFrameLayout = (FrameLayout)localLinkedBlockingQueue.poll();
        if (localFrameLayout == null)
        {
          localFrameLayout = (FrameLayout)LayoutInflater.from(MosaicView.this.getContext()).inflate(paramInt6, null);
          localFrameLayout.setTag(R.id.tag_cell_layout_type, Integer.valueOf(paramInt6));
        }
        MosaicView.this.addView(localFrameLayout, paramLayoutParams);
        if (paramInt3 > 0)
        {
          MosaicView.this.bindRemainingCountView(this.val$thisImageLoader, localFrameLayout, paramInt2, paramInt3);
          return;
        }
        MosaicView.this.bindImageView(this.val$thisImageLoader, localFrameLayout, paramInt2, paramInt4, paramInt5);
      }
    });
  }

  private void bindImageView(ImageLoader paramImageLoader, FrameLayout paramFrameLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    logger.d("Creating loading task", new Object[0]);
    DeferredContentLoader.LoadingTask localLoadingTask = paramImageLoader.createLoadingTask(getContext(), paramFrameLayout, paramInt1, paramInt2, paramInt3);
    localLoadingTask.setOnCompletedListener(new DeferredContentLoader.LoadingTask.CompletionListener()
    {
      public void onCompleted(boolean paramAnonymousBoolean)
      {
        FormattingLogger localFormattingLogger = MosaicView.logger;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Boolean.valueOf(paramAnonymousBoolean);
        arrayOfObject[1] = Integer.valueOf(MosaicView.this.numberOfLoadingTasks);
        localFormattingLogger.d("Completed loading task: %s, number left: %d", arrayOfObject);
        if (paramAnonymousBoolean)
          synchronized (MosaicView.this)
          {
            MosaicView.access$410(MosaicView.this);
            if ((MosaicView.this.numberOfLoadingTasks == 0) && (MosaicView.this.cellsLoadedListener != null))
              MosaicView.this.cellsLoadedListener.onCellsLoaded();
            return;
          }
      }
    });
    this.imageDownloadTasks.add(localLoadingTask);
    this.deferredContentLoader.startLoadForScrollItemSubview(this, localLoadingTask);
  }

  private void bindRemainingCountView(ImageLoader paramImageLoader, FrameLayout paramFrameLayout, int paramInt1, int paramInt2)
  {
    TextView localTextView = (TextView)paramFrameLayout.findViewById(R.id.text);
    String str = paramImageLoader.getBackoffText(paramInt1);
    if (str != null)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = str;
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      localTextView.setText(String.format("%s +%d", arrayOfObject2));
      return;
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt2);
    localTextView.setText(String.format("+%d", arrayOfObject1));
  }

  private void buildMosaic(boolean paramBoolean)
  {
    assert (this.imageLoader != null);
    this.subtaskIndex = (1 + this.subtaskIndex);
    GroupCountType localGroupCountType = this.imageLoader.getGroupCountType();
    int i = this.imageLoader.drawListSize();
    int j = this.imageLoader.sourceListSize();
    try
    {
      if (localGroupCountType == GroupCountType.IN_LAST_CELL);
      for (this.numberOfLoadingTasks = (i - 1); ; this.numberOfLoadingTasks = i)
      {
        FormattingLogger localFormattingLogger1 = logger;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.numberOfLoadingTasks);
        localFormattingLogger1.d("Loading %d images.", arrayOfObject1);
        if (($assertionsDisabled) || (i <= j))
          break;
        throw new AssertionError();
      }
    }
    finally
    {
    }
    int k = i;
    if (localGroupCountType == GroupCountType.ADD_CELL)
      k++;
    int m = this.imageLoader.getWidth();
    int n = this.imageLoader.getHeight();
    MosaicSpec localMosaicSpec;
    if (m > n)
    {
      localMosaicSpec = (MosaicSpec)LANDSCAPE_MOSAIC_MAP.get(k);
      if (localMosaicSpec != null)
        break label283;
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(k);
      localFormattingLogger2.w("BUG: missing mosaic specification for %s", arrayOfObject2);
    }
    label283: int i1;
    int i2;
    do
    {
      return;
      localMosaicSpec = null;
      if (paramBoolean)
        localMosaicSpec = (MosaicSpec)PORTRAIT_ALT_MOSAIC_MAP.get(k);
      if (localMosaicSpec != null)
        break;
      localMosaicSpec = (MosaicSpec)PORTRAIT_MOSAIC_MAP.get(k);
      break;
      setColumnCount(localMosaicSpec.columns);
      setRowCount(localMosaicSpec.rows);
      i1 = m / localMosaicSpec.columns;
      i2 = n / localMosaicSpec.rows;
      clearImages();
      cancelImageDownloads();
      int i3 = 0;
      if (i3 < i)
      {
        CellSpec localCellSpec = localMosaicSpec.cellSpecs[i3];
        GridLayout.LayoutParams localLayoutParams2 = createLayoutParams(localCellSpec, i1, i2);
        int i4;
        if ((localGroupCountType == GroupCountType.IN_LAST_CELL) && (i3 == i - 1))
          i4 = j - i;
        for (int i5 = localMosaicSpec.embededRemainingCountLayoutId; ; i5 = localCellSpec.layoutId)
        {
          addCell(this.subtaskIndex, i3, i4, localLayoutParams2.width, localLayoutParams2.height, i5, localLayoutParams2);
          i3++;
          break;
          i4 = -1;
        }
      }
    }
    while (localGroupCountType != GroupCountType.ADD_CELL);
    GridLayout.LayoutParams localLayoutParams1 = createLayoutParams(localMosaicSpec.cellSpecs[(k - 1)], i1, i2);
    addCell(this.subtaskIndex, -1, j - i, localLayoutParams1.width, localLayoutParams1.height, localMosaicSpec.remainingLayoutId, localLayoutParams1);
  }

  private GridLayout.LayoutParams createLayoutParams(CellSpec paramCellSpec, int paramInt1, int paramInt2)
  {
    GridLayout.LayoutParams localLayoutParams = new GridLayout.LayoutParams(GridLayout.spec(paramCellSpec.row, paramCellSpec.rowSpan), GridLayout.spec(paramCellSpec.column, paramCellSpec.colSpan));
    localLayoutParams.width = (paramInt1 * paramCellSpec.colSpan);
    localLayoutParams.height = (paramInt2 * paramCellSpec.rowSpan);
    return localLayoutParams;
  }

  public static int getMaxNumSupportedEntities(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2)
      return 8;
    return 5;
  }

  private void postSubtask(Runnable paramRunnable)
  {
    if ((Assert.isTest()) && (this.testHandler != null))
    {
      this.testHandler.post(paramRunnable);
      return;
    }
    mainThreadHandler.post(paramRunnable);
  }

  public void cancelImageDownloads()
  {
    DeferredContentLoader.cancel(this.imageDownloadTasks);
    this.imageDownloadTasks.clear();
  }

  public void clearImages()
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      FrameLayout localFrameLayout = (FrameLayout)getChildAt(i);
      int j = ((Integer)localFrameLayout.getTag(R.id.tag_cell_layout_type)).intValue();
      ImageView localImageView = (ImageView)localFrameLayout.findViewById(R.id.image);
      if (localImageView != null)
        localImageView.setImageDrawable(null);
      TextView localTextView = (TextView)localFrameLayout.findViewById(R.id.text);
      if (localTextView != null)
        localTextView.setText("");
      LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)cellLayoutCache.get(j);
      if (localLinkedBlockingQueue == null)
      {
        localLinkedBlockingQueue = new LinkedBlockingQueue(80);
        cellLayoutCache.put(j, localLinkedBlockingQueue);
      }
      localLinkedBlockingQueue.offer(localFrameLayout);
    }
    removeAllViews();
  }

  public void clearSubtasks()
  {
    if ((Assert.isTest()) && (this.testHandler != null))
    {
      this.testHandler.removeCallbacksAndMessages(null);
      return;
    }
    mainThreadHandler.removeCallbacksAndMessages(null);
  }

  public void loadImages(ImageLoader paramImageLoader)
  {
    loadImages(paramImageLoader, false);
  }

  public void loadImages(ImageLoader paramImageLoader, boolean paramBoolean)
  {
    if ((paramImageLoader != null) && (paramImageLoader.sourceListSize() > 0))
    {
      this.imageLoader = paramImageLoader;
      buildMosaic(paramBoolean);
    }
  }

  public void setCellsLoadedListener(CellsLoadedListener paramCellsLoadedListener)
  {
    this.cellsLoadedListener = paramCellsLoadedListener;
  }

  void setDeferredContentLoaderForTest(DeferredContentLoader paramDeferredContentLoader)
  {
    this.deferredContentLoader = paramDeferredContentLoader;
  }

  void setHandlerWrapperForTest(HandlerWrapper paramHandlerWrapper)
  {
    this.testHandler = paramHandlerWrapper;
  }

  private static class CellSpec
  {
    int colSpan;
    int column;
    int layoutId;
    int row;
    int rowSpan;

    private CellSpec(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      this.row = paramInt1;
      this.column = paramInt2;
      this.colSpan = paramInt4;
      this.rowSpan = paramInt3;
      this.layoutId = paramInt5;
    }
  }

  public static abstract interface CellsLoadedListener
  {
    public abstract void onCellsLoaded();
  }

  @VisibleForTesting
  static enum GroupCountType
  {
    static
    {
      ADD_CELL = new GroupCountType("ADD_CELL", 1);
      IN_LAST_CELL = new GroupCountType("IN_LAST_CELL", 2);
      GroupCountType[] arrayOfGroupCountType = new GroupCountType[3];
      arrayOfGroupCountType[0] = NONE;
      arrayOfGroupCountType[1] = ADD_CELL;
      arrayOfGroupCountType[2] = IN_LAST_CELL;
    }
  }

  private static enum MosaicSpec
  {
    MosaicView.CellSpec[] cellSpecs;
    int columns;
    int embededRemainingCountLayoutId;
    int remainingLayoutId;
    int rows;

    static
    {
      MosaicView.CellSpec[] arrayOfCellSpec1 = new MosaicView.CellSpec[1];
      arrayOfCellSpec1[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec1 = new MosaicSpec("LANDSCAPE_1", 0, 1, 1, arrayOfCellSpec1, -1, -1);
      LANDSCAPE_1 = localMosaicSpec1;
      MosaicView.CellSpec[] arrayOfCellSpec2 = new MosaicView.CellSpec[2];
      arrayOfCellSpec2[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec2[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec2 = new MosaicSpec("LANDSCAPE_2", 1, 1, 2, arrayOfCellSpec2, R.layout.mosaic_cell_big_remaining, -1);
      LANDSCAPE_2 = localMosaicSpec2;
      MosaicView.CellSpec[] arrayOfCellSpec3 = new MosaicView.CellSpec[3];
      arrayOfCellSpec3[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec3[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec3[2] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec3 = new MosaicSpec("LANDSCAPE_3", 2, 1, 3, arrayOfCellSpec3, R.layout.mosaic_cell_big_remaining, -1);
      LANDSCAPE_3 = localMosaicSpec3;
      MosaicView.CellSpec[] arrayOfCellSpec4 = new MosaicView.CellSpec[4];
      arrayOfCellSpec4[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec4[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec4[2] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec4[3] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_medium, null);
      MosaicSpec localMosaicSpec4 = new MosaicSpec("LANDSCAPE_4", 3, 2, 2, arrayOfCellSpec4, R.layout.mosaic_cell_medium_remaining, -1);
      LANDSCAPE_4 = localMosaicSpec4;
      MosaicView.CellSpec[] arrayOfCellSpec5 = new MosaicView.CellSpec[5];
      arrayOfCellSpec5[0] = new MosaicView.CellSpec(0, 0, 2, 2, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec5[1] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec5[2] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec5[3] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec5[4] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec5 = new MosaicSpec("LANDSCAPE_5", 4, 2, 4, arrayOfCellSpec5, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_5 = localMosaicSpec5;
      MosaicView.CellSpec[] arrayOfCellSpec6 = new MosaicView.CellSpec[6];
      arrayOfCellSpec6[0] = new MosaicView.CellSpec(0, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec6[1] = new MosaicView.CellSpec(1, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec6[2] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec6[3] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec6[4] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec6[5] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec6 = new MosaicSpec("LANDSCAPE_6", 5, 2, 4, arrayOfCellSpec6, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_6 = localMosaicSpec6;
      MosaicView.CellSpec[] arrayOfCellSpec7 = new MosaicView.CellSpec[7];
      arrayOfCellSpec7[0] = new MosaicView.CellSpec(0, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec7[1] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[2] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[3] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[4] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[5] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[6] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec7 = new MosaicSpec("LANDSCAPE_7", 6, 2, 4, arrayOfCellSpec7, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_7 = localMosaicSpec7;
      MosaicView.CellSpec[] arrayOfCellSpec8 = new MosaicView.CellSpec[8];
      arrayOfCellSpec8[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[2] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[3] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[4] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[5] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[6] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[7] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec8 = new MosaicSpec("LANDSCAPE_8", 7, 2, 4, arrayOfCellSpec8, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_8 = localMosaicSpec8;
      MosaicView.CellSpec[] arrayOfCellSpec9 = new MosaicView.CellSpec[1];
      arrayOfCellSpec9[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec9 = new MosaicSpec("PORTRAIT_1", 8, 1, 1, arrayOfCellSpec9, -1, -1);
      PORTRAIT_1 = localMosaicSpec9;
      MosaicView.CellSpec[] arrayOfCellSpec10 = new MosaicView.CellSpec[2];
      arrayOfCellSpec10[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec10[1] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      MosaicSpec localMosaicSpec10 = new MosaicSpec("PORTRAIT_2", 9, 2, 1, arrayOfCellSpec10, -1, R.layout.mosaic_cell_medium_embedded_remaining);
      PORTRAIT_2 = localMosaicSpec10;
      MosaicView.CellSpec[] arrayOfCellSpec11 = new MosaicView.CellSpec[3];
      arrayOfCellSpec11[0] = new MosaicView.CellSpec(0, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec11[1] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec11[2] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec11 = new MosaicSpec("PORTRAIT_3", 10, 2, 2, arrayOfCellSpec11, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_3 = localMosaicSpec11;
      MosaicView.CellSpec[] arrayOfCellSpec12 = new MosaicView.CellSpec[4];
      arrayOfCellSpec12[0] = new MosaicView.CellSpec(0, 0, 2, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec12[1] = new MosaicView.CellSpec(2, 0, 1, 2, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec12[2] = new MosaicView.CellSpec(3, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec12[3] = new MosaicView.CellSpec(3, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec12 = new MosaicSpec("PORTRAIT_4", 11, 4, 2, arrayOfCellSpec12, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_4 = localMosaicSpec12;
      MosaicView.CellSpec[] arrayOfCellSpec13 = new MosaicView.CellSpec[4];
      arrayOfCellSpec13[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec13[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec13[2] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec13[3] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec13 = new MosaicSpec("PORTRAIT_4_ALT", 12, 2, 2, arrayOfCellSpec13, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_4_ALT = localMosaicSpec13;
      MosaicView.CellSpec[] arrayOfCellSpec14 = new MosaicView.CellSpec[5];
      arrayOfCellSpec14[0] = new MosaicView.CellSpec(0, 0, 2, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec14[1] = new MosaicView.CellSpec(2, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec14[2] = new MosaicView.CellSpec(2, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec14[3] = new MosaicView.CellSpec(3, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec14[4] = new MosaicView.CellSpec(3, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec14 = new MosaicSpec("PORTRAIT_5", 13, 4, 2, arrayOfCellSpec14, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_5 = localMosaicSpec14;
      MosaicSpec[] arrayOfMosaicSpec = new MosaicSpec[14];
      arrayOfMosaicSpec[0] = LANDSCAPE_1;
      arrayOfMosaicSpec[1] = LANDSCAPE_2;
      arrayOfMosaicSpec[2] = LANDSCAPE_3;
      arrayOfMosaicSpec[3] = LANDSCAPE_4;
      arrayOfMosaicSpec[4] = LANDSCAPE_5;
      arrayOfMosaicSpec[5] = LANDSCAPE_6;
      arrayOfMosaicSpec[6] = LANDSCAPE_7;
      arrayOfMosaicSpec[7] = LANDSCAPE_8;
      arrayOfMosaicSpec[8] = PORTRAIT_1;
      arrayOfMosaicSpec[9] = PORTRAIT_2;
      arrayOfMosaicSpec[10] = PORTRAIT_3;
      arrayOfMosaicSpec[11] = PORTRAIT_4;
      arrayOfMosaicSpec[12] = PORTRAIT_4_ALT;
      arrayOfMosaicSpec[13] = PORTRAIT_5;
    }

    private MosaicSpec(int paramInt1, int paramInt2, MosaicView.CellSpec[] paramArrayOfCellSpec, int paramInt3, int paramInt4)
    {
      this.rows = paramInt1;
      this.columns = paramInt2;
      this.cellSpecs = paramArrayOfCellSpec;
      this.embededRemainingCountLayoutId = paramInt4;
      this.remainingLayoutId = paramInt3;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.MosaicView
 * JD-Core Version:    0.6.2
 */