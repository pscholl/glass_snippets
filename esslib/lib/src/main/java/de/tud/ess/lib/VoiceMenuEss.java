package de.tud.ess.lib;

import android.app.Activity;
import android.app.FragmentManager;

/**
 * Created by phil on 09.05.14.
 */
public class VoiceMenuEss extends VoiceMenuDialogFragment implements VoiceDetection.VoiceDetectionListener{
    protected final VoiceDetection mVoiceDetection;
    private final String[] mPhrases;
    private final Activity mContext;
    private final String mHotword;
    private final VoiceDetection.VoiceDetectionListener mListener;
    private VoiceMenuDialogFragment mVoiceMenu;

    public VoiceMenuEss(Activity context, VoiceDetection.VoiceDetectionListener listener, String hotword, String ...cmds) {
        mContext = context;
        mPhrases = cmds;
        mHotword = hotword;
        mListener = listener;

        mVoiceDetection = new VoiceDetection(context, hotword, this);
    }

    @Override
    public void onHotwordDetected() {
        FragmentManager fm = mContext.getFragmentManager();
        mVoiceMenu = VoiceMenuDialogFragment.getInstance(fm,mHotword,mPhrases);
        mVoiceMenu.show(fm, VoiceMenuDialogFragment.FRAGMENT_TAG);
        mVoiceDetection.changePhrases(mPhrases);

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
