.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2345
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;,"Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->this$1:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;

    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2348
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;,"Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2352
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;,"Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
