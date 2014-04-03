package com.google.glass.entity;

import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.database.MergeCursor;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.CursorAdapter;
import com.google.glass.common.R.id;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.horizontalscroll.Card;
import com.google.glass.widget.horizontalscroll.ViewRecycler;
import java.util.List;

public abstract class CursorEntityListFragment extends EntityListFragment
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private static final String[] COLUMNS = { "_id", "display_name", "image_url", "protobuf_blob" };
  private static final int CURSOR_LOADER_ID;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private EntityAdapter adapter;
  private Cursor prependCursor;

  public CursorEntityListFragment()
  {
    this(null);
  }

  public CursorEntityListFragment(PrependEntityType paramPrependEntityType)
  {
    if (paramPrependEntityType != null)
      this.prependCursor = createPrependEntityCursor(paramPrependEntityType);
  }

  private Cursor createPrependEntityCursor(PrependEntityType paramPrependEntityType)
  {
    EntityCache localEntityCache = EntityCache.getSharedInstance();
    Object localObject;
    switch (1.$SwitchMap$com$google$glass$entity$CursorEntityListFragment$PrependEntityType[paramPrependEntityType.ordinal()])
    {
    default:
      throw new UnsupportedOperationException();
    case 1:
      if (Labs.isEnabled(Labs.Feature.MSG_GW))
        localObject = localEntityCache.getSendTargets();
      break;
    case 2:
    }
    while (true)
    {
      return new EntityListCursor(COLUMNS, (List)localObject);
      localObject = localEntityCache.getSpeakableCommunicationTargets();
      continue;
      localObject = localEntityCache.getSpeakablePlusShareTargets();
    }
  }

  protected abstract void bindView(View paramView, Cursor paramCursor);

  protected abstract Loader<Cursor> createCursorLoader(String[] paramArrayOfString);

  public final Adapter getAdapter()
  {
    return this.adapter;
  }

  protected int getPrependCursorSize()
  {
    if (this.prependCursor == null)
      return 0;
    return this.prependCursor.getCount();
  }

  protected abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.adapter = new EntityAdapter(getActivity());
    getLoaderManager().initLoader(0, null, this);
  }

  public final Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return createCursorLoader(COLUMNS);
  }

  public void onDestroy()
  {
    super.onDestroy();
    getLoaderManager().destroyLoader(0);
    Cursor localCursor = this.adapter.getCursor();
    if (localCursor != null)
      localCursor.close();
  }

  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    if (this.prependCursor != null)
    {
      Cursor[] arrayOfCursor = new Cursor[2];
      arrayOfCursor[0] = this.prependCursor;
      arrayOfCursor[1] = paramCursor;
      paramCursor = new MergeCursor(arrayOfCursor);
    }
    setCursor(paramCursor);
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    setCursor(null);
  }

  protected void setCursor(Cursor paramCursor)
  {
    this.adapter.swapCursor(paramCursor);
    if (paramCursor != null)
    {
      int i = paramCursor.getCount();
      this.sliderView.setCount(i);
      if (i == 0)
        logger.w("Cursor had no data", new Object[0]);
    }
  }

  protected boolean showFastScrollLabel(int paramInt)
  {
    if ((this.prependCursor != null) && (paramInt < this.prependCursor.getCount()))
      return false;
    return super.showFastScrollLabel(paramInt);
  }

  private class EntityAdapter extends CursorAdapter
    implements ViewRecycler
  {
    public EntityAdapter(Context arg2)
    {
      super(null, false);
    }

    public void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      CursorEntityListFragment.this.bindView(paramView, paramCursor);
    }

    public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
    {
      View localView = CursorEntityListFragment.this.newView(paramContext, paramCursor, paramViewGroup);
      if (!(localView instanceof Card))
        throw new IllegalArgumentException("View must implement Card");
      localView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
      return localView;
    }

    public void recycleView(View paramView)
    {
    }
  }

  public static enum PrependEntityType
  {
    static
    {
      PrependEntityType[] arrayOfPrependEntityType = new PrependEntityType[2];
      arrayOfPrependEntityType[0] = COMMUNICATION_TARGETS;
      arrayOfPrependEntityType[1] = PLUS_SHARES;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.CursorEntityListFragment
 * JD-Core Version:    0.6.2
 */