.class final Lcom/google/common/collect/br;
.super Lcom/google/common/collect/cf;


# instance fields
.field private final a:Ljava/util/ListIterator;

.field private final b:Lcom/google/common/collect/bo;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/br;->a:Ljava/util/ListIterator;

    iput-object p2, p0, Lcom/google/common/collect/br;->b:Lcom/google/common/collect/bo;

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/br;->b()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/br;->b:Lcom/google/common/collect/bo;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/br;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected final b()Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/br;->a:Ljava/util/ListIterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/br;->b()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/br;->b:Lcom/google/common/collect/bo;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/br;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
