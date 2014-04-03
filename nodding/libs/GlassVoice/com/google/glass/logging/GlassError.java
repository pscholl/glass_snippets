package com.google.glass.logging;

import android.content.Context;
import com.google.glass.app.GlassApplication;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.Feedback;
import com.google.glass.util.Feedback.RecoveryAction;
import java.util.Arrays;
import java.util.EnumSet;

public enum GlassError
{
  private static final String TAG = GlassError.class.getSimpleName();
  public final EnumSet<ErrorAttachment> errorAttachments;
  public final String name;
  public final Feedback.RecoveryAction recoveryAction;
  public final ReportAction reportAction;
  public final String signature;
  public final String userEventData;

  static
  {
    Feedback.RecoveryAction localRecoveryAction1 = Feedback.RecoveryAction.SHOULD_SHUTDOWN;
    ReportAction localReportAction1 = ReportAction.SEND_BUGREPORT;
    ErrorAttachment[] arrayOfErrorAttachment1 = new ErrorAttachment[2];
    arrayOfErrorAttachment1[0] = ErrorAttachment.FULL_BUGREPORT;
    arrayOfErrorAttachment1[1] = ErrorAttachment.VOICE_NOTE;
    TOUCHPAD_ERROR = new GlassError("TOUCHPAD_ERROR", 2, "Unable to find or reset touchpad device", "Touchpad error", localRecoveryAction1, localReportAction1, "10", arrayOfErrorAttachment1);
    Feedback.RecoveryAction localRecoveryAction2 = Feedback.RecoveryAction.SHOULD_CONTINUE;
    ReportAction localReportAction2 = ReportAction.SEND_BUGREPORT;
    ErrorAttachment[] arrayOfErrorAttachment2 = new ErrorAttachment[2];
    arrayOfErrorAttachment2[0] = ErrorAttachment.FULL_BUGREPORT;
    arrayOfErrorAttachment2[1] = ErrorAttachment.VOICE_NOTE;
    MEM_HEAP_ERROR = new GlassError("MEM_HEAP_ERROR", 3, "@@@ ABORTING: HEAP MEMORY CORRUPTION", "Memory heap error", localRecoveryAction2, localReportAction2, "12", arrayOfErrorAttachment2);
    Feedback.RecoveryAction localRecoveryAction3 = Feedback.RecoveryAction.SHOULD_CONTINUE;
    ReportAction localReportAction3 = ReportAction.SEND_BUGREPORT;
    ErrorAttachment[] arrayOfErrorAttachment3 = new ErrorAttachment[2];
    arrayOfErrorAttachment3[0] = ErrorAttachment.FULL_BUGREPORT;
    arrayOfErrorAttachment3[1] = ErrorAttachment.VOICE_NOTE;
    HEAP_ADDR_ERROR = new GlassError("HEAP_ADDR_ERROR", 4, "@@@ ABORTING: INVALID HEAP ADDRESS", "Heap address error", localRecoveryAction3, localReportAction3, "13", arrayOfErrorAttachment3);
    Feedback.RecoveryAction localRecoveryAction4 = Feedback.RecoveryAction.SHOULD_CONTINUE;
    ReportAction localReportAction4 = ReportAction.SEND_BUGREPORT;
    ErrorAttachment[] arrayOfErrorAttachment4 = new ErrorAttachment[1];
    arrayOfErrorAttachment4[0] = ErrorAttachment.FULL_BUGREPORT;
    SYSPROXY_TEARDOWN_ERROR = new GlassError("SYSPROXY_TEARDOWN_ERROR", 5, "@@@ SYSPROXY TEARDOWN FAILED", "sysproxy teardown error", localRecoveryAction4, localReportAction4, "15", arrayOfErrorAttachment4);
    BLUETOOTH_MEM_HEAP_ERROR = new GlassError("BLUETOOTH_MEM_HEAP_ERROR", 6, ">>> com.google.glass.bluetooth <<<", "Bluetooth memory heap error", Feedback.RecoveryAction.SHOULD_REBOOT, ReportAction.NONE, null, new ErrorAttachment[0]);
    GlassError[] arrayOfGlassError = new GlassError[7];
    arrayOfGlassError[0] = FPGA_RESET;
    arrayOfGlassError[1] = TWL_RESET;
    arrayOfGlassError[2] = TOUCHPAD_ERROR;
    arrayOfGlassError[3] = MEM_HEAP_ERROR;
    arrayOfGlassError[4] = HEAP_ADDR_ERROR;
    arrayOfGlassError[5] = SYSPROXY_TEARDOWN_ERROR;
    arrayOfGlassError[6] = BLUETOOTH_MEM_HEAP_ERROR;
  }

  private GlassError(String paramString1, String paramString2, Feedback.RecoveryAction paramRecoveryAction, ReportAction paramReportAction, String paramString3, ErrorAttachment[] paramArrayOfErrorAttachment)
  {
    this.signature = paramString1;
    this.name = paramString2;
    this.recoveryAction = paramRecoveryAction;
    this.reportAction = paramReportAction;
    this.userEventData = paramString3;
    if (paramArrayOfErrorAttachment.length == 0)
    {
      this.errorAttachments = EnumSet.noneOf(ErrorAttachment.class);
      return;
    }
    this.errorAttachments = EnumSet.copyOf(Arrays.asList(paramArrayOfErrorAttachment));
  }

  private static void logUserEvent(Context paramContext, GlassError paramGlassError)
  {
    GlassApplication.from(paramContext).getUserEventHelper().log(UserEventAction.BUGREPORT_SENT, paramGlassError.userEventData);
  }

  public static void report(Context paramContext, GlassError paramGlassError)
  {
    Log.d(TAG, "Reporting error: " + paramGlassError.name, new Object[0]);
    switch (1.$SwitchMap$com$google$glass$logging$GlassError$ReportAction[paramGlassError.reportAction.ordinal()])
    {
    default:
      throw new AssertionError("Unexpected report action: " + paramGlassError.reportAction);
    case 2:
      Feedback.show(paramContext, paramGlassError.name, paramGlassError.recoveryAction, paramGlassError.shouldAttach(ErrorAttachment.FULL_BUGREPORT), paramGlassError.shouldAttach(ErrorAttachment.SCREENSHOT), paramGlassError.shouldAttach(ErrorAttachment.VOICE_NOTE), null);
    case 3:
      if (paramGlassError.userEventData != null)
        logUserEvent(paramContext, paramGlassError);
      break;
    case 1:
    }
  }

  public boolean shouldAttach(ErrorAttachment paramErrorAttachment)
  {
    return this.errorAttachments.contains(paramErrorAttachment);
  }

  static enum ErrorAttachment
  {
    static
    {
      ErrorAttachment[] arrayOfErrorAttachment = new ErrorAttachment[3];
      arrayOfErrorAttachment[0] = FULL_BUGREPORT;
      arrayOfErrorAttachment[1] = SCREENSHOT;
      arrayOfErrorAttachment[2] = VOICE_NOTE;
    }
  }

  static enum ReportAction
  {
    static
    {
      EVENT_ONLY = new ReportAction("EVENT_ONLY", 1);
      SEND_BUGREPORT = new ReportAction("SEND_BUGREPORT", 2);
      ReportAction[] arrayOfReportAction = new ReportAction[3];
      arrayOfReportAction[0] = NONE;
      arrayOfReportAction[1] = EVENT_ONLY;
      arrayOfReportAction[2] = SEND_BUGREPORT;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.GlassError
 * JD-Core Version:    0.6.2
 */