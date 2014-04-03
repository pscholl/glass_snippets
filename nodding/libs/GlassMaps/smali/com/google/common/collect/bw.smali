.class abstract Lcom/google/common/collect/bw;
.super Lcom/google/common/collect/cj;

# interfaces
.implements Lcom/google/common/collect/kp;


# instance fields
.field private transient a:Ljava/util/Comparator;

.field private transient b:Ljava/util/SortedSet;

.field private transient c:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/cj;-><init>()V

    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/bx;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bx;-><init>(Lcom/google/common/collect/bw;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/kp;
.end method

.method abstract b()Ljava/util/Iterator;
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bw;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bw;->a:Ljava/util/Comparator;

    :cond_0
    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/jc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->delegate()Lcom/google/common/collect/jc;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->delegate()Lcom/google/common/collect/jc;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/kp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bw;->b:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ks;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ks;-><init>(Lcom/google/common/collect/kp;)V

    iput-object v0, p0, Lcom/google/common/collect/bw;->b:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bw;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/bw;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bw;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/jd;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->lastEntry()Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->descendingMultiset()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/jc;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/jd;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->firstEntry()Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/kp;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->descendingMultiset()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->descendingMultiset()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/bw;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bw;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
