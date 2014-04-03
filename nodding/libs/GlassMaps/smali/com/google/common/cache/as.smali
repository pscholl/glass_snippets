.class final Lcom/google/common/cache/as;
.super Lcom/google/common/cache/n;


# instance fields
.field a:Lcom/google/common/cache/y;

.field b:Lcom/google/common/cache/y;

.field final synthetic c:Lcom/google/common/cache/ar;


# direct methods
.method constructor <init>(Lcom/google/common/cache/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/as;->c:Lcom/google/common/cache/ar;

    invoke-direct {p0}, Lcom/google/common/cache/n;-><init>()V

    iput-object p0, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/y;

    iput-object p0, p0, Lcom/google/common/cache/as;->b:Lcom/google/common/cache/y;

    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/as;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/as;->a:Lcom/google/common/cache/y;

    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/as;->b:Lcom/google/common/cache/y;

    return-void
.end method

.method public final setWriteTime(J)V
    .locals 0

    return-void
.end method
