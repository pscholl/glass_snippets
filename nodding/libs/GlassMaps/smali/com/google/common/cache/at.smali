.class final Lcom/google/common/cache/at;
.super Lcom/google/common/collect/ai;


# instance fields
.field final synthetic a:Lcom/google/common/cache/ar;


# direct methods
.method constructor <init>(Lcom/google/common/cache/ar;Lcom/google/common/cache/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/at;->a:Lcom/google/common/cache/ar;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 2

    invoke-interface {p1}, Lcom/google/common/cache/y;->getNextInWriteQueue()Lcom/google/common/cache/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/at;->a:Lcom/google/common/cache/ar;

    iget-object v1, v1, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/cache/y;

    invoke-direct {p0, p1}, Lcom/google/common/cache/at;->a(Lcom/google/common/cache/y;)Lcom/google/common/cache/y;

    move-result-object v0

    return-object v0
.end method
