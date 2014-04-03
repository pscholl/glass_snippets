.class final Lcom/google/common/collect/bx;
.super Lcom/google/common/collect/ji;


# instance fields
.field final synthetic a:Lcom/google/common/collect/bw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/bx;->a:Lcom/google/common/collect/bw;

    invoke-direct {p0}, Lcom/google/common/collect/ji;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/jc;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bx;->a:Lcom/google/common/collect/bw;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bx;->a:Lcom/google/common/collect/bw;

    invoke-virtual {v0}, Lcom/google/common/collect/bw;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bx;->a:Lcom/google/common/collect/bw;

    invoke-virtual {v0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
