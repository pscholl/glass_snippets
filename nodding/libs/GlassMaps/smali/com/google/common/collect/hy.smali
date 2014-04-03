.class final Lcom/google/common/collect/hy;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/collect/hx;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hx;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hy;->a:Lcom/google/common/collect/hx;

    invoke-direct {p0, p2}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Lcom/google/common/collect/hz;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/hz;-><init>(Lcom/google/common/collect/hy;Ljava/util/Map$Entry;)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/hy;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
