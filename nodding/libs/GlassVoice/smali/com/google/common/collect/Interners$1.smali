.class final Lcom/google/common/collect/Interners$1;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Interners;->newStrongInterner()Lcom/google/common/collect/Interner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$map:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/common/collect/Interners$1;->val$map:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, sample:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/google/common/collect/Interners$1;->val$map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, canonical:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .end local p1           #sample:Ljava/lang/Object;,"TE;"
    :goto_0
    return-object p1

    .restart local p1       #sample:Ljava/lang/Object;,"TE;"
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
