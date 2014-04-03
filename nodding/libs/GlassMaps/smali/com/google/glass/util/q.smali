.class public final Lcom/google/glass/util/q;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/google/glass/util/o;
    .locals 1

    invoke-static {}, Lcom/google/glass/util/r;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/o;

    return-object v0
.end method
