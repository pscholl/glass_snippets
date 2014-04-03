.class Lcom/google/common/collect/gw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/gu;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field final c:Lcom/google/common/collect/gu;

.field volatile d:Lcom/google/common/collect/hc;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/gu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gw;->d:Lcom/google/common/collect/hc;

    iput-object p1, p0, Lcom/google/common/collect/gw;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/gw;->b:I

    iput-object p3, p0, Lcom/google/common/collect/gw;->c:Lcom/google/common/collect/gu;

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

    iget v0, p0, Lcom/google/common/collect/gw;->b:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gw;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gw;->c:Lcom/google/common/collect/gu;

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

    iget-object v0, p0, Lcom/google/common/collect/gw;->d:Lcom/google/common/collect/hc;

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

    iget-object v0, p0, Lcom/google/common/collect/gw;->d:Lcom/google/common/collect/hc;

    iput-object p1, p0, Lcom/google/common/collect/gw;->d:Lcom/google/common/collect/hc;

    invoke-interface {v0, p1}, Lcom/google/common/collect/hc;->a(Lcom/google/common/collect/hc;)V

    return-void
.end method
