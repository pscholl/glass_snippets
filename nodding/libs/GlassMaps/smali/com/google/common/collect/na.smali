.class final Lcom/google/common/collect/na;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/collect/mz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mz;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/na;->a:Lcom/google/common/collect/mz;

    invoke-direct {p0, p2}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Lcom/google/common/collect/nb;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/nb;-><init>(Lcom/google/common/collect/na;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/na;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
