.class final Lcom/google/common/collect/jt;
.super Lcom/google/common/collect/Ordering;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .locals 3

    invoke-static {}, Lcom/google/common/collect/bd;->a()Lcom/google/common/collect/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bd;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bd;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bd;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-static {p1, p2}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result v0

    return v0
.end method
