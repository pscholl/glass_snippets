.class final Lcom/google/common/collect/mr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/mt;

.field b:Lcom/google/common/collect/jd;

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/mr;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/mr;->c:Lcom/google/common/collect/TreeMultiset;

    #calls: Lcom/google/common/collect/TreeMultiset;->lastNode()Lcom/google/common/collect/mt;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$1600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/mr;->b:Lcom/google/common/collect/jd;

    return-void
.end method

.method private a()Lcom/google/common/collect/jd;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/mr;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/mr;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    #calls: Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/mt;)Lcom/google/common/collect/jd;
    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/mt;)Lcom/google/common/collect/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mr;->b:Lcom/google/common/collect/jd;

    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    invoke-static {v1}, Lcom/google/common/collect/mt;->h(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/mr;->c:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/mt;
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/mt;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    invoke-static {v1}, Lcom/google/common/collect/mt;->h(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/mr;->c:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;
    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    invoke-virtual {v2}, Lcom/google/common/collect/mt;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/mt;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/mr;->a()Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/common/collect/mr;->b:Lcom/google/common/collect/jd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/mr;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/mr;->b:Lcom/google/common/collect/jd;

    invoke-interface {v2}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/mr;->b:Lcom/google/common/collect/jd;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
