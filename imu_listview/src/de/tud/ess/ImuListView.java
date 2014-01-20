package de.tud.ess;

import java.util.ArrayList;
import java.util.Arrays;

import android.app.Activity;
import android.content.Context;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class ImuListView extends Activity {
	private ListView mListView;
	private HeadListView mHeadScroll;

	private String[] values = new String[] { "Android", "iPhone",
			"WindowsMobile", "Blackberry", "WebOS", "Ubuntu", "Windows7",
			"Max OS X", "Linux", "OS/2", "Ubuntu", "Windows7", "Max OS X",
			"Linux", "OS/2", "Ubuntu", "Windows7", "Max OS X", "Linux", "OS/2",
			"Android", "iPhone", "WindowsMobile" };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

		setContentView(R.layout.main);
		mListView = (ListView) findViewById(R.id.listView);

		ArrayList<String> list = new ArrayList<String>(Arrays.asList(values));
		list.add("");
		list.add("");
		list.add("");
		list.add("");
		
		StableArrayAdapter adapter = new StableArrayAdapter(this, list);
		mListView.setAdapter(adapter);

		mHeadScroll = (HeadListView) findViewById(R.id.listView);
	}

	@Override
	protected void onResume() {
		mHeadScroll.activate();
		super.onResume();
	}

	@Override
	protected void onPause() {
		mHeadScroll.deactivate();
		super.onPause();
	}

	private class StableArrayAdapter extends ArrayAdapter<String> {

		private ArrayList<String> objects = new ArrayList<String>();
		private Context context;

		public StableArrayAdapter(Context context, ArrayList<String> objects) {
			super(context, 0, objects);
			
			this.context = context; 
			this.objects = objects;
		}
		
	    @Override
	    public View getView(int position, View convertView, ViewGroup parent) {
	        final View view = View.inflate(context, R.layout.item, null);
	        final TextView textView = (TextView) view.findViewById(android.R.id.text1);
            textView.setText(objects.get(position));
            
	        return view;
	    }

	}

}
