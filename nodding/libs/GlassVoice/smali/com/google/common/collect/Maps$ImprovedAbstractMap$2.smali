.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;
.super Lcom/google/common/collect/Maps$Values;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;)V
    .locals 0
    .parameter

    .prologue
    .line 2458
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$Values;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2461
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    return-object v0
.end method
