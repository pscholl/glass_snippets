.class Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

.field final synthetic val$mapEntries:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 597
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;,"Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->this$2:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->val$mapEntries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;,"Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->this$2:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;,"Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->val$mapEntries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 601
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 597
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;,"Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->get(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
