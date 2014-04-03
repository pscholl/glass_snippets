.class final Lcom/google/common/collect/fd;
.super Lcom/google/common/collect/ii;


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fd;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ii;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/ig;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fd;->a:Lcom/google/common/collect/LinkedListMultimap;

    return-object v0
.end method

.method final c()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lcom/google/common/collect/fe;

    new-instance v1, Lcom/google/common/collect/fg;

    iget-object v2, p0, Lcom/google/common/collect/fd;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/fg;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ew;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fe;-><init>(Lcom/google/common/collect/fd;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fd;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
