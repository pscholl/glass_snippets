.class Lcom/google/common/collect/Maps$TransformedEntriesMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$TransformedEntriesMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1528
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;,"Lcom/google/common/collect/Maps$TransformedEntriesMap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1536
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;,"Lcom/google/common/collect/Maps$TransformedEntriesMap.1;"
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$TransformedEntriesMap$1$1;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$1;Ljava/util/Iterator;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1531
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$1;,"Lcom/google/common/collect/Maps$TransformedEntriesMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    return-object v0
.end method
