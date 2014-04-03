.class Lcom/google/glass/entity/EntityCache$12;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;->extractRecentShareTargets(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$12;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I
    .locals 7
    .parameter "entity1"
    .parameter "entity2"

    .prologue
    .line 671
    iget-wide v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->lastShareMillis:J

    .line 672
    .local v0, entityTime1:J
    iget-wide v2, p2, Lcom/google/glass/entity/EntityCache$EntityData;->lastShareMillis:J

    .line 678
    .local v2, entityTime2:J
    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 680
    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-static {v5}, Lcom/google/glass/util/PrimitiveUtils;->safeLong(Ljava/lang/Long;)J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 683
    :cond_0
    iget-object v5, p2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 685
    iget-object v5, p2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-static {v5}, Lcom/google/glass/util/PrimitiveUtils;->safeLong(Ljava/lang/Long;)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 690
    :cond_1
    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v4

    .line 693
    .local v4, result:I
    if-nez v4, :cond_2

    .line 694
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$100()Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 696
    :cond_2
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 667
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    .end local p1
    check-cast p2, Lcom/google/glass/entity/EntityCache$EntityData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityCache$12;->compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I

    move-result v0

    return v0
.end method
