.class abstract Lcom/google/common/collect/StandardTable$TableCollection;
.super Ljava/util/AbstractCollection;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    .local p0, this:Lcom/google/common/collect/StandardTable$TableCollection;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.TableCollection<TT;>;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$TableCollection;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    .local p0, this:Lcom/google/common/collect/StandardTable$TableCollection;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.TableCollection<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$TableCollection;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 244
    .local p0, this:Lcom/google/common/collect/StandardTable$TableCollection;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.TableCollection<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$TableCollection;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 239
    .local p0, this:Lcom/google/common/collect/StandardTable$TableCollection;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.TableCollection<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$TableCollection;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
