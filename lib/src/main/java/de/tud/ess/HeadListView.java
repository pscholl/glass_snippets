package de.tud.ess;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;

public class HeadListView extends ListView implements SensorEventListener {

	private static final float INVALID_X = 10;
	private Sensor mSensor;
	private int mLastAccuracy;
	private SensorManager mSensorManager;
	private float mStartX = INVALID_X;
	private static final int SENSOR_RATE_uS = 200000;
	private static final float VELOCITY = (float) (Math.PI / 180 * 2); // scroll one item per 2°


	public HeadListView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init();
	}

	public HeadListView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init();
	}

	public HeadListView(Context context) {
		super(context);
		init();
	}

	public void init() {
		if (isInEditMode())
			return;

		mSensorManager = (SensorManager) getContext().getSystemService(Context.SENSOR_SERVICE);
		mSensor = mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
	}

	public void activate() {
		if (mSensor == null)
			return;

		mStartX = INVALID_X;
		mSensorManager.registerListener(this, mSensor, SENSOR_RATE_uS);
	}

	public void deactivate() {
		mSensorManager.unregisterListener(this);
		mStartX = INVALID_X;
	}

	@Override
	protected void onVisibilityChanged(View changedView, int visibility) {
		super.onVisibilityChanged(changedView, visibility);
		if (visibility == VISIBLE && needsScrolling()) activate();
		else deactivate();
	}

	private boolean needsScrolling() {
		return getListPaddingTop() < getChildAt(0).getTop() || getChildAt(getChildCount()-1).getBottom() > getBottom() - getListPaddingBottom();
	}

	@Override
	public void onAccuracyChanged(Sensor sensor, int accuracy) {
		mLastAccuracy = accuracy;
	}

	@Override
	public void onSensorChanged(SensorEvent event) {
		float[] mat = new float[9],
				orientation = new float[3];

		if (mLastAccuracy == SensorManager.SENSOR_STATUS_UNRELIABLE)
			return;

		SensorManager.getRotationMatrixFromVector(mat, event.values);
		SensorManager.remapCoordinateSystem(mat, SensorManager.AXIS_X, SensorManager.AXIS_Z, mat);
		SensorManager.getOrientation(mat, orientation);

		float z = orientation[0], // see https://developers.google.com/glass/develop/gdk/location-sensors/index
				x = orientation[1],
				y = orientation[2];

		if (mStartX == INVALID_X)
			mStartX = x;

		final int position = (int) ((mStartX - x) * -1 / VELOCITY);
		smoothScrollToPositionFromTop(position, 0);
		;

		if (position < 0)
			mStartX = x;
		else if (position > getCount()) {
			float mEndX = (getCount() * VELOCITY) + mStartX;
			mStartX += x - mEndX;
		}
	}

}
