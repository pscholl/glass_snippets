.class Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread$1;
.super Ljava/lang/Object;
.source "ExtraPreconditions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->check(Ljava/util/concurrent/Executor;)Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;


# direct methods
.method constructor <init>(Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread$1;->this$0:Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread$1;->this$0:Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 102
    return-void
.end method
