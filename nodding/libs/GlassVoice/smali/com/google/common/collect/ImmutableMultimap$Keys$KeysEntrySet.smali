.class Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap$Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeysEntrySet"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Keys;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;,"Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys.KeysEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Keys;Lcom/google/common/collect/ImmutableMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 582
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;,"Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys.KeysEntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;-><init>(Lcom/google/common/collect/ImmutableMultimap$Keys;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;,"Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys.KeysEntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 597
    .local v0, mapEntries:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<+Ljava/util/Map$Entry<TK;+Ljava/util/Collection<TV;>;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;-><init>(Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;,"Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys.KeysEntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 582
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;,"Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys.KeysEntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 585
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;,"Lcom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method
