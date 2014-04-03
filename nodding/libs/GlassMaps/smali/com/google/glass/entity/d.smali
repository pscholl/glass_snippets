.class final Lcom/google/glass/entity/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/glass/entity/o;Lcom/google/glass/entity/o;)I
    .locals 2

    iget v0, p1, Lcom/google/glass/entity/o;->e:I

    iget v1, p0, Lcom/google/glass/entity/o;->e:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/google/glass/entity/o;->f:I

    iget v1, p0, Lcom/google/glass/entity/o;->f:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/glass/entity/o;

    check-cast p2, Lcom/google/glass/entity/o;

    invoke-static {p1, p2}, Lcom/google/glass/entity/d;->a(Lcom/google/glass/entity/o;Lcom/google/glass/entity/o;)I

    move-result v0

    return v0
.end method
