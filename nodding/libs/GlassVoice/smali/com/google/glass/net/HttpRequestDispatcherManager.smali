.class public Lcom/google/glass/net/HttpRequestDispatcherManager;
.super Ljava/lang/Object;
.source "HttpRequestDispatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/glass/net/HttpRequestDispatcher;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    const-class v1, Lcom/google/glass/net/HttpRequestDispatcherManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/net/HttpRequestDispatcherManager;->instance:Lcom/google/glass/net/HttpRequestDispatcher;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/net/HttpRequestDispatcherManager;->instance:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 24
    :cond_0
    sget-object v0, Lcom/google/glass/net/HttpRequestDispatcherManager;->instance:Lcom/google/glass/net/HttpRequestDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSharedDispatcher(Lcom/google/glass/net/HttpRequestDispatcher;)V
    .locals 2
    .parameter "dispatcher"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/net/HttpRequestDispatcherManager;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/glass/net/HttpRequestDispatcherManager;->instance:Lcom/google/glass/net/HttpRequestDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
