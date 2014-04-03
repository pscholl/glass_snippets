.class final Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/RegularImmutableSortedMultiset$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
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
    .line 118
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;)V

    return-object v0
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
    .line 113
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 108
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;,"Lcom/google/common/collect/RegularImmutableSortedMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    #getter for: Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->access$100(Lcom/google/common/collect/RegularImmutableSortedMultiset;)I

    move-result v0

    return v0
.end method
