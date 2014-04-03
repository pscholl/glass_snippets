.class final Lcom/google/common/collect/ao;
.super Lcom/google/common/collect/g;


# instance fields
.field final synthetic a:Lcom/google/common/collect/an;


# direct methods
.method constructor <init>(Lcom/google/common/collect/an;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/an;

    invoke-direct {p0, p2}, Lcom/google/common/collect/g;-><init>(I)V

    return-void
.end method

.method private b(I)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/ao;I)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ao;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
