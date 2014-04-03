.class final Lcom/google/common/collect/kr;
.super Ljava/lang/Object;


# direct methods
.method static synthetic a(Lcom/google/common/collect/jd;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/kr;->b(Lcom/google/common/collect/jd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/jd;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
