.class Lcom/google/android/searchcommon/util/ConcurrentUtils$2$1;
.super Ljava/lang/Thread;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/searchcommon/util/ConcurrentUtils$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/searchcommon/util/ConcurrentUtils$2;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/searchcommon/util/ConcurrentUtils$2;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/searchcommon/util/ConcurrentUtils$2$1;->this$0:Lcom/google/android/searchcommon/util/ConcurrentUtils$2;

    iput-object p3, p0, Lcom/google/android/searchcommon/util/ConcurrentUtils$2$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/searchcommon/util/ConcurrentUtils$2$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 115
    return-void
.end method
