.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->transform(Ljava/lang/Object;)Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 777
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 784
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method
