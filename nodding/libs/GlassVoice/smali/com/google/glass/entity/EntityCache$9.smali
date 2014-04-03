.class final Lcom/google/glass/entity/EntityCache$9;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    const/4 v0, 0x1

    .line 212
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/google/glass/entity/EntityHelper;->isSendTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z

    move-result v1

    if-nez v1, :cond_0

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
    .line 209
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$9;->apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method
