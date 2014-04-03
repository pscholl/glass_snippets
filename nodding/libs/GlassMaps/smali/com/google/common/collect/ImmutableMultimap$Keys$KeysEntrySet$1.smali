.class Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

.field final synthetic val$mapEntries:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->this$2:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->val$mapEntries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->this$2:Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/jd;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->val$mapEntries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Keys$KeysEntrySet$1;->get(I)Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method
