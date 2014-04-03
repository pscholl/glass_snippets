.class final Lcom/google/common/collect/dj;
.super Lcom/google/common/collect/mw;


# instance fields
.field final synthetic a:Lcom/google/common/collect/mw;

.field final synthetic b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/mw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/dj;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-direct {p0}, Lcom/google/common/collect/mw;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-virtual {v0}, Lcom/google/common/collect/mw;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-virtual {v0}, Lcom/google/common/collect/mw;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-virtual {v0}, Lcom/google/common/collect/mw;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/dj;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-virtual {v1}, Lcom/google/common/collect/mw;->previousIndex()I

    move-result v1

    #calls: Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-virtual {v0}, Lcom/google/common/collect/mw;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/dj;->b:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/dj;->a:Lcom/google/common/collect/mw;

    invoke-virtual {v1}, Lcom/google/common/collect/mw;->nextIndex()I

    move-result v1

    #calls: Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method
