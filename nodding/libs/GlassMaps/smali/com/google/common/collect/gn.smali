.class final Lcom/google/common/collect/gn;
.super Lcom/google/common/collect/ai;


# instance fields
.field final synthetic a:Lcom/google/common/collect/gl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/gl;Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gn;->a:Lcom/google/common/collect/gl;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/gu;)Lcom/google/common/collect/gu;
    .locals 2

    invoke-interface {p1}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gn;->a:Lcom/google/common/collect/gl;

    iget-object v1, v1, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/collect/gu;

    invoke-direct {p0, p1}, Lcom/google/common/collect/gn;->a(Lcom/google/common/collect/gu;)Lcom/google/common/collect/gu;

    move-result-object v0

    return-object v0
.end method
