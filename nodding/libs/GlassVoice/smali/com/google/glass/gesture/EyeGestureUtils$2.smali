.class final Lcom/google/glass/gesture/EyeGestureUtils$2;
.super Landroid/os/AsyncTask;
.source "EyeGestureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceGuestModeAsync(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enableState:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$enableState:Z

    iput-object p2, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/gesture/EyeGestureUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 142
    invoke-static {}, Lcom/google/glass/gesture/EyeGestureUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Executing setting of GazeService Guest Mode to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$enableState:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$enableState:Z

    #calls: Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceGuestMode(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->access$300(Landroid/content/Context;Z)V

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/gesture/EyeGestureUtils$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "arg"

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/gesture/EyeGestureUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Decrementing wake lock."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/glass/gesture/EyeGestureUtils;->access$200(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 151
    .local v0, wakeLock:Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    :cond_0
    return-void
.end method
