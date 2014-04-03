.class Lcom/google/common/collect/Maps$UnmodifiableEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$UnmodifiableEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$UnmodifiableEntries;

.field final synthetic val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1064
    .local p0, this:Lcom/google/common/collect/Maps$UnmodifiableEntries$1;,"Lcom/google/common/collect/Maps$UnmodifiableEntries.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->this$0:Lcom/google/common/collect/Maps$UnmodifiableEntries;

    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    .local p0, this:Lcom/google/common/collect/Maps$UnmodifiableEntries$1;,"Lcom/google/common/collect/Maps$UnmodifiableEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1077
    .local p0, this:Lcom/google/common/collect/Maps$UnmodifiableEntries$1;,"Lcom/google/common/collect/Maps$UnmodifiableEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    .local p0, this:Lcom/google/common/collect/Maps$UnmodifiableEntries$1;,"Lcom/google/common/collect/Maps$UnmodifiableEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1067
    .local p0, this:Lcom/google/common/collect/Maps$UnmodifiableEntries$1;,"Lcom/google/common/collect/Maps$UnmodifiableEntries.1;"
    invoke-super {p0}, Lcom/google/common/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1072
    .local p0, this:Lcom/google/common/collect/Maps$UnmodifiableEntries$1;,"Lcom/google/common/collect/Maps$UnmodifiableEntries.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
