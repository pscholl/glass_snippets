package de.tud.ess;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

public class HeadScrollView extends ScrollView implements SensorEventListener {

	public HeadScrollView(Context context) {
		super(context);
	}

	public HeadScrollView(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public HeadScrollView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	private Sensor mSensor;
	private int mLastAccuracy;
	private SensorManager mSensorManager;
	private float mStartX = 10;
	private static final int SENSOR_RATE_uS = 200000;
	private static final float VELOCITY = -1000; // from rad to pixels

	public void activate() {
		if (mSensorManager == null) {
			mSensorManager = (SensorManager) getContext().getSystemService(Context.SENSOR_SERVICE);
			mSensor = mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
		}

		mSensorManager.registerListener(this, mSensor, SENSOR_RATE_uS);
		mStartX = 10;
	}

	public void deactivate() {
		mStartX = 10;

		if (mSensorManager == null)
			return;

		mSensorManager.unregisterListener(this);
	}

	@Override
	protected void onVisibilityChanged(View changedView, int visibility) {
		super.onVisibilityChanged(changedView, visibility);
		if (visibility == VISIBLE && needsScrolling()) activate();
		else deactivate();
	}

	private boolean needsScrolling() {
		return getPaddingTop() < getChildAt(0).getTop() || getChildAt(getChildCount()-1).getBottom() > getBottom() - getPaddingBottom();
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

		if (mStartX == 10)
			mStartX = x;

		float mEndX = mStartX - (getChildAt(0).getHeight() - getHeight() * 0.5F) / VELOCITY;

		int prior = getScrollY(),
				pos = (int) ((mStartX - x) * VELOCITY);

		if (x < mStartX) mStartX = x;
		else if (x > mEndX) mStartX += x - mEndX;

		scrollTo(0, pos);
	}

}
