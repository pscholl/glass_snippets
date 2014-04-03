.class final Lcom/google/common/collect/cu;
.super Lcom/google/common/collect/cy;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ct;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ct;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iget-object v0, p1, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/cy;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method

.method private b(Lcom/google/common/collect/cp;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Lcom/google/common/collect/cv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cv;-><init>(Lcom/google/common/collect/cu;Lcom/google/common/collect/cp;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/common/collect/cp;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/cu;->b(Lcom/google/common/collect/cp;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
