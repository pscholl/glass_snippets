.class final Lcom/google/common/collect/TreeMultiset$Reference;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 492
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Reference;,"Lcom/google/common/collect/TreeMultiset$Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 492
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Reference;,"Lcom/google/common/collect/TreeMultiset$Reference<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAndSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Reference;,"Lcom/google/common/collect/TreeMultiset$Reference<TT;>;"
    .local p1, expected:Ljava/lang/Object;,"TT;"
    .local p2, newValue:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 503
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 505
    :cond_0
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 498
    .local p0, this:Lcom/google/common/collect/TreeMultiset$Reference;,"Lcom/google/common/collect/TreeMultiset$Reference<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$Reference;->value:Ljava/lang/Object;

    return-object v0
.end method
