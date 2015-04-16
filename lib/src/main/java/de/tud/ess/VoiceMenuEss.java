package de.tud.ess;

import android.app.Activity;
import android.app.FragmentManager;

/**
 * Created by phil on 09.05.14.
 */
public class VoiceMenuEss extends VoiceMenuDialogFragment implements VoiceDetection.VoiceDetectionListener{
    protected VoiceDetection mVoiceDetection;
    private String[] mPhrases;
    private Activity activity;
    private String mHotword;
    private VoiceDetection.VoiceDetectionListener mListener;
    private VoiceMenuDialogFragment mVoiceMenu;

	public static VoiceMenuEss getInstance(Activity activity, String hotword, VoiceDetection.VoiceDetectionListener listener, String... cmds) {
		VoiceMenuEss fragment = new VoiceMenuEss();

		fragment.activity = activity;
		fragment.mPhrases = cmds;
		fragment.mHotword = hotword;
		fragment.mListener = listener;

		fragment.mVoiceDetection = new VoiceDetection(activity, hotword, fragment, false, cmds);

		return fragment;
	}

    @Override
    public void onHotwordDetected() {
        FragmentManager fm = activity.getFragmentManager();
        mVoiceMenu = VoiceMenuDialogFragment.getInstance(fm,mHotword,null,mPhrases);
        mVoiceMenu.show(fm, VoiceMenuDialogFragment.FRAGMENT_TAG);
//        mVoiceDetection.changePhrases(mPhrases);

        mListener.onHotwordDetected();
    }

    @Override
    public void onPhraseDetected(int index, String phrase) {
        if (mVoiceMenu.isVisible())
            mVoiceMenu.dismiss();

        mListener.onPhraseDetected(index,phrase);
    }

    public void start() {
        mVoiceDetection.start();
    }

    public void stop() {
        mVoiceDetection.stop();
    }
}
