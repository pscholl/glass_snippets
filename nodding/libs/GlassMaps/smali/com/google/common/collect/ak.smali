.class final Lcom/google/common/collect/ak;
.super Lcom/google/common/collect/bw;


# instance fields
.field final synthetic a:Lcom/google/common/collect/aj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ak;->a:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Lcom/google/common/collect/bw;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/kp;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ak;->a:Lcom/google/common/collect/aj;

    return-object v0
.end method

.method final b()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ak;->a:Lcom/google/common/collect/aj;

    invoke-virtual {v0}, Lcom/google/common/collect/aj;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ak;->a:Lcom/google/common/collect/aj;

    invoke-virtual {v0}, Lcom/google/common/collect/aj;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
