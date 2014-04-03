.class Lcom/google/common/collect/Maps$TransformedEntriesMap$2;
.super Lcom/google/common/collect/Maps$Values;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$TransformedEntriesMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values",
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
    .line 1567
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$2;,"Lcom/google/common/collect/Maps$TransformedEntriesMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$2;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

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
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1570
    .local p0, this:Lcom/google/common/collect/Maps$TransformedEntriesMap$2;,"Lcom/google/common/collect/Maps$TransformedEntriesMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$2;->this$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    return-object v0
.end method
