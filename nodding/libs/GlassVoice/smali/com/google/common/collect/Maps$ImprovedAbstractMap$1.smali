.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;
.super Lcom/google/common/collect/Maps$KeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
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
    .line 2442
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$KeySet;-><init>()V

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
    .line 2445
    .local p0, this:Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;,"Lcom/google/common/collect/Maps$ImprovedAbstractMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->this$0:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    return-object v0
.end method
