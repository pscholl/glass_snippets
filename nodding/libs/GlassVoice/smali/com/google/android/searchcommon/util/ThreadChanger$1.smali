.class final Lcom/google/android/searchcommon/util/ThreadChanger$1;
.super Ljava/lang/Object;
.source "ThreadChanger.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Ljava/lang/Object;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1;->val$delegate:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "proxy"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 72
    #calls: Lcom/google/android/searchcommon/util/ThreadChanger;->getCallerThrowable()Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/android/searchcommon/util/ThreadChanger;->access$000()Ljava/lang/Throwable;

    move-result-object v0

    .line 73
    .local v0, callerThrowable:Ljava/lang/Throwable;
    new-instance v1, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;-><init>(Lcom/google/android/searchcommon/util/ThreadChanger$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    const/4 v2, 0x0

    return-object v2
.end method
