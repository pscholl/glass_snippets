package de.tud.ess;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

public class ImuScrollView extends Activity {
	private TextView mTextView;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.main);
		mTextView = (TextView) findViewById(R.id.textView);

		mTextView
				.setText("\n\nHello World!\nHello World again!\nAnd again hello World!\n\n\n\nAnd some more at the bottom!\n\n");
		mTextView.setGravity(Gravity.CENTER);
	}
}
