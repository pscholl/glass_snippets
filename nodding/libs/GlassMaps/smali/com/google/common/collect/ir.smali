.class final Lcom/google/common/collect/ir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/iq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/ir;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    iget-object v0, v0, Lcom/google/common/collect/iq;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    iget-object v1, v1, Lcom/google/common/collect/iq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/ir;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ir;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ir;->a:I

    iget-object v0, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    iget-object v0, v0, Lcom/google/common/collect/iq;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    iget-object v1, v1, Lcom/google/common/collect/iq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/collect/ir;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ir;->a:I

    iget-object v0, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    iget-object v0, v0, Lcom/google/common/collect/iq;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/collect/iq;

    iget-object v1, v1, Lcom/google/common/collect/iq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
