.class Lcom/google/common/collect/LinkedListMultimap$5$1;
.super Lcom/google/common/collect/TransformedListIterator;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$5;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedListIterator",
        "<",
        "Lcom/google/common/collect/LinkedListMultimap$Node",
        "<TK;TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$5;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$5;Ljava/util/ListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 918
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5$1;,"Lcom/google/common/collect/LinkedListMultimap$5.1;"
    .local p2, x0:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$5$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$5;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 918
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5$1;,"Lcom/google/common/collect/LinkedListMultimap$5.1;"
    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$Node;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5$1;->transform(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5$1;,"Lcom/google/common/collect/LinkedListMultimap$5.1;"
    .local p1, node:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    #calls: Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$1100(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
