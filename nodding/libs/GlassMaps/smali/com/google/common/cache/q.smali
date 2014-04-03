.class final Lcom/google/common/cache/q;
.super Lcom/google/common/collect/ai;


# instance fields
.field final synthetic a:Lcom/google/common/cache/o;


# direct methods
.method constructor <init>(Lcom/google/common/cache/o;Lcom/google/common/cache/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/q;->a:Lcom/google/common/cache/o;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 2

    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInAccessQueue()Lcom/google/common/cache/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/q;->a:Lcom/google/common/cache/o;

    iget-object v1, v1, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/cache/y;

    invoke-direct {p0, p1}, Lcom/google/common/cache/q;->a(Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method
