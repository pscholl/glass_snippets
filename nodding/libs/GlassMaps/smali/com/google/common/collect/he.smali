.class Lcom/google/common/collect/he;
.super Ljava/lang/ref/WeakReference;

# interfaces
.implements Lcom/google/common/collect/gu;


# instance fields
.field final a:I

.field final b:Lcom/google/common/collect/gu;

.field volatile c:Lcom/google/common/collect/hc;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gu;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/he;->c:Lcom/google/common/collect/hc;

    iput p3, p0, Lcom/google/common/collect/he;->a:I

    iput-object p4, p0, Lcom/google/common/collect/he;->b:Lcom/google/common/collect/gu;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/he;->a:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/he;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/he;->b:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/gu;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/gu;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/gu;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/gu;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/hc;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/he;->c:Lcom/google/common/collect/hc;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/gu;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/gu;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/gu;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/gu;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/hc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/he;->c:Lcom/google/common/collect/hc;

    iput-object p1, p0, Lcom/google/common/collect/he;->c:Lcom/google/common/collect/hc;

    invoke-interface {v0, p1}, Lcom/google/common/collect/hc;->a(Lcom/google/common/collect/hc;)V

    return-void
.end method
