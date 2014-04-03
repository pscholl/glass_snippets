.class Lcom/google/common/collect/ah;
.super Lcom/google/common/collect/ji;


# instance fields
.field final synthetic a:Lcom/google/common/collect/af;


# direct methods
.method constructor <init>(Lcom/google/common/collect/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/af;

    invoke-direct {p0}, Lcom/google/common/collect/ji;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/jc;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/af;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/af;

    invoke-virtual {v0}, Lcom/google/common/collect/af;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/af;

    invoke-virtual {v0}, Lcom/google/common/collect/af;->distinctElements()I

    move-result v0

    return v0
.end method
