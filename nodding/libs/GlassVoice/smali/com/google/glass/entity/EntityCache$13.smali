.class Lcom/google/glass/entity/EntityCache$13;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;
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
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$13;->this$0:Lcom/google/glass/entity/EntityCache;

    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$13;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 6
    .parameter "input"

    .prologue
    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v1, entityAcceptTypeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 738
    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v4

    .line 739
    .local v4, persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-nez v4, :cond_0

    .line 740
    const/4 v5, 0x0

    .line 763
    .end local v4           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :goto_0
    return v5

    .line 743
    .restart local v4       #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_0
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 744
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 754
    .end local v4           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 755
    const/4 v5, 0x1

    goto :goto_0

    .line 748
    :cond_2
    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 749
    iget-object v5, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 759
    :cond_3
    new-instance v3, Lcom/google/glass/util/MimeTypeMatcher;

    invoke-direct {v3}, Lcom/google/glass/util/MimeTypeMatcher;-><init>()V

    .line 760
    .local v3, matcher:Lcom/google/glass/util/MimeTypeMatcher;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    .local v0, acceptType:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Z

    goto :goto_2

    .line 763
    .end local v0           #acceptType:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache$13;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    #calls: Lcom/google/glass/entity/EntityCache;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    invoke-static {v3, v5}, Lcom/google/glass/entity/EntityCache;->access$200(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v5

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 730
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$13;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
