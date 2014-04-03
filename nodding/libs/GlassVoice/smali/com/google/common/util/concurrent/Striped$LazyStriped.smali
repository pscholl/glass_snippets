.class Lcom/google/common/util/concurrent/Striped$LazyStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 2
    .parameter "stripes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/google/common/util/concurrent/Striped$LazyStriped;,"Lcom/google/common/util/concurrent/Striped$LazyStriped<TL;>;"
    .local p2, supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 321
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$LazyStriped;->mask:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$LazyStriped;->size:I

    .line 322
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-static {p2}, Lcom/google/common/base/Functions;->forSupplier(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$LazyStriped;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 323
    return-void

    .line 321
    :cond_0
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$LazyStriped;->mask:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, this:Lcom/google/common/util/concurrent/Striped$LazyStriped;,"Lcom/google/common/util/concurrent/Striped$LazyStriped<TL;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$LazyStriped;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 328
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$LazyStriped;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 333
    .local p0, this:Lcom/google/common/util/concurrent/Striped$LazyStriped;,"Lcom/google/common/util/concurrent/Striped$LazyStriped<TL;>;"
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$LazyStriped;->size:I

    return v0
.end method
