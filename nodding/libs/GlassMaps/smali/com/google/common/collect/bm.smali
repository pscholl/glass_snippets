.class final Lcom/google/common/collect/bm;
.super Lcom/google/common/collect/ah;


# instance fields
.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ah;-><init>(Lcom/google/common/collect/af;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/bj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/bm;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private b()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bm;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/bm;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/bm;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ef;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method final synthetic a()Lcom/google/common/collect/jc;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/bm;->b()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/bm;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/bm;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
