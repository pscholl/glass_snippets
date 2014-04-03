.class public final Lcom/google/glass/util/ClockProvider;
.super Ljava/lang/Object;
.source "ClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/ClockProvider$ClockHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/glass/util/Clock;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/util/ClockProvider$ClockHolder;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/Clock;

    return-object v0
.end method

.method public static setForTest(Lcom/google/glass/util/Clock;)Lcom/google/glass/util/Clock;
    .locals 2
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 45
    invoke-static {}, Lcom/google/glass/util/ClockProvider$ClockHolder;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const-string v1, "null clock"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/Clock;

    return-object v0
.end method
