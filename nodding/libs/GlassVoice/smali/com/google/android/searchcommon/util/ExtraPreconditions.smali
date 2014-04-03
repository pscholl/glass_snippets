.class public Lcom/google/android/searchcommon/util/ExtraPreconditions;
.super Ljava/lang/Object;
.source "ExtraPreconditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;,
        Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;,
        Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sThreadChecksDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static checkBcp47Locale(Ljava/lang/String;)V
    .locals 4
    .parameter "bcp47Locale"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 157
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method public static checkHoldsLock(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 152
    return-void
.end method

.method public static checkMainThread()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/google/android/searchcommon/util/ExtraPreconditions;->sThreadChecksDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 41
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNotMainThread()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/google/android/searchcommon/util/ExtraPreconditions;->sThreadChecksDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 36
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createAnyThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static varargs createSetThreadsCheck([Ljava/lang/String;)Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 1
    .parameter "threadNames"

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static setThreadChecksEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 30
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/searchcommon/util/ExtraPreconditions;->sThreadChecksDisabled:Z

    .line 31
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
