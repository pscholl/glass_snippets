.class abstract Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.super Lcom/google/common/util/concurrent/Striped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PowerOfTwoStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final mask:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "stripes"

    .prologue
    .line 262
    .local p0, this:Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;,"Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped<TL;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Striped;-><init>(Lcom/google/common/util/concurrent/Striped$1;)V

    .line 263
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Stripes must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 264
    const/high16 v0, 0x4000

    if-le p1, v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    .line 265
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :cond_1
    #calls: Lcom/google/common/util/concurrent/Striped;->ceilToPowerOfTwo(I)I
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->access$200(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;,"Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped<TL;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->indexFor(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->getAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final indexFor(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 269
    .local p0, this:Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;,"Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped<TL;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #calls: Lcom/google/common/util/concurrent/Striped;->smear(I)I
    invoke-static {v1}, Lcom/google/common/util/concurrent/Striped;->access$300(I)I

    move-result v0

    .line 270
    .local v0, hash:I
    iget v1, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    and-int/2addr v1, v0

    return v1
.end method
