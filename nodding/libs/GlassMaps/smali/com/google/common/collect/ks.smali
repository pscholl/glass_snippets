.class final Lcom/google/common/collect/ks;
.super Lcom/google/common/collect/jg;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private final a:Lcom/google/common/collect/kp;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/jg;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/kp;

    return-void
.end method

.method private b()Lcom/google/common/collect/kp;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/kp;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Lcom/google/common/collect/jc;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->firstEntry()Lcom/google/common/collect/jd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/kr;->a(Lcom/google/common/collect/jd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/kp;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->lastEntry()Lcom/google/common/collect/jd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/kr;->a(Lcom/google/common/collect/jd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/common/collect/kp;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/ks;->b()Lcom/google/common/collect/kp;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/kp;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
