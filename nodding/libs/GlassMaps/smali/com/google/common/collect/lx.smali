.class final Lcom/google/common/collect/lx;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/collect/lw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lw;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/lx;->a:Lcom/google/common/collect/lw;

    invoke-direct {p0, p2}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/lx;->a:Lcom/google/common/collect/lw;

    iget-object v1, v1, Lcom/google/common/collect/lw;->a:Lcom/google/common/collect/lv;

    iget-object v1, v1, Lcom/google/common/collect/lv;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/lx;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
