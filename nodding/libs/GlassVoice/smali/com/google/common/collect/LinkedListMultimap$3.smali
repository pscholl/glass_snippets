.class Lcom/google/common/collect/LinkedListMultimap$3;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3;,"Lcom/google/common/collect/LinkedListMultimap.3;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$3;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3;,"Lcom/google/common/collect/LinkedListMultimap.3;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$3;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    .line 848
    .local v0, nodes:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$3$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/common/collect/LinkedListMultimap$3$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$3;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$NodeIterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 842
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$3;,"Lcom/google/common/collect/LinkedListMultimap.3;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$3;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
