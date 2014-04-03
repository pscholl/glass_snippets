.class public final Lcom/x/google/debug/Profiling;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/debug/Profiling$ProfileMark;
    }
.end annotation


# static fields
.field private static enabled:Z

.field private static final logger:Lcom/x/google/debug/LogSource;

.field private static final profileMarks:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/x/google/debug/Profiling;

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/x/google/debug/Profiling;->logger:Lcom/x/google/debug/LogSource;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 2

    sget-object v0, Lcom/x/google/debug/Profiling;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/debug/Profiling;->enabled:Z

    sget-object v0, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public static enable()V
    .locals 2

    sget-object v0, Lcom/x/google/debug/Profiling;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/debug/Profiling;->enabled:Z

    return-void
.end method

.method public static getNumProfileMarks()I
    .locals 1

    sget-object v0, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public static getProfileMarks(Z)[Lcom/x/google/debug/Profiling$ProfileMark;
    .locals 3

    sget-object v1, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/x/google/debug/Profiling$ProfileMark;

    sget-object v2, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    sget-object v2, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getProfileMarksAndReset()[Lcom/x/google/debug/Profiling$ProfileMark;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/x/google/debug/Profiling;->getProfileMarks(Z)[Lcom/x/google/debug/Profiling$ProfileMark;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/x/google/debug/Profiling;->enabled:Z

    return v0
.end method

.method public static mark(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/x/google/debug/Profiling;->enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/x/google/debug/Profiling;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "marking "

    invoke-virtual {v0, v1, p0}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/x/google/debug/Profiling;->profileMarks:Ljava/util/Vector;

    new-instance v1, Lcom/x/google/debug/Profiling$ProfileMark;

    invoke-direct {v1, p0}, Lcom/x/google/debug/Profiling$ProfileMark;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
