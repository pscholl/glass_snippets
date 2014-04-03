.class final Lcom/google/common/cache/r;
.super Lcom/google/common/cache/t;


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/r;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lcom/google/common/cache/t;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method

.method private b()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/r;->a()Lcom/google/common/cache/au;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/cache/r;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
