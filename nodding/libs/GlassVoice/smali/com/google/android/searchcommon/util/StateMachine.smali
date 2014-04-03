.class public Lcom/google/android/searchcommon/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/searchcommon/util/StateMachine$1;,
        Lcom/google/android/searchcommon/util/StateMachine$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCurrentState:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDebug:Z

.field private final mLegalTransitions:Lcom/google/common/collect/HashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field private final mStrictMode:Z

.field private final mTag:Ljava/lang/String;

.field private final mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;Lcom/google/common/collect/HashMultimap;Z)V
    .locals 1
    .parameter "tag"
    .parameter
    .parameter "strictMode"
    .parameter "threadCheck"
    .parameter
    .parameter "debug"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;",
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    .local p2, startState:Ljava/lang/Enum;,"TT;"
    .local p5, legalTransitions:Lcom/google/common/collect/HashMultimap;,"Lcom/google/common/collect/HashMultimap<TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p5, p0, Lcom/google/android/searchcommon/util/StateMachine;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mTag:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Lcom/google/android/searchcommon/util/StateMachine;->mStrictMode:Z

    .line 53
    iput-object p4, p0, Lcom/google/android/searchcommon/util/StateMachine;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 54
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    iput-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    .line 55
    iput-boolean p6, p0, Lcom/google/android/searchcommon/util/StateMachine;->mDebug:Z

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZZLcom/google/common/collect/HashMultimap;Z)V
    .locals 7
    .parameter "tag"
    .parameter
    .parameter "strictMode"
    .parameter "oneThreadOnly"
    .parameter
    .parameter "debug"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;ZZ",
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    .local p2, startState:Ljava/lang/Enum;,"TT;"
    .local p5, legalTransitions:Lcom/google/common/collect/HashMultimap;,"Lcom/google/common/collect/HashMultimap<TT;TT;>;"
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/searchcommon/util/StateMachine;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;Lcom/google/common/collect/HashMultimap;Z)V

    .line 44
    iget-boolean v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createAnyThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v4

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZZLcom/google/common/collect/HashMultimap;ZLcom/google/android/searchcommon/util/StateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/android/searchcommon/util/StateMachine;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZZLcom/google/common/collect/HashMultimap;Z)V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 96
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mStrictMode:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/searchcommon/util/StateMachine;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;
    .locals 1
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/google/android/searchcommon/util/StateMachine$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, state:Ljava/lang/Enum;,"TT;"
    new-instance v0, Lcom/google/android/searchcommon/util/StateMachine$Builder;

    invoke-direct {v0, p0, p1}, Lcom/google/android/searchcommon/util/StateMachine$Builder;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    return-object v0
.end method


# virtual methods
.method public checkIn(Ljava/lang/Enum;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    .local p1, state:Ljava/lang/Enum;,"TT;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 90
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    if-eq v0, p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/searchcommon/util/StateMachine;->error(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public isIn(Ljava/lang/Enum;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    .local p1, state:Ljava/lang/Enum;,"TT;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 74
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(Ljava/lang/Enum;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    .local p1, newState:Ljava/lang/Enum;,"TT;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 60
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal transation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/searchcommon/util/StateMachine;->error(Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    iput-object p1, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    .line 67
    return-void
.end method

.method public notIn(Ljava/lang/Enum;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    .local p1, state:Ljava/lang/Enum;,"TT;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine;,"Lcom/google/android/searchcommon/util/StateMachine<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/searchcommon/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
