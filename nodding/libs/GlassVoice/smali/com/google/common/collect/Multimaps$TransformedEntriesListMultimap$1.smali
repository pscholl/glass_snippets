.class Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1697
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap.1;"
    .local p1, value:Ljava/lang/Object;,"TV1;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->this$0:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
