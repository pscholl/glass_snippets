.class Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$1;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1537
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;,"Lcom/google/common/collect/Maps$TransformedEntriesMap$1.1;"
    .local p2, x0:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<TK;TV1;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;->this$1:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1537
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;,"Lcom/google/common/collect/Maps$TransformedEntriesMap$1.1;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1541
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;,"Lcom/google/common/collect/Maps$TransformedEntriesMap$1.1;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV1;>;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1$1;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method
