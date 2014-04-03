.class final Lcom/google/common/cache/ai;
.super Lcom/google/common/cache/m;


# instance fields
.field final synthetic c:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/ai;->c:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/m;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/ai;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/cache/ag;

    iget-object v1, p0, Lcom/google/common/cache/ai;->c:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/ag;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method
