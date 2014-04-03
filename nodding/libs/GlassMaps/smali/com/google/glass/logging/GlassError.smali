.class public final enum Lcom/google/glass/logging/GlassError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/logging/GlassError;

.field public static final enum BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum FPGA_RESET:Lcom/google/glass/logging/GlassError;

.field public static final enum HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum SYSPROXY_TEARDOWN_ERROR:Lcom/google/glass/logging/GlassError;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum TWL_RESET:Lcom/google/glass/logging/GlassError;


# instance fields
.field public final errorAttachments:Ljava/util/EnumSet;

.field public final name:Ljava/lang/String;

.field public final recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

.field public final reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

.field public final signature:Ljava/lang/String;

.field public final userEventData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "FPGA_RESET"

    const-string v3, "WARNING: Probable deconfiguration of FPGA, reconfiguring ..."

    const-string v4, "FPGA resets"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v6, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v7, "17"

    new-array v8, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->FPGA_RESET:Lcom/google/glass/logging/GlassError;

    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "TWL_RESET"

    const-string v6, "WARNING: TWL6040 glitch detected and ACCCTL i2cMode is reset"

    const-string v7, "TWL-6040 resets"

    sget-object v8, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "16"

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->TWL_RESET:Lcom/google/glass/logging/GlassError;

    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "TOUCHPAD_ERROR"

    const-string v6, "Unable to find or reset touchpad device"

    const-string v7, "Touchpad error"

    sget-object v8, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "10"

    new-array v11, v13, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v12

    move v5, v13

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "MEM_HEAP_ERROR"

    const-string v6, "@@@ ABORTING: HEAP MEMORY CORRUPTION"

    const-string v7, "Memory heap error"

    sget-object v8, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "12"

    new-array v11, v13, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v12

    move v5, v14

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "HEAP_ADDR_ERROR"

    const-string v6, "@@@ ABORTING: INVALID HEAP ADDRESS"

    const-string v7, "Heap address error"

    sget-object v8, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "13"

    new-array v11, v13, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v12

    move v5, v15

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "SYSPROXY_TEARDOWN_ERROR"

    const/4 v5, 0x5

    const-string v6, "@@@ SYSPROXY TEARDOWN FAILED"

    const-string v7, "sysproxy teardown error"

    sget-object v8, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v10, "15"

    new-array v11, v12, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v11, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->SYSPROXY_TEARDOWN_ERROR:Lcom/google/glass/logging/GlassError;

    new-instance v3, Lcom/google/glass/logging/GlassError;

    const-string v4, "BLUETOOTH_MEM_HEAP_ERROR"

    const/4 v5, 0x6

    const-string v6, ">>> com.google.glass.bluetooth <<<"

    const-string v7, "Bluetooth memory heap error"

    sget-object v8, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v9, Lcom/google/glass/logging/GlassError$ReportAction;->NONE:Lcom/google/glass/logging/GlassError$ReportAction;

    const/4 v10, 0x0

    new-array v11, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v3, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/logging/GlassError;

    sget-object v1, Lcom/google/glass/logging/GlassError;->FPGA_RESET:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/logging/GlassError;->TWL_RESET:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/logging/GlassError;->SYSPROXY_TEARDOWN_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    iput-object p6, p0, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    iput-object p7, p0, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    array-length v0, p8

    if-nez v0, :cond_0

    const-class v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    :goto_0
    return-void

    :cond_0
    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    goto :goto_0
.end method

.method private static logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 3

    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method public static report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 7

    sget-object v0, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/logging/n;->a:[I

    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-virtual {v1}, Lcom/google/glass/logging/GlassError$ReportAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected report action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-virtual {p1, v0}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v3

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->SCREENSHOT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-virtual {p1, v0}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v4

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-virtual {p1, v0}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V

    :pswitch_1
    iget-object v0, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/glass/logging/GlassError;->logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    :cond_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/GlassError;
    .locals 1

    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/GlassError;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/GlassError;
    .locals 1

    sget-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, [Lcom/google/glass/logging/GlassError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/GlassError;

    return-object v0
.end method


# virtual methods
.method public final shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
