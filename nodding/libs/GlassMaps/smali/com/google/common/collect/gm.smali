.class final Lcom/google/common/collect/gm;
.super Lcom/google/common/collect/gi;


# instance fields
.field a:Lcom/google/common/collect/gu;

.field b:Lcom/google/common/collect/gu;

.field final synthetic c:Lcom/google/common/collect/gl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gm;->c:Lcom/google/common/collect/gl;

    invoke-direct {p0}, Lcom/google/common/collect/gi;-><init>()V

    iput-object p0, p0, Lcom/google/common/collect/gm;->a:Lcom/google/common/collect/gu;

    iput-object p0, p0, Lcom/google/common/collect/gm;->b:Lcom/google/common/collect/gu;

    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gm;->a:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gm;->b:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gm;->a:Lcom/google/common/collect/gu;

    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gm;->b:Lcom/google/common/collect/gu;

    return-void
.end method
