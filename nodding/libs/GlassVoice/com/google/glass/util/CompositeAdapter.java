package com.google.glass.util;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import com.google.glass.predicates.Assert;

public class CompositeAdapter extends BaseAdapter
{
  private final DataSetObserver dataSetObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      CompositeAdapter.this.notifyDataSetChanged();
    }

    public void onInvalidated()
    {
      CompositeAdapter.this.notifyDataSetInvalidated();
    }
  };
  private final Adapter first;
  private final Adapter second;

  public CompositeAdapter(Adapter paramAdapter1, Adapter paramAdapter2)
  {
    Assert.assertNotNull(paramAdapter1);
    Assert.assertNotNull(paramAdapter2);
    this.first = paramAdapter1;
    this.second = paramAdapter2;
    paramAdapter1.registerDataSetObserver(this.dataSetObserver);
    paramAdapter2.registerDataSetObserver(this.dataSetObserver);
  }

  public int getCount()
  {
    return this.first.getCount() + this.second.getCount();
  }

  public Object getItem(int paramInt)
  {
    if (paramInt < this.first.getCount())
      return this.first.getItem(paramInt);
    return this.second.getItem(paramInt - this.first.getCount());
  }

  public long getItemId(int paramInt)
  {
    if (paramInt < this.first.getCount())
      return this.first.getItemId(paramInt);
    return this.second.getItemId(paramInt - this.first.getCount());
  }

  public int getItemViewType(int paramInt)
  {
    if (paramInt < this.first.getCount())
      return this.first.getItemViewType(paramInt);
    return this.second.getItemViewType(paramInt - this.first.getCount());
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt < this.first.getCount())
      return this.first.getView(paramInt, paramView, paramViewGroup);
    return this.second.getView(paramInt - this.first.getCount(), paramView, paramViewGroup);
  }

  public int getViewTypeCount()
  {
    return this.first.getViewTypeCount() + this.second.getViewTypeCount();
  }

  public boolean hasStableIds()
  {
    return (this.first.hasStableIds()) && (this.second.hasStableIds());
  }

  public boolean isEmpty()
  {
    return (this.first.isEmpty()) && (this.second.isEmpty());
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CompositeAdapter
 * JD-Core Version:    0.6.2
 */