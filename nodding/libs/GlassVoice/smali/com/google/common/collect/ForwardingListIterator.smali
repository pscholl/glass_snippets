.class public abstract Lcom/google/common/collect/ForwardingListIterator;
.super Lcom/google/common/collect/ForwardingIterator;
.source "ForwardingListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingIterator",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 59
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/ForwardingListIterator;,"Lcom/google/common/collect/ForwardingListIterator<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
