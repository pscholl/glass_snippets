.class final Lcom/google/common/collect/ey;
.super Ljava/util/AbstractSequentialList;


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/fn;

    iget-object v1, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/fn;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    new-instance v1, Lcom/google/common/collect/ez;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/common/collect/ez;-><init>(Lcom/google/common/collect/ey;Ljava/util/ListIterator;Lcom/google/common/collect/fn;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
