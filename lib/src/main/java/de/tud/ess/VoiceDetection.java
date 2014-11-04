package de.tud.ess;

import android.content.Context;
import android.util.Log;

import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceInputHelper;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ramon on 22.04.2014.
 */
public class VoiceDetection extends StubVoiceListener {

	private static final String THIS = VoiceDetection.class.getSimpleName();

	private final String[] phrases;
	private final String hotword;
	private final boolean[] enabled;
	private final VoiceConfig voiceConfig;
	private final boolean hotwordOnlyMode;
	private boolean hotwordOnly;
	private VoiceInputHelper mVoiceInputHelper;
	private VoiceDetectionListener mListener;
	private boolean mRunning = true;

	public VoiceDetection(Context context, String hotword, VoiceDetectionListener listener, boolean alwaysListen, String... phrases) {
		mVoiceInputHelper = new VoiceInputHelper(context, this);

		this.hotwordOnlyMode = !alwaysListen;
		hotwordOnly = this.hotwordOnlyMode;

		this.hotword = hotword;
		this.phrases = phrases;

		enabled = new boolean[phrases.length];

		String[] allPhrases = new String[phrases.length + 1];
		System.arraycopy(phrases, 0, allPhrases, 1, phrases.length);
		allPhrases[0] = hotword;

		voiceConfig = new VoiceConfig(allPhrases);
		voiceConfig.setShouldSaveAudio(false);

		mListener = listener;
	}

	public boolean isEnabled(int phraseID) {
		return enabled[phraseID];
	}

	public void setEnabled(int phraseID, boolean enabled) {
		this.enabled[phraseID] = enabled;
	}

	/**
	 * Commit changes to the enabled phrases
	 *
	 * Current implementation, always leaves all phrases active, only hides them, so update of VoiceConfig is never necessary
	 * (This is included to be compatible to implementations that actually change VoiceConfig)
	 *
	 * @return false if no changes were made
	 */
	public boolean update() {
		return false;
	}

	/**
	 * If the VoiceService is ready, refresh our Config
	 *
	@Override
	public void onVoiceServiceConnected() {
		super.onVoiceServiceConnected();
		mVoiceInputHelper.setVoiceConfig(mVoiceConfig);
	}*/

	@Override
	public VoiceConfig onVoiceCommand(VoiceCommand vc) {
		String literal = vc.getLiteral();

//		if (mListener == null) {
//			mVoiceInputHelper.removeVoiceServiceListener();
//			return null;
//		}

		if (literal.equalsIgnoreCase(hotword)) { // Hotword
			Log.i(THIS, "Hotword detected");
			mListener.onHotwordDetected();

			if (hotwordOnlyMode) {
				hotwordOnly = false;
			}

			return null;
		}

		if (!hotwordOnly) {
			for (int i = 0; i < phrases.length; ++i) {
				String item = phrases[i];
				if (item.equalsIgnoreCase(literal) && enabled[i]) {// XE21 definitively converts the first letter to upper case!
					Log.i(THIS, String.format("command %s", item));
					mListener.onPhraseDetected(i, item);

					if (hotwordOnlyMode)
						hotwordOnly = true;

					return null;
				}
			}
		}

		return null;
	}

	public void start() {
		mRunning = true;
        mVoiceInputHelper.setVoiceConfig(voiceConfig);
	}

	public void stop() {
		mRunning = false;
        mVoiceInputHelper.setVoiceConfig(null);
	}

	@Override
	public boolean isRunning() {
		return mRunning;
	}

	public String[] getEnabledPhrases() {
		List<String> phr = new ArrayList<>();
		for (int i=0; i<phrases.length; ++i) {
			if (enabled[i]) {
				phr.add(phrases[i]);
			}
		}

		return phr.toArray(new String[phr.size()]);
	}

	public String getHotword() {
		return hotword;
	}

	public int[] getEnabledIds() {
		List<Integer> ids = new ArrayList<>();
		for (int i=0; i<enabled.length; ++i) {
			if (enabled[i])
				ids.add(i);
		}
		int[] idArr = new int[ids.size()];
		int j = 0;
		for (int i: ids) {
			idArr[j++] = i;
		}

		return idArr;
	}

	public interface VoiceDetectionListener {
		public void onHotwordDetected();
		public void onPhraseDetected(int index, String phrase);
	}
}
