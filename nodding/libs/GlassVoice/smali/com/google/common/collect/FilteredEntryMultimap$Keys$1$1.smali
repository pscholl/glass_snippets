.class Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;->removeIf(Lcom/google/common/base/Predicate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;

.field final synthetic val$predicate:Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;Lcom/google/common/base/Predicate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;,"Lcom/google/common/collect/FilteredEntryMultimap$Keys$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;->this$2:Lcom/google/common/collect/FilteredEntryMultimap$Keys$1;

    iput-object p2, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;,"Lcom/google/common/collect/FilteredEntryMultimap$Keys$1.1;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;->apply(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;,"Lcom/google/common/collect/FilteredEntryMultimap$Keys$1.1;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredEntryMultimap$Keys$1$1;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
