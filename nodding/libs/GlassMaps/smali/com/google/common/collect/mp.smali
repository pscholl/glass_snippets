.class final Lcom/google/common/collect/mp;
.super Lcom/google/common/collect/jf;


# instance fields
.field final synthetic a:Lcom/google/common/collect/mt;

.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/mt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/mp;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/mt;

    invoke-direct {p0}, Lcom/google/common/collect/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/mt;

    invoke-virtual {v0}, Lcom/google/common/collect/mt;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mp;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/mp;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/mt;

    invoke-virtual {v0}, Lcom/google/common/collect/mt;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
