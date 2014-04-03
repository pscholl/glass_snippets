.class final Lcom/google/common/collect/fk;
.super Lcom/google/common/collect/jf;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/fj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fj;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fj;

    iput-object p2, p0, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fj;

    iget-object v0, v0, Lcom/google/common/collect/fj;->a:Lcom/google/common/collect/fi;

    iget-object v0, v0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fh;

    iget v0, v0, Lcom/google/common/collect/fh;->c:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fk;->a:Ljava/lang/Object;

    return-object v0
.end method
