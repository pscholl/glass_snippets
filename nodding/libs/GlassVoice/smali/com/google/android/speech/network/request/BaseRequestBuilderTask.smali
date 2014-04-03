.class public abstract Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.super Ljava/lang/Object;
.source "BaseRequestBuilderTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/speech/network/request/BaseRequestBuilderTask;,"Lcom/google/android/speech/network/request/BaseRequestBuilderTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;->mTag:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/speech/network/request/BaseRequestBuilderTask;,"Lcom/google/android/speech/network/request/BaseRequestBuilderTask<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;->build()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, request:Ljava/lang/Object;,"TT;"
    return-object v0
.end method
