.class public final Lcom/google/common/collect/ImmutableList$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private contents:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 652
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 653
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 656
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 657
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    .line 659
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->ensureCapacity(I)Lcom/google/common/collect/ImmutableList$Builder;

    .line 684
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    aput-object p1, v0, v1

    .line 685
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 716
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 717
    aget-object v1, p1, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->ensureCapacity(I)Lcom/google/common/collect/ImmutableList$Builder;

    .line 720
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    .line 722
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 699
    check-cast v0, Ljava/util/Collection;

    .line 700
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->ensureCapacity(I)Lcom/google/common/collect/ImmutableList$Builder;

    .line 702
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 703
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 736
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 643
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    packed-switch v1, :pswitch_data_0

    .line 754
    iget v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 756
    new-instance v1, Lcom/google/common/collect/RegularImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    .line 758
    :goto_0
    return-object v1

    .line 747
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 751
    :pswitch_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 752
    .local v0, singleElement:Ljava/lang/Object;,"TE;"
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 758
    .end local v0           #singleElement:Ljava/lang/Object;,"TE;"
    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ImmutableList$Builder;->size:I

    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method ensureCapacity(I)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 2
    .parameter "minCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, this:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableList$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 670
    :cond_0
    return-object p0
.end method
