.class public abstract Lcom/google/common/collect/ForwardingList;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 106
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 111
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"

    .prologue
    .line 81
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ForwardingList;->add(ILjava/lang/Object;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method protected standardAddAll(ILjava/lang/Iterable;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    .local p2, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Lists;->addAllImpl(Ljava/util/List;ILjava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->hashCodeImpl(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected standardIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardLastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 159
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected standardListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ForwardingList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardListIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "start"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->listIteratorImpl(Ljava/util/List;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardSubList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Lists;->subListImpl(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/google/common/collect/ForwardingList;,"Lcom/google/common/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
