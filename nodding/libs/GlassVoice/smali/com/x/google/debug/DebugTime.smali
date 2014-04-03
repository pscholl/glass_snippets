.class public Lcom/x/google/debug/DebugTime;
.super Ljava/lang/Object;


# instance fields
.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/x/google/debug/DebugTime;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/google/debug/DebugTime;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/x/google/debug/DebugTime;->timestamp:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/x/google/debug/DebugTime;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
