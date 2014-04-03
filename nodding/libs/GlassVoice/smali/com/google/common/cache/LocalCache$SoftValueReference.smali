.class Lcom/google/common/cache/LocalCache$SoftValueReference;
.super Ljava/lang/ref/SoftReference;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lcom/google/common/cache/LocalCache$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    .local p1, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, referent:Ljava/lang/Object;,"TV;"
    .local p3, entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;,"Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1612
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$SoftValueReference;->entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1613
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1626
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    .local p1, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p3, entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;,"Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/cache/LocalCache$SoftValueReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1620
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$SoftValueReference;->entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 1616
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1634
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 1630
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1623
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    .local p1, newValue:Ljava/lang/Object;,"TV;"
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1638
    .local p0, this:Lcom/google/common/cache/LocalCache$SoftValueReference;,"Lcom/google/common/cache/LocalCache$SoftValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
