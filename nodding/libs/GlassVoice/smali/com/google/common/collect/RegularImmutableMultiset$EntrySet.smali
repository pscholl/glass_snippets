.class Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;Lcom/google/common/collect/RegularImmutableMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;)V

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
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableMultiset<TE;>.EntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    #getter for: Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableMultiset;->access$100(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 89
    .local v0, entryList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;Lcom/google/common/collect/ImmutableList;)V

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
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    #getter for: Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$100(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
