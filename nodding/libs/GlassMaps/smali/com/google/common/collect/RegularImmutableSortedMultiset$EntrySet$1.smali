.class Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/jd;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    #calls: Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/jd;
    invoke-static {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->access$200(Lcom/google/common/collect/RegularImmutableSortedMultiset;I)Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$EntrySet$1;->get(I)Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method
