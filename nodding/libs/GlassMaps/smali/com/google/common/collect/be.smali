.class final Lcom/google/common/collect/be;
.super Lcom/google/common/collect/bd;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bd;-><init>(Lcom/google/common/collect/be;)V

    return-void
.end method

.method private static a(I)Lcom/google/common/collect/bd;
    .locals 1

    if-gez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/bd;->c()Lcom/google/common/collect/bd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/common/collect/bd;->d()Lcom/google/common/collect/bd;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/bd;->e()Lcom/google/common/collect/bd;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bd;
    .locals 1

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/be;->a(I)Lcom/google/common/collect/bd;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
