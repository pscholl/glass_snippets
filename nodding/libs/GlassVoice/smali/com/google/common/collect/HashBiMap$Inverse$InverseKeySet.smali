.class final Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$Inverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InverseKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$KeySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;Lcom/google/common/collect/HashBiMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;-><init>(Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 551
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse.InverseKeySet;"
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v2

    #calls: Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    invoke-static {v1, p1, v2}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 552
    .local v0, entry:Lcom/google/common/collect/HashBiMap$BiEntry;,"Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 553
    const/4 v1, 0x0

    .line 556
    :goto_0
    return v1

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 556
    const/4 v1, 0x1

    goto :goto_0
.end method
