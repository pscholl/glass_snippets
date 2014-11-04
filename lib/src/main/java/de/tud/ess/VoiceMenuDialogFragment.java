package de.tud.ess;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.google.android.glass.media.Sounds;
import com.google.glass.voice.VoiceConfig;

/**
 * Created by Ramon on 22.04.2014.
 */
public class VoiceMenuDialogFragment extends DialogFragment {

	public static final String HOTWORD = Constants.HOTWORD;
	public static final String PHRASES = Constants.PHRASES;
	public static final String FRAGMENT_TAG = VoiceMenuDialogFragment.class.getSimpleName();
	public static final String PHRASE_IDS = Constants.PHRASES+Constants.ID;

	private String mActivationWord;
	private VoiceConfig mVoiceConfig;
	private TextView mName;
	private HeadListView mScroll;
	private AudioManager mAudio;
	private String[] mItems;
	private int[] mPhraseIds;

	/**
	 *
	 * @param fm
	 * @param hotword
	 * @param phraseIDs
	 * @param phrases
	 * @return
	 */
	public static VoiceMenuDialogFragment getInstance(FragmentManager fm, String hotword, int[] phraseIDs, String... phrases) {
		VoiceMenuDialogFragment f = (VoiceMenuDialogFragment) fm.findFragmentByTag(VoiceMenuDialogFragment.FRAGMENT_TAG);
		if (f == null)
			f = new VoiceMenuDialogFragment();
		Bundle args = new Bundle();
		args.putString(VoiceMenuDialogFragment.HOTWORD, hotword);
		args.putIntArray(VoiceMenuDialogFragment.PHRASE_IDS, phraseIDs);
		args.putStringArray(VoiceMenuDialogFragment.PHRASES, phrases);

		f.setArguments(args);

		return f;
	}

	public static VoiceMenuDialogFragment getInstance(FragmentManager fm, VoiceDetection recognition) {
		String[] phrases = recognition.getEnabledPhrases();
		String hotword = recognition.getHotword();
		int[] phraseIDs = recognition.getEnabledIds();

		return getInstance(fm, hotword, phraseIDs, phrases);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		Bundle args = getArguments();
		mItems = args.getStringArray(PHRASES);
		mPhraseIds = args.getIntArray(PHRASE_IDS);
		mActivationWord = args.getString(HOTWORD);
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

		ViewGroup layout = (ViewGroup) inflater.inflate(R.layout.voice_menu, container, false);
		mName = (TextView) layout.findViewById(R.id.hotword_text);
		mName.setText(mActivationWord + ",");
		mScroll = (HeadListView) layout.findViewById(R.id.hotword_chooser);

		mScroll.setOnKeyListener(new View.OnKeyListener() {
			@Override // catch the TAP event
			public boolean onKey(View v, int keyCode, KeyEvent event) {
				Activity activity = getActivity();
				if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER && activity != null && mScroll != null) {
					int pos = mScroll.getSelectedItemPosition();
					int id = pos;
					if (mPhraseIds != null) {
						id = mPhraseIds[pos];
					}
					String str = ((String) mScroll.getSelectedItem());
					((VoiceDetection.VoiceDetectionListener)activity).onPhraseDetected(id, str);
					if (mAudio != null)
						mAudio.playSoundEffect(Sounds.TAP);
					return true;
				}
				return false;
			}
		});

		return layout;
	}

	@Override
	public void onActivityCreated(Bundle savedInstanceState) {
		super.onActivityCreated(savedInstanceState);

		Activity activity = getActivity();


		mAudio = (AudioManager) activity.getSystemService(Context.AUDIO_SERVICE);
		mScroll.setAdapter(new ArrayAdapter<>(activity, R.layout.voice_menu_item, mItems));
	}

	@Override
	public Dialog onCreateDialog(Bundle savedInstanceState) {
		Dialog dialog = super.onCreateDialog(savedInstanceState);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		return dialog;
	}

	@Override
	public void onStart() {
		super.onStart();

		mScroll.activate();
		mScroll.requestFocus();
	}

	@Override
	public void onStop() {

		mScroll.deactivate();

		super.onStop();
	}

	@Override
	public void onDetach() {
		super.onDetach();

		mScroll.setAdapter(null);
		mAudio = null;
	}
}
