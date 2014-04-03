.class final Lcom/google/common/collect/fb;
.super Ljava/util/AbstractSequentialList;


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 3

    new-instance v0, Lcom/google/common/collect/fc;

    new-instance v1, Lcom/google/common/collect/fn;

    iget-object v2, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2, p1}, Lcom/google/common/collect/fn;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fc;-><init>(Lcom/google/common/collect/fb;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
