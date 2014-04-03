.class Lcom/google/glass/html/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private final startTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/html/Timer;->startTime:J

    return-void
.end method


# virtual methods
.method log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/html/Timer;->startTime:J

    sub-long v0, v2, v4

    .line 16
    .local v0, elapsedMillis:J
    const-string v2, "%s, %sms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method
