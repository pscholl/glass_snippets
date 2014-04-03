.class Lcom/google/android/searchcommon/util/ThreadChanger$1$1;
.super Ljava/lang/Object;
.source "ThreadChanger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/searchcommon/util/ThreadChanger$1;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/searchcommon/util/ThreadChanger$1;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$callerThrowable:Ljava/lang/Throwable;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/android/searchcommon/util/ThreadChanger$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->this$0:Lcom/google/android/searchcommon/util/ThreadChanger$1;

    iput-object p2, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->val$args:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->val$callerThrowable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->this$0:Lcom/google/android/searchcommon/util/ThreadChanger$1;

    iget-object v3, v3, Lcom/google/android/searchcommon/util/ThreadChanger$1;->val$delegate:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 82
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/searchcommon/util/ThreadChanger$1$1;->val$callerThrowable:Ljava/lang/Throwable;

    #calls: Lcom/google/android/searchcommon/util/ThreadChanger;->addCallerStackTrace(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v2, v3}, Lcom/google/android/searchcommon/util/ThreadChanger;->access$100(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 86
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 87
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 89
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 90
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 97
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
