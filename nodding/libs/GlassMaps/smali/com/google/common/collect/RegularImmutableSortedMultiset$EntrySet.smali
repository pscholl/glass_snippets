.class final Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/kb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;)V

    return-void
.end method


# virtual methods
.method final createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;)V

    return-object v0
.end method

.method public final iterator()Lcom/google/common/collect/mv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    #getter for: Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->access$100(Lcom/google/common/collect/RegularImmutableSortedMultiset;)I

    move-result v0

    return v0
.end method
