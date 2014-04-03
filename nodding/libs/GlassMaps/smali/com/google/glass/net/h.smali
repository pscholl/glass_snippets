.class public Lcom/google/glass/net/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/glass/userevent/a;

.field private final d:Lcom/google/glass/net/b;

.field private final e:Z

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Z

.field private j:I

.field private k:Z

.field private final l:Ljava/util/concurrent/locks/ReentrantLock;

.field private final m:Ljava/util/concurrent/locks/Condition;

.field private n:J

.field private o:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/h;->m:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/glass/net/i;

    invoke-direct {v0, p0}, Lcom/google/glass/net/i;-><init>(Lcom/google/glass/net/h;)V

    iput-object v0, p0, Lcom/google/glass/net/h;->o:Ljava/util/Comparator;

    invoke-static {p2}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/net/h;->d:Lcom/google/glass/net/b;

    iput-boolean p3, p0, Lcom/google/glass/net/h;->e:Z

    iput-object p4, p0, Lcom/google/glass/net/h;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/glass/userevent/a;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/net/h;->c:Lcom/google/glass/userevent/a;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/net/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Z)Lcom/google/glass/net/r;
    .locals 11

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Lcom/google/glass/net/j;

    invoke-direct {v5, p0, v10, v8, v9}, Lcom/google/glass/net/j;-><init>(Lcom/google/glass/net/h;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v6, Lcom/google/glass/net/k;

    invoke-direct {v6, p0}, Lcom/google/glass/net/k;-><init>(Lcom/google/glass/net/h;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/glass/net/r;->f()Lcom/google/glass/net/r;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v2, "Interrupted during blockingDispatch"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/net/r;->a(I)Lcom/google/glass/net/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/b;

    invoke-static {v0}, Lcom/google/glass/net/r;->a(Lcom/google/protobuf/nano/b;)Lcom/google/glass/net/r;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal proto response state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(IIIJJZ)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/net/h;->c:Lcom/google/glass/userevent/a;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

    invoke-static/range {p1 .. p8}, Lcom/google/glass/net/h;->b(IIIJJZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/net/h;->c:Lcom/google/glass/userevent/a;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {p1, p2, p3}, Lcom/google/glass/net/h;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 14

    invoke-direct {p0}, Lcom/google/glass/net/h;->f()V

    iget-object v0, p0, Lcom/google/glass/net/h;->o:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/net/h;->k:Z

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    invoke-virtual {v0}, Lcom/google/glass/net/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v6, Lcom/google/googlex/glass/common/proto/d;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/d;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v9, v0

    move v13, v3

    move v3, v1

    move v1, v13

    :cond_3
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    add-int/lit8 v9, v9, 0x1

    iget-boolean v5, v0, Lcom/google/glass/net/l;->g:Z

    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    iget-object v5, v0, Lcom/google/glass/net/l;->b:Lcom/google/protobuf/nano/b;

    invoke-virtual {v5}, Lcom/google/protobuf/nano/b;->getCachedSize()I

    move-result v5

    add-int/2addr v2, v5

    :cond_4
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/googlex/glass/common/proto/f;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/f;-><init>()V

    iget-object v7, v0, Lcom/google/glass/net/l;->a:Ljava/lang/String;

    iput-object v7, v5, Lcom/google/googlex/glass/common/proto/f;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/glass/net/l;->b:Lcom/google/protobuf/nano/b;

    invoke-static {v7}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v7

    iput-object v7, v5, Lcom/google/googlex/glass/common/proto/f;->c:[B

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/glass/net/l;->b:Lcom/google/protobuf/nano/b;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/b;->getCachedSize()I

    move-result v0

    add-int/2addr v3, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    iget-object v0, v0, Lcom/google/glass/net/l;->b:Lcom/google/protobuf/nano/b;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/b;->getCachedSize()I

    move-result v0

    add-int/2addr v0, v3

    const/high16 v5, 0x2

    if-lt v0, v5, :cond_3

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/f;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/f;

    iput-object v0, v6, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    new-instance v0, Lcom/google/googlex/glass/common/proto/c;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/c;-><init>()V

    iget-wide v3, p0, Lcom/google/glass/net/h;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/c;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    if-eqz v3, :cond_6

    new-instance v3, Lcom/google/glass/b/a;

    iget-object v4, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/glass/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/b/a;->d()Lcom/google/googlex/glass/common/proto/b;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/googlex/glass/common/proto/b;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    iput-object v4, v0, Lcom/google/googlex/glass/common/proto/c;->b:[Lcom/google/googlex/glass/common/proto/b;

    :cond_6
    iput-object v0, v6, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    if-eqz v3, :cond_7

    new-instance v3, Lcom/google/glass/b/a;

    iget-object v7, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/google/glass/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/b/a;->c()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    const-string v3, "Content-Type"

    const-string v7, "application/protobuf"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/net/h;->d:Lcom/google/glass/net/b;

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v6

    invoke-interface {v3, v7, v0, v6}, Lcom/google/glass/net/b;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/w;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v0, 0x0

    if-nez v10, :cond_b

    sget-object v3, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v11, "Batch request failed due to network error."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v3, v11, v12}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    const/4 v3, 0x1

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Lcom/google/glass/net/l;->a(I)V

    move v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_8
    move v8, v0

    :goto_3
    if-lez v1, :cond_a

    const/4 v3, 0x0

    if-eqz v10, :cond_9

    iget-object v0, v10, Lcom/google/glass/net/w;->c:[B

    if-eqz v0, :cond_9

    iget-object v0, v10, Lcom/google/glass/net/w;->c:[B

    array-length v3, v0

    :cond_9
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/h;->a(IIIJJZ)V

    :cond_a
    move v0, v9

    goto/16 :goto_0

    :cond_b
    iget v3, v10, Lcom/google/glass/net/w;->a:I

    const/16 v11, 0xc8

    if-eq v3, v11, :cond_d

    sget-object v3, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v11, "Batch request failed due to internal server error."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v3, v11, v12}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    const/4 v3, 0x1

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/google/glass/net/l;->a(I)V

    move v0, v3

    goto :goto_4

    :cond_c
    move v8, v0

    goto :goto_3

    :cond_d
    :try_start_1
    iget-object v3, v10, Lcom/google/glass/net/w;->c:[B

    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/e;->a([B)Lcom/google/googlex/glass/common/proto/e;

    move-result-object v3

    iget-object v11, v3, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v11, v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-eq v11, v12, :cond_10

    sget-object v3, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v11, "Batch request failed due to batch size mismatch."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v3, v11, v12}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    move v3, v0

    :goto_5
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    const/4 v3, 0x1

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Lcom/google/glass/net/l;->a(I)V
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move v0, v3

    :goto_6
    sget-object v3, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v11, "Batch request failed due to batch protocol fault."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v3, v11, v12}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    const/4 v3, 0x1

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lcom/google/glass/net/l;->a(I)V

    move v0, v3

    goto :goto_7

    :cond_e
    move v0, v3

    :cond_f
    :goto_8
    move v8, v0

    goto/16 :goto_3

    :cond_10
    :try_start_3
    invoke-direct {p0, v8, v3}, Lcom/google/glass/net/h;->a(Ljava/util/List;Lcom/google/googlex/glass/common/proto/e;)Z
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :catch_1
    move-exception v3

    goto :goto_6

    :cond_11
    move v8, v0

    goto/16 :goto_3
.end method

.method private a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Lcom/google/glass/net/s;Z)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Z)Lcom/google/glass/net/r;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v4, "Thread interrupted during request -- calling ProtoResponseHandler#onCancel"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4, v5}, Lcom/google/glass/logging/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p4}, Lcom/google/glass/net/s;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/net/r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Lcom/google/glass/net/s;->a()V

    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/glass/net/r;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/glass/net/r;->c()I

    move-result v0

    invoke-interface {p4, v0}, Lcom/google/glass/net/s;->a(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/glass/net/r;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/glass/net/r;->e()Lcom/google/protobuf/nano/b;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/google/glass/net/s;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_2
.end method

.method private a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Ljava/util/concurrent/Executor;Z)Z
    .locals 10

    iget-object v2, p1, Lcom/google/glass/net/ServerConstants$Action;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/h;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    new-instance v0, Lcom/google/glass/net/l;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/l;-><init>(Lcom/google/glass/net/h;Ljava/lang/String;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/google/glass/net/h;->i:Z

    or-int/2addr v0, p3

    iput-boolean v0, p0, Lcom/google/glass/net/h;->i:Z

    iget v0, p0, Lcom/google/glass/net/h;->j:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    iget v0, p0, Lcom/google/glass/net/h;->j:I

    invoke-virtual {p2}, Lcom/google/protobuf/nano/b;->getCachedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/net/h;->j:I

    invoke-direct {p0}, Lcom/google/glass/net/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/net/h;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private a(Ljava/util/List;Lcom/google/googlex/glass/common/proto/e;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    aget-object v3, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    iget v4, v3, Lcom/google/googlex/glass/common/proto/g;->b:I

    if-lez v4, :cond_1

    const/4 v2, 0x1

    iget v3, v3, Lcom/google/googlex/glass/common/proto/g;->b:I

    invoke-virtual {v0, v3}, Lcom/google/glass/net/l;->a(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/google/googlex/glass/common/proto/g;->c:[B

    invoke-virtual {v0, v4}, Lcom/google/glass/net/l;->a([B)V

    iget-boolean v4, v0, Lcom/google/glass/net/l;->g:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/glass/net/l;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/glass/net/l;->b:Lcom/google/protobuf/nano/b;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/b;->getCachedSize()I

    move-result v0

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/g;->c:[B

    array-length v3, v3

    invoke-direct {p0, v4, v0, v3}, Lcom/google/glass/net/h;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static b(IIIJJZ)Ljava/lang/String;
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "r"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "breq"

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    const-string v6, "bres"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "l"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sub-long v6, p5, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "e"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    if-eqz p7, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "p"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "breq"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bres"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/h;->i:Z

    return-void
.end method

.method private f()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/google/glass/net/h;->n:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/net/h;->b:Landroid/content/Context;

    const-string v1, "prd_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "id"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/net/h;->n:J

    iget-wide v1, p0, Lcom/google/glass/net/h;->n:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/h;->n:J

    iget-wide v2, p0, Lcom/google/glass/net/h;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/net/h;->n:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/f/a;->a(Z)V

    iget-object v1, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/glass/net/h;->j:I

    const/high16 v2, 0x8

    if-gt v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/net/h;->i:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;)Lcom/google/glass/net/r;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Z)Lcom/google/glass/net/r;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/h;->i:Z

    iget-object v0, p0, Lcom/google/glass/net/h;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Lcom/google/glass/net/s;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Lcom/google/glass/net/s;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;)Z
    .locals 8

    iget-object v6, p0, Lcom/google/glass/net/h;->f:Ljava/util/concurrent/Executor;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Z)Z
    .locals 8

    iget-object v6, p0, Lcom/google/glass/net/h;->f:Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/net/h;->k:Z

    iget-object v0, p0, Lcom/google/glass/net/h;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/h;->k:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/glass/net/h;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/h;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/google/glass/net/h;->a:Lcom/google/glass/logging/i;

    const-string v4, "Interrupted while waiting for queue condition."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lcom/google/glass/net/h;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/l;

    invoke-virtual {v0}, Lcom/google/glass/net/l;->a()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/net/h;->e()V

    iget-boolean v0, p0, Lcom/google/glass/net/h;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/net/h;->d:Lcom/google/glass/net/b;

    invoke-interface {v0}, Lcom/google/glass/net/b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/google/glass/net/h;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/net/h;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/google/glass/net/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/google/glass/net/h;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/google/glass/net/h;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/google/glass/net/h;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/glass/net/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method
