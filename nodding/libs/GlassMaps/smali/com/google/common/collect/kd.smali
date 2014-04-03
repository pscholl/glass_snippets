.class final Lcom/google/common/collect/kd;
.super Lcom/google/common/collect/g;


# instance fields
.field final synthetic a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/kd;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/g;-><init>(I)V

    return-void
.end method

.method private b(I)Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/kd;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/kd;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/kd;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
