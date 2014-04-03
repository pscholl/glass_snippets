.class final Lcom/google/common/collect/mx;
.super Lcom/google/common/collect/cg;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/cg;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/mx;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/util/Map;)Lcom/google/common/collect/mx;
    .locals 1

    new-instance v0, Lcom/google/common/collect/mx;

    invoke-direct {v0, p0}, Lcom/google/common/collect/mx;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/mx;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mx;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/mx;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/mz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/mz;-><init>(Lcom/google/common/collect/mx;Lcom/google/common/collect/my;)V

    iput-object v0, p0, Lcom/google/common/collect/mx;->b:Ljava/util/Set;

    goto :goto_0
.end method
