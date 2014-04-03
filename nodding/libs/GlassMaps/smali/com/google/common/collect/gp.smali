.class final Lcom/google/common/collect/gp;
.super Lcom/google/common/collect/gi;


# instance fields
.field a:Lcom/google/common/collect/gu;

.field b:Lcom/google/common/collect/gu;

.field final synthetic c:Lcom/google/common/collect/go;


# direct methods
.method constructor <init>(Lcom/google/common/collect/go;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gp;->c:Lcom/google/common/collect/go;

    invoke-direct {p0}, Lcom/google/common/collect/gi;-><init>()V

    iput-object p0, p0, Lcom/google/common/collect/gp;->a:Lcom/google/common/collect/gu;

    iput-object p0, p0, Lcom/google/common/collect/gp;->b:Lcom/google/common/collect/gu;

    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gp;->a:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gp;->b:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gp;->a:Lcom/google/common/collect/gu;

    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gp;->b:Lcom/google/common/collect/gu;

    return-void
.end method
