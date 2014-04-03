.class public Lcom/google/android/searchcommon/util/StateMachine$Builder;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/searchcommon/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDebug:Z

.field private final mInitialState:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mLegalTransitions:Lcom/google/common/collect/HashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field private mOneThread:Z

.field private mStrictMode:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine$Builder;,"Lcom/google/android/searchcommon/util/StateMachine$Builder<TT;>;"
    .local p2, initialState:Ljava/lang/Enum;,"TT;"
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    .line 116
    iput-boolean v1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mStrictMode:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mOneThread:Z

    .line 118
    iput-boolean v1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mDebug:Z

    .line 121
    iput-object p2, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mInitialState:Ljava/lang/Enum;

    .line 122
    iput-object p1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mTag:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/google/android/searchcommon/util/StateMachine$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine$Builder;,"Lcom/google/android/searchcommon/util/StateMachine$Builder<TT;>;"
    .local p1, start:Ljava/lang/Enum;,"TT;"
    .local p2, end:Ljava/lang/Enum;,"TT;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    return-object p0
.end method

.method public build()Lcom/google/android/searchcommon/util/StateMachine;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/searchcommon/util/StateMachine",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine$Builder;,"Lcom/google/android/searchcommon/util/StateMachine$Builder<TT;>;"
    new-instance v0, Lcom/google/android/searchcommon/util/StateMachine;

    iget-object v1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mInitialState:Ljava/lang/Enum;

    iget-boolean v3, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mStrictMode:Z

    iget-boolean v4, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mOneThread:Z

    iget-object v5, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    iget-boolean v6, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mDebug:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/searchcommon/util/StateMachine;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZZLcom/google/common/collect/HashMultimap;ZLcom/google/android/searchcommon/util/StateMachine$1;)V

    return-object v0
.end method

.method public setDebug(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;
    .locals 0
    .parameter "debug"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/searchcommon/util/StateMachine$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine$Builder;,"Lcom/google/android/searchcommon/util/StateMachine$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mDebug:Z

    .line 132
    return-object p0
.end method

.method public setSingleThreadOnly(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;
    .locals 0
    .parameter "oneThread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/searchcommon/util/StateMachine$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine$Builder;,"Lcom/google/android/searchcommon/util/StateMachine$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mOneThread:Z

    .line 156
    return-object p0
.end method

.method public setStrictMode(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;
    .locals 0
    .parameter "strictMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/searchcommon/util/StateMachine$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/searchcommon/util/StateMachine$Builder;,"Lcom/google/android/searchcommon/util/StateMachine$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/searchcommon/util/StateMachine$Builder;->mStrictMode:Z

    .line 140
    return-object p0
.end method
