.class Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->createAsList()Lcom/google/common/collect/ImmutableList;
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
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

.field final synthetic val$entryList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/RegularImmutableMultiset$EntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

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
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/RegularImmutableMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/RegularImmutableMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    #calls: Lcom/google/common/collect/RegularImmutableMultiset;->entryFromMapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/Multiset$Entry;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$200(Ljava/util/Map$Entry;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;,"Lcom/google/common/collect/RegularImmutableMultiset$EntrySet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->get(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
