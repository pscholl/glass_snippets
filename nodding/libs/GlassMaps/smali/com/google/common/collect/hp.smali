.class final Lcom/google/common/collect/hp;
.super Lcom/google/common/collect/mv;


# instance fields
.field final synthetic a:Lcom/google/common/collect/mv;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hp;->a:Lcom/google/common/collect/mv;

    invoke-direct {p0}, Lcom/google/common/collect/mv;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hp;->a:Lcom/google/common/collect/mv;

    invoke-virtual {v0}, Lcom/google/common/collect/mv;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hp;->a:Lcom/google/common/collect/mv;

    invoke-virtual {v0}, Lcom/google/common/collect/mv;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
