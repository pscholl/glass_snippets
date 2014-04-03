.class final Lcom/google/common/collect/iv;
.super Lcom/google/common/collect/aa;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/iu;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iu;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/iv;->b:Lcom/google/common/collect/iu;

    iput-object p2, p0, Lcom/google/common/collect/iv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/iv;->b:Lcom/google/common/collect/iu;

    iget-object v0, v0, Lcom/google/common/collect/iu;->a:Lcom/google/common/collect/it;

    iget-object v0, v0, Lcom/google/common/collect/it;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, p0, Lcom/google/common/collect/iv;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/iv;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/iv;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
