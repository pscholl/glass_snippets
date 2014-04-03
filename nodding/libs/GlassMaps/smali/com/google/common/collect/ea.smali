.class public final Lcom/google/common/collect/ea;
.super Lcom/google/common/collect/du;


# instance fields
.field private final c:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/du;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ea;->c:Ljava/util/Comparator;

    return-void
.end method

.method private c(Ljava/lang/Iterable;)Lcom/google/common/collect/ea;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/du;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/du;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Lcom/google/common/collect/ea;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/du;->b(Ljava/lang/Object;)Lcom/google/common/collect/du;

    return-object p0
.end method

.method private c(Ljava/util/Iterator;)Lcom/google/common/collect/ea;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/du;->b(Ljava/util/Iterator;)Lcom/google/common/collect/du;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ea;->b()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ea;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/de;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ea;->c(Ljava/lang/Object;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/de;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ea;->c(Ljava/util/Iterator;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/du;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ea;->b([Ljava/lang/Object;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ea;->a:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ea;->c:Ljava/util/Comparator;

    iget v2, p0, Lcom/google/common/collect/ea;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ea;->b:I

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/du;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ea;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/du;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ea;->c(Ljava/lang/Object;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/util/Iterator;)Lcom/google/common/collect/du;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ea;->c(Ljava/util/Iterator;)Lcom/google/common/collect/ea;

    move-result-object v0

    return-object v0
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ea;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/du;->a([Ljava/lang/Object;)Lcom/google/common/collect/du;

    return-object p0
.end method
