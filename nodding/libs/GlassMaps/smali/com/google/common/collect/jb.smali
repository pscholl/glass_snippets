.class final Lcom/google/common/collect/jb;
.super Ljava/util/AbstractCollection;


# instance fields
.field final a:Lcom/google/common/collect/ig;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ig;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/jb;->a:Lcom/google/common/collect/ig;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/jb;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/jb;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0, p1}, Lcom/google/common/collect/ig;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/jb;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/jb;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->size()I

    move-result v0

    return v0
.end method
