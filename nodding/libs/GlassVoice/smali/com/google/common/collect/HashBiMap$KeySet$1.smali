.class Lcom/google/common/collect/HashBiMap$KeySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$KeySet;)V
    .locals 1
    .parameter

    .prologue
    .line 393
    .local p0, this:Lcom/google/common/collect/HashBiMap$KeySet$1;,"Lcom/google/common/collect/HashBiMap$KeySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$KeySet$1;->this$1:Lcom/google/common/collect/HashBiMap$KeySet;

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Lcom/google/common/collect/HashBiMap$KeySet$1;,"Lcom/google/common/collect/HashBiMap$KeySet.1;"
    .local p1, entry:Lcom/google/common/collect/HashBiMap$BiEntry;,"Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
