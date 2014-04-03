.class public Lcom/google/glass/util/ThreadCheckThreadFactory;
.super Ljava/lang/Object;
.source "ThreadCheckThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private delegate:Ljava/util/concurrent/ThreadFactory;

.field private final threads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/ThreadCheckThreadFactory;->threads:Ljava/util/Set;

    .line 18
    iput-object p1, p0, Lcom/google/glass/util/ThreadCheckThreadFactory;->delegate:Ljava/util/concurrent/ThreadFactory;

    .line 19
    return-void
.end method

.method private wrongThread(Ljava/lang/Thread;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "t"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called on a thread not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public assertThread()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->wrongThread(Ljava/lang/Thread;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public assertThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->checkThread(Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->wrongThread(Ljava/lang/Thread;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method public checkThread()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->checkThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public checkThread(Ljava/lang/Thread;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/util/ThreadCheckThreadFactory;->threads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/google/glass/util/ThreadCheckThreadFactory;->delegate:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 24
    .local v0, newThread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/glass/util/ThreadCheckThreadFactory;->threads:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    return-object v0
.end method
