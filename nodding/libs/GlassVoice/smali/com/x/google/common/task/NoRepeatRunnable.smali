.class public Lcom/x/google/common/task/NoRepeatRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BLACKOUT_UI:J = 0x1f4L


# instance fields
.field private blackoutPeriod:J

.field private blackoutTimestap:J

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/x/google/common/task/NoRepeatRunnable;->blackoutPeriod:J

    iput-object p1, p0, Lcom/x/google/common/task/NoRepeatRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final createNoDobuleClick(Ljava/lang/Runnable;)Lcom/x/google/common/task/NoRepeatRunnable;
    .locals 3

    new-instance v0, Lcom/x/google/common/task/NoRepeatRunnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, p0, v1, v2}, Lcom/x/google/common/task/NoRepeatRunnable;-><init>(Ljava/lang/Runnable;J)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/x/google/common/task/NoRepeatRunnable;->blackoutTimestap:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/x/google/common/task/NoRepeatRunnable;->blackoutTimestap:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lcom/x/google/common/task/NoRepeatRunnable;->blackoutPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/x/google/common/task/NoRepeatRunnable;->blackoutTimestap:J

    iget-object v0, p0, Lcom/x/google/common/task/NoRepeatRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
