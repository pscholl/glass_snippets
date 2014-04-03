.class final Lcom/google/common/collect/lh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/lg;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lg;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/lh;->b:Lcom/google/common/collect/lg;

    iput-object p2, p0, Lcom/google/common/collect/lh;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/lh;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/lh;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
