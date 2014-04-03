.class final Lcom/google/common/cache/p;
.super Lcom/google/common/cache/n;


# instance fields
.field a:Lcom/google/common/cache/y;

.field b:Lcom/google/common/cache/y;

.field final synthetic c:Lcom/google/common/cache/o;


# direct methods
.method constructor <init>(Lcom/google/common/cache/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/p;->c:Lcom/google/common/cache/o;

    invoke-direct {p0}, Lcom/google/common/cache/n;-><init>()V

    iput-object p0, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/y;

    iput-object p0, p0, Lcom/google/common/cache/p;->b:Lcom/google/common/cache/y;

    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/p;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .locals 0

    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/y;

    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/p;->b:Lcom/google/common/cache/y;

    return-void
.end method
