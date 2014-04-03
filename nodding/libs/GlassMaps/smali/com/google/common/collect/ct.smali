.class final Lcom/google/common/collect/ct;
.super Lcom/google/common/collect/hq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/hq;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/cu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cu;-><init>(Lcom/google/common/collect/ct;)V

    return-object v0
.end method
