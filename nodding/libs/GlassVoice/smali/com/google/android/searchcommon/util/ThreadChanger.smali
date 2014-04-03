.class public Lcom/google/android/searchcommon/util/ThreadChanger;
.super Ljava/lang/Object;
.source "ThreadChanger.java"


# static fields
.field static final DEBUG:Z = false
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ThreadChanger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/android/searchcommon/util/ThreadChanger;->getCallerThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/google/android/searchcommon/util/ThreadChanger;->addCallerStackTrace(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method private static addCallerStackTrace(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 7
    .parameter "cause"
    .parameter "callerThrowable"

    .prologue
    const/4 v6, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-object p0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/google/android/searchcommon/util/ThreadChanger;->getOriginalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 142
    .local v2, originalCause:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 144
    .local v1, causeStacktrace:[Ljava/lang/StackTraceElement;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 146
    .local v0, callerStacktrace:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v3, v4, [Ljava/lang/StackTraceElement;

    .line 149
    .local v3, stacktrace:[Ljava/lang/StackTraceElement;
    array-length v4, v1

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length v4, v1

    array-length v5, v0

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method public static final createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "executor"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, delegate:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/google/android/searchcommon/util/ThreadChanger$1;

    invoke-direct {v0, p2, p0}, Lcom/google/android/searchcommon/util/ThreadChanger$1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 105
    .local v0, handler:Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p1, delegate:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 131
    .local v0, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v3, v0

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 132
    aget-object v1, v0, v2

    invoke-static {p0, v1, p1}, Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    .line 131
    goto :goto_0
.end method

.method private static getCallerThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOriginalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "throwable"

    .prologue
    .line 159
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_0
    return-object p0
.end method
