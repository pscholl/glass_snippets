package com.google.glass.app;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import com.google.glass.sound.SoundManager;

public abstract class GlassFragment extends Fragment
{
  public void dismiss()
  {
    getActivity().getFragmentManager().beginTransaction().remove(this).commit();
  }

  protected GlassApplication getGlassApplication()
  {
    return GlassApplication.from(getActivity());
  }

  public SoundManager getSoundManager()
  {
    return getGlassApplication().getSoundManager();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassFragment
 * JD-Core Version:    0.6.2
 */