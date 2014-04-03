.class public Lcom/google/glass/timeline/TimelineItemId;
.super Ljava/lang/Object;
.source "TimelineItemId.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final bundleId:Ljava/lang/String;

.field private final displayTime:J

.field private final isBundleCover:Z

.field private final isPinned:Z

.field private final itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "item"

    .prologue
    .line 24
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v3

    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJLjava/lang/String;Z)V
    .locals 1
    .parameter "itemId"
    .parameter "isPinned"
    .parameter "displayTime"
    .parameter "bundleId"
    .parameter "isBundleCover"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 31
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/google/glass/timeline/TimelineItemId;->isPinned:Z

    .line 33
    iput-wide p3, p0, Lcom/google/glass/timeline/TimelineItemId;->displayTime:J

    .line 34
    iput-object p5, p0, Lcom/google/glass/timeline/TimelineItemId;->bundleId:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lcom/google/glass/timeline/TimelineItemId;->isBundleCover:Z

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 62
    instance-of v1, p1, Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    .line 64
    .local v0, id:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 66
    .end local v0           #id:Lcom/google/glass/timeline/TimelineItemId;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemId;->displayTime:J

    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBundleCover()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemId;->isBundleCover:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemId;->isPinned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPinned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemId;->isPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/timeline/TimelineItemId;->displayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemId;->bundleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBundleCover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemId;->isBundleCover:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
