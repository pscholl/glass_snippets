.class public Lcom/x/google/common/util/RuntimeCheck;
.super Ljava/lang/Object;


# static fields
.field private static isStartupComplete:Z

.field private static isTrackingStartup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    sput-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isStartupComplete:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDebug()V
    .locals 2

    invoke-static {}, Lcom/x/google/common/ConfigSettings;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a debug build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkStartupComplete()V
    .locals 2

    sget-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isStartupComplete:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startup sequence is not yet complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkTest()V
    .locals 2

    invoke-static {}, Lcom/x/google/common/ConfigSettings;->isTestBuild()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a unit or feature test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static startupBegun()V
    .locals 2

    sget-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startupBegun called multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    return-void
.end method

.method public static startupComplete()V
    .locals 2

    sget-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startupBegun before startupComplete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/common/util/RuntimeCheck;->isStartupComplete:Z

    return-void
.end method
