.class final Lcom/google/common/collect/HashBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InverseSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final bimap:Lcom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lcom/google/common/collect/HashBiMap$InverseSerializedForm;,"Lcom/google/common/collect/HashBiMap$InverseSerializedForm<TK;TV;>;"
    .local p1, bimap:Lcom/google/common/collect/HashBiMap;,"Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lcom/google/common/collect/HashBiMap;

    .line 644
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 647
    .local p0, this:Lcom/google/common/collect/HashBiMap$InverseSerializedForm;,"Lcom/google/common/collect/HashBiMap$InverseSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method
