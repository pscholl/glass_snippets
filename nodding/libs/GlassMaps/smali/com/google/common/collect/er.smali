.class final Lcom/google/common/collect/er;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/es;

.field b:Lcom/google/common/collect/es;

.field final synthetic c:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/es;
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/es;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/es;->h:Lcom/google/common/collect/es;

    iput-object v0, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/collect/es;

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/er;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/collect/es;

    iput-object v0, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/es;

    iget-object v1, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/collect/es;

    iget-object v1, v1, Lcom/google/common/collect/es;->h:Lcom/google/common/collect/es;

    iput-object v1, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/collect/es;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/er;->a:Lcom/google/common/collect/es;

    iget-object v1, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/es;
    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/es;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/er;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/es;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/ef;->a(Z)V

    iget-object v0, p0, Lcom/google/common/collect/er;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/es;

    invoke-virtual {v1}, Lcom/google/common/collect/es;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/es;

    invoke-virtual {v2}, Lcom/google/common/collect/es;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/er;->b:Lcom/google/common/collect/es;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
