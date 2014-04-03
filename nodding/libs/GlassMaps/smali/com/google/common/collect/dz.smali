.class public final Lcom/google/common/collect/dz;
.super Lcom/google/common/collect/dt;


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/dt;-><init>(Lcom/google/common/collect/jc;)V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/dz;->b:Ljava/util/Comparator;

    return-void
.end method

.method private c(Ljava/lang/Iterable;)Lcom/google/common/collect/dz;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Lcom/google/common/collect/dz;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Object;)Lcom/google/common/collect/dt;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/dz;->a:Lcom/google/common/collect/jc;

    check-cast v0, Lcom/google/common/collect/kp;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfSorted(Lcom/google/common/collect/kp;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/dz;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/de;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/dz;->c(Ljava/lang/Object;)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/dz;->c(Ljava/util/Iterator;)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;I)Lcom/google/common/collect/dt;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dz;->b(Ljava/lang/Object;I)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/dz;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/dz;->c(Ljava/lang/Object;)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/util/Iterator;)Lcom/google/common/collect/dt;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/dz;->c(Ljava/util/Iterator;)Lcom/google/common/collect/dz;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;I)Lcom/google/common/collect/dz;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dt;->a(Ljava/lang/Object;I)Lcom/google/common/collect/dt;

    return-object p0
.end method

.method public final c(Ljava/util/Iterator;)Lcom/google/common/collect/dz;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/util/Iterator;)Lcom/google/common/collect/dt;

    return-object p0
.end method
