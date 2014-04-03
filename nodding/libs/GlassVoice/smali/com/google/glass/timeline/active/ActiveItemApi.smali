.class public final Lcom/google/glass/timeline/active/ActiveItemApi;
.super Ljava/lang/Object;
.source "ActiveItemApi.java"


# static fields
.field private static final idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v1, "active"

    invoke-direct {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/active/ActiveItemApi;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static convertToEnum(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1
    .parameter "id"

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/timeline/active/ActiveItemApi;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/google/glass/timeline/active/ActiveItemApi;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/CustomItemIdGenerator;->getPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->valueOf(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v0

    return-object v0
.end method

.method public static createActiveItemId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/timeline/active/ActiveItemApi;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {p0}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goToActiveTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemApi;->goToActiveTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    .line 38
    return-void
.end method

.method public static goToActiveTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "animate"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/google/glass/timeline/active/ActiveItemApi;->createActiveItemId(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, itemId:Ljava/lang/String;
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    .line 32
    .local v0, timelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {p0, v0, p2}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 33
    return-void
.end method

.method public static isActiveItemId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/timeline/active/ActiveItemApi;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
