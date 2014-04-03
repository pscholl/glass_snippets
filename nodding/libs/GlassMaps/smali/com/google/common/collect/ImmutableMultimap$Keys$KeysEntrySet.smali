.class Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Keys;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Keys;Lcom/google/common/collect/do;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;-><init>(Lcom/google/common/collect/ImmutableMultimap$Keys;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;-><init>(Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public iterator()Lcom/google/common/collect/mv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;->this$1:Lcom/google/common/collect/ImmutableMultimap$Keys;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method
