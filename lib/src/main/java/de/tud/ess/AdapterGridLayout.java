package de.tud.ess;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import android.widget.GridLayout;

import java.util.LinkedList;

/**
 * Created by Ramon on 14.05.2014.
 */
public class AdapterGridLayout extends GridLayout {

	private Adapter adapter;
	private DataSetObserver observer;

	public AdapterGridLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public AdapterGridLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public AdapterGridLayout(Context context) {
		super(context);
	}

	public void setAdapter(Adapter gridAdapter) {
		if (this.adapter != null)
			this.adapter.unregisterDataSetObserver(observer);

		if (gridAdapter != null) {
			if (gridAdapter.getViewTypeCount()>1)
				throw new ClassCastException("Multiple View Types unsupported");

			this.adapter = gridAdapter;

			if (observer == null)
				observer = new DataSetObserver() {
					@Override
					public void onChanged() {
						updateFromAdapter();
					}

					@Override
					public void onInvalidated() {
						updateFromAdapter();
					}
				};

			adapter.registerDataSetObserver(observer);
		}
	}

	//TODO: check for changes, only apply differences
	private void updateFromAdapter() {
		LinkedList<View> old = new LinkedList<>();

		for (int i=0; i<getChildCount(); ++i) {
			old.add(getChildAt(i));
		}

		this.removeAllViews();

		for (int i=0; i<adapter.getCount(); ++i) {
			View recycle = null;
			if (old.size()> 0)
				recycle = old.get(0);
			View v = adapter.getView(i, recycle, this);
			this.addView(v);
		}
	}
}
