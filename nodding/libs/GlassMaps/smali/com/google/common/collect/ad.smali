.class final Lcom/google/common/collect/ad;
.super Lcom/google/common/collect/ik;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ab;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ad;->a:Lcom/google/common/collect/ab;

    invoke-direct {p0}, Lcom/google/common/collect/ik;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/ig;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Lcom/google/common/collect/ab;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ad;->a:Lcom/google/common/collect/ab;

    invoke-virtual {v0}, Lcom/google/common/collect/ab;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
