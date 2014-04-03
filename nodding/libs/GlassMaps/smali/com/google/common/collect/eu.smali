.class final Lcom/google/common/collect/eu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/ev;

.field b:Lcom/google/common/collect/es;

.field c:I

.field final synthetic d:Lcom/google/common/collect/et;


# direct methods
.method constructor <init>(Lcom/google/common/collect/et;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    invoke-static {v0}, Lcom/google/common/collect/et;->a(Lcom/google/common/collect/et;)Lcom/google/common/collect/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/eu;->a:Lcom/google/common/collect/ev;

    iget-object v0, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    invoke-static {v0}, Lcom/google/common/collect/et;->b(Lcom/google/common/collect/et;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/eu;->c:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    invoke-static {v0}, Lcom/google/common/collect/et;->b(Lcom/google/common/collect/et;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/eu;->c:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/eu;->a()V

    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Lcom/google/common/collect/ev;

    iget-object v1, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/eu;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Lcom/google/common/collect/ev;

    check-cast v0, Lcom/google/common/collect/es;

    invoke-virtual {v0}, Lcom/google/common/collect/es;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v0, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    invoke-virtual {v0}, Lcom/google/common/collect/es;->b()Lcom/google/common/collect/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/eu;->a:Lcom/google/common/collect/ev;

    return-object v1
.end method

.method public final remove()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/common/collect/eu;->a()V

    iget-object v0, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/ef;->a(Z)V

    iget-object v0, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    invoke-virtual {v0}, Lcom/google/common/collect/es;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/common/collect/db;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    iget-object v1, v1, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int v3, v0, v1

    iget-object v0, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    iget-object v0, v0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    aget-object v0, v0, v3

    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    if-ne v0, v4, :cond_4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    iget-object v1, v1, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    iget-object v0, v0, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    aput-object v0, v1, v3

    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/ev;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/ev;)V

    iget-object v0, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/es;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/es;)V

    iget-object v0, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    invoke-static {v0}, Lcom/google/common/collect/et;->c(Lcom/google/common/collect/et;)I

    iget-object v0, p0, Lcom/google/common/collect/eu;->d:Lcom/google/common/collect/et;

    invoke-static {v0}, Lcom/google/common/collect/et;->d(Lcom/google/common/collect/et;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/eu;->c:I

    :cond_0
    iput-object v2, p0, Lcom/google/common/collect/eu;->b:Lcom/google/common/collect/es;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    iput-object v0, v1, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method
