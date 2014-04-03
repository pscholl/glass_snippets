.class Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet$1;
.super Ljava/lang/Object;
.source "ExtraPreconditions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;->check(Ljava/util/concurrent/Executor;)Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;


# direct methods
.method constructor <init>(Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet$1;->this$0:Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet$1;->this$0:Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 138
    return-void
.end method
