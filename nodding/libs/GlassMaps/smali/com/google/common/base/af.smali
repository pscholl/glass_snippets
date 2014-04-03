.class final Lcom/google/common/base/af;
.super Lcom/google/common/base/AbstractIterator;


# instance fields
.field final synthetic a:Lcom/google/common/base/ae;

.field private final b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/base/ae;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/base/af;->a:Lcom/google/common/base/ae;

    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    iget-object v0, p0, Lcom/google/common/base/af;->a:Lcom/google/common/base/ae;

    iget-object v0, v0, Lcom/google/common/base/ae;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/base/af;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/af;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/base/af;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/base/af;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
