package com.google.glass.ongoing;

import android.os.Bundle;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

class OngoingActivityMessage
{
  private static final String KEY_ACTIVITY = "activity";
  private static final String KEY_OPERATION = "operation";
  private static final String KEY_PARAMS = "params";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final OngoingActivityManager.ActivityType activity;
  private final Operation operation;
  private final Bundle params;

  OngoingActivityMessage(OngoingActivityManager.ActivityType paramActivityType, Operation paramOperation, Bundle paramBundle)
  {
    this.activity = paramActivityType;
    this.operation = paramOperation;
    if (paramBundle == null)
      paramBundle = new Bundle();
    this.params = paramBundle;
  }

  static OngoingActivityMessage fromBundle(Bundle paramBundle)
  {
    if ((paramBundle == null) || (!paramBundle.containsKey("activity")) || (!paramBundle.containsKey("operation")) || (!paramBundle.containsKey("params")))
    {
      logger.e("Bundle missing required fields", new Object[0]);
      return null;
    }
    try
    {
      OngoingActivityMessage localOngoingActivityMessage = new OngoingActivityMessage(OngoingActivityManager.ActivityType.values()[paramBundle.getInt("activity")], Operation.values()[paramBundle.getInt("operation")], paramBundle.getBundle("params"));
      return localOngoingActivityMessage;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      logger.e(localArrayIndexOutOfBoundsException, "Value out of bounds. Are sender and receiver built at different CLs?", new Object[0]);
    }
    return null;
  }

  OngoingActivityManager.ActivityType getActivityType()
  {
    return this.activity;
  }

  Operation getOperation()
  {
    return this.operation;
  }

  Bundle getParams()
  {
    return this.params;
  }

  Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("activity", this.activity.ordinal());
    localBundle.putInt("operation", this.operation.ordinal());
    localBundle.putBundle("params", this.params);
    return localBundle;
  }

  public String toString()
  {
    return "[" + this.activity + " " + this.operation + "]";
  }

  static enum Operation
  {
    static
    {
      HIDE = new Operation("HIDE", 1);
      Operation[] arrayOfOperation = new Operation[2];
      arrayOfOperation[0] = SHOW;
      arrayOfOperation[1] = HIDE;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.ongoing.OngoingActivityMessage
 * JD-Core Version:    0.6.2
 */