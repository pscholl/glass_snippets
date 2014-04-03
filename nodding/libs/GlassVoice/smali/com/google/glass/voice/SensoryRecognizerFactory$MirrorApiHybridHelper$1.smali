.class Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;
.super Ljava/lang/Object;
.source "SensoryRecognizerFactory.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->getImplementedCommands(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;

.field final synthetic val$mirrorCommandEntities:Lcom/google/common/collect/Multimap;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;Lcom/google/common/collect/Multimap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;->this$0:Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;

    iput-object p2, p0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;->val$mirrorCommandEntities:Lcom/google/common/collect/Multimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .locals 1
    .parameter "commandType"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;->val$mirrorCommandEntities:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;->apply(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
