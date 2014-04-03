.class Lcom/google/common/collect/StandardTable$Row$1;
.super Lcom/google/common/collect/Maps$KeySet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$Row;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$1;,"Lcom/google/common/collect/StandardTable$Row.1;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$1;->this$1:Lcom/google/common/collect/StandardTable$Row;

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
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$1;,"Lcom/google/common/collect/StandardTable$Row.1;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$1;->this$1:Lcom/google/common/collect/StandardTable$Row;

    return-object v0
.end method
