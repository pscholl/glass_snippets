package com.google.android.searchcommon.util;

import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultimap;
import java.util.Set;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
public class StateMachine<T extends Enum<T>>
{
  private T mCurrentState;
  private final boolean mDebug;
  private final HashMultimap<T, T> mLegalTransitions;
  private final boolean mStrictMode;
  private final String mTag;
  private final ExtraPreconditions.ThreadCheck mThreadCheck;

  @VisibleForTesting
  StateMachine(String paramString, T paramT, boolean paramBoolean1, ExtraPreconditions.ThreadCheck paramThreadCheck, HashMultimap<T, T> paramHashMultimap, boolean paramBoolean2)
  {
    this.mLegalTransitions = paramHashMultimap;
    this.mTag = ((String)Preconditions.checkNotNull(paramString));
    this.mStrictMode = paramBoolean1;
    this.mThreadCheck = paramThreadCheck;
    this.mCurrentState = ((Enum)Preconditions.checkNotNull(paramT));
    this.mDebug = paramBoolean2;
  }

  private StateMachine(String paramString, T paramT, boolean paramBoolean1, boolean paramBoolean2, HashMultimap<T, T> paramHashMultimap, boolean paramBoolean3)
  {
  }

  private void error(String paramString)
  {
    if (this.mStrictMode)
      throw new IllegalStateException(this.mTag + ":  " + paramString);
    Log.e(this.mTag, paramString);
  }

  public static <T extends Enum<T>> Builder<T> newBuilder(String paramString, T paramT)
  {
    return new Builder(paramString, paramT);
  }

  public void checkIn(T paramT)
  {
    this.mThreadCheck.check();
    if (this.mCurrentState != paramT)
      error("Current state is " + this.mCurrentState + ", expected " + paramT);
  }

  public boolean isIn(T paramT)
  {
    this.mThreadCheck.check();
    return this.mCurrentState == paramT;
  }

  public void moveTo(T paramT)
  {
    this.mThreadCheck.check();
    if ((!this.mLegalTransitions.containsKey(this.mCurrentState)) || (!this.mLegalTransitions.get(this.mCurrentState).contains(paramT)))
      error("Illegal transation " + this.mCurrentState + "->" + paramT);
    if (this.mDebug)
      Log.d(this.mTag, this.mCurrentState + "->" + paramT);
    this.mCurrentState = paramT;
  }

  public boolean notIn(T paramT)
  {
    this.mThreadCheck.check();
    return !isIn(paramT);
  }

  public String toString()
  {
    return "Current state=" + this.mCurrentState;
  }

  public static class Builder<T extends Enum<T>>
  {
    private boolean mDebug = false;
    private final T mInitialState;
    private final HashMultimap<T, T> mLegalTransitions = HashMultimap.create();
    private boolean mOneThread = false;
    private boolean mStrictMode = false;
    private final String mTag;

    public Builder(String paramString, T paramT)
    {
      this.mInitialState = paramT;
      this.mTag = paramString;
    }

    public Builder<T> addTransition(T paramT1, T paramT2)
    {
      this.mLegalTransitions.put(paramT1, paramT2);
      return this;
    }

    public StateMachine<T> build()
    {
      return new StateMachine(this.mTag, this.mInitialState, this.mStrictMode, this.mOneThread, this.mLegalTransitions, this.mDebug, null);
    }

    public Builder<T> setDebug(boolean paramBoolean)
    {
      this.mDebug = paramBoolean;
      return this;
    }

    public Builder<T> setSingleThreadOnly(boolean paramBoolean)
    {
      this.mOneThread = paramBoolean;
      return this;
    }

    public Builder<T> setStrictMode(boolean paramBoolean)
    {
      this.mStrictMode = paramBoolean;
      return this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.StateMachine
 * JD-Core Version:    0.6.2
 */