.class Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 389
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 389
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;->get(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected get(I)Ljava/util/Map$Entry;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;,"Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
