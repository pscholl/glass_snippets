.class final Lcom/google/common/collect/gy;
.super Lcom/google/common/collect/gw;

# interfaces
.implements Lcom/google/common/collect/gu;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/gu;

.field g:Lcom/google/common/collect/gu;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/gu;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/gw;-><init>(Ljava/lang/Object;ILcom/google/common/collect/gu;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/gy;->e:J

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gy;->f:Lcom/google/common/collect/gu;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gy;->g:Lcom/google/common/collect/gu;

    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/gy;->e:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gy;->f:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gy;->g:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/collect/gy;->e:J

    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gy;->f:Lcom/google/common/collect/gu;

    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gy;->g:Lcom/google/common/collect/gu;

    return-void
.end method
