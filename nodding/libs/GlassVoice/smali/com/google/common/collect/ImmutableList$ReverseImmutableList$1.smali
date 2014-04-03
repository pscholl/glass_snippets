.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

.field final synthetic val$forward:Lcom/google/common/collect/UnmodifiableListIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/UnmodifiableListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 540
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 542
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 546
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 554
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v1}, Lcom/google/common/collect/UnmodifiableListIterator;->previousIndex()I

    move-result v1

    #calls: Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 562
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;->val$forward:Lcom/google/common/collect/UnmodifiableListIterator;

    invoke-virtual {v1}, Lcom/google/common/collect/UnmodifiableListIterator;->nextIndex()I

    move-result v1

    #calls: Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I

    move-result v0

    return v0
.end method
